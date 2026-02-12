// @ts-nocheck
// VERSION: 2.4.0-PIVOT-LANG
// 1. Set Function Name: translate-and-validate

const GEMINI_API_KEY = Deno.env.get('GEMINI_API_KEY')

const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

Deno.serve(async (req) => {
    // Handle CORS preflight requests
    if (req.method === 'OPTIONS') {
        return new Response('ok', { headers: corsHeaders })
    }

    try {
        const { text, sourceLang, targetLang, note } = await req.json()

        if (!text || !targetLang) {
            throw new Error('Missing text or targetLang')
        }

        if (!GEMINI_API_KEY) {
            throw new Error('Server Config Error: GEMINI_API_KEY is missing in Secrets')
        }

        // Call Gemini API
        // Determine if we need English pivot translation
        const needsEnglishPivot = sourceLang !== 'en' && targetLang !== 'en';

        const prompt = `
      Translate the following text from ${sourceLang || 'auto'} to ${targetLang}.
      ${needsEnglishPivot ? 'ALSO translate to English for cross-language linking.' : ''}
      Also validate the content for profanity, hate speech, or sexual content.
      
      CRITICAL INSTRUCTIONS:
      1. NATIVE GUIDANCE: If you find homonyms or if the content is filtered, ALWAYS provide explanations in the user's native language (${sourceLang || 'Korean'}).
      
      2. DISAMBIGUATION (BE SELECTIVE):
         Only provide 'disambiguationOptions' if the overall meaning of the text is fundamentally ambiguous and cannot be resolved by context.
         If truly ambiguous, provide a list of options in the source language (${sourceLang || 'Korean'}).
         
      3. LINGUISTIC ANALYSIS:
         Determine first if the input is a WORD or a SENTENCE.
         
         **If the input is a WORD (single word or short phrase):**
         - 'pos' (Part of Speech): e.g., "noun", "verb", "adjective", "adverb", "preposition", "conjunction", "idiom"
         - 'formType' (Grammatical Form): The specific inflected form.
           For verbs: "base", "past", "present", "past_participle", "gerund"
           For adjectives: "positive", "comparative", "superlative"
           For nouns: "singular", "plural"
         - 'root' (Base Word): The dictionary lemma/root form (e.g., "ran" → "run", "better" → "good")
         - 'style': null (not applicable for words)
         
         **If the input is a SENTENCE (complete sentence or clause):**
         - 'pos' (Sentence Type): e.g., "declarative" (평서문), "interrogative" (의문문), "imperative" (명령문), "exclamatory" (감탄문)
         - 'formType': null (not applicable for sentences)
         - 'root': null (not applicable for sentences)
         - 'style' (Formality/Register): e.g., "formal" (존댓말/격식체), "informal" (반말/비격식체), "polite" (정중체), "casual" (구어체)
         
         Set 'inputType' to "word" or "sentence" based on the input.
      
      4. SAFETY & REASON:
         If the text contains EXPLICIT sexual content, SEVERE profanity, or CLEAR hate speech, set isValid to false.
         In the "reason" field, provide a polite, descriptive sentence in the source language (${sourceLang || 'Korean'}) explaining WHY it was blocked.
      
      5. DO NOT block harmless phrases, common greetings, or standard polite conversation.
      
      6. ENGLISH PIVOT: ${needsEnglishPivot ? 'ALWAYS include "englishText" field with the English translation for cross-language dictionary linking.' : 'If source or target is English, set "englishText" to whichever is in English.'}

      Provide the output in strict JSON format:
      {
        "translatedText": "string",
        "englishText": "string (English translation for dictionary linking - REQUIRED)",
        "isValid": boolean, 
        "reason": "string",
        "disambiguationOptions": ["string"],
        "inputType": "word | sentence",
        "pos": "string (Part of Speech for words, Sentence Type for sentences)",
        "formType": "string | null (grammatical form for words only)",
        "root": "string | null (base lemma for words only)",
        "style": "string | null (formality for sentences only)",
        "note": "string (brief explanation or usage tip in Korean)"
      }

      Text: "${text}"
      ${note ? `Context/Meaning: "${note}" (Please translate based on this specific meaning)` : ''}
    `

        const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${GEMINI_API_KEY}`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                contents: [{ parts: [{ text: prompt }] }],
                safetySettings: [
                    { category: 'HARM_CATEGORY_HARASSMENT', threshold: 'BLOCK_ONLY_HIGH' },
                    { category: 'HARM_CATEGORY_HATE_SPEECH', threshold: 'BLOCK_ONLY_HIGH' },
                    { category: 'HARM_CATEGORY_SEXUALLY_EXPLICIT', threshold: 'BLOCK_ONLY_HIGH' },
                    { category: 'HARM_CATEGORY_DANGEROUS_CONTENT', threshold: 'BLOCK_ONLY_HIGH' }
                ]
            })
        });

        const data = await response.json();

        if (!data.candidates || !data.candidates[0] || !data.candidates[0].content) {
            const geminiError = data.error?.message || 'No candidates found';
            throw new Error(`[V2.3-API-ERROR] ${geminiError}`);
        }

        const rawText = data.candidates[0].content.parts[0].text
        const jsonMatch = rawText.match(/\{[\s\S]*\}/);
        if (!jsonMatch) throw new Error('AI returned non-JSON response');

        const result = JSON.parse(jsonMatch[0]);

        return new Response(JSON.stringify(result), {
            headers: {
                ...corsHeaders,
                'Content-Type': 'application/json',
                'X-Version': '2.3.0'
            },
        })

    } catch (error: any) {
        return new Response(JSON.stringify({ error: error.message || 'Unknown error' }), {
            status: 400,
            headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        })
    }
})
