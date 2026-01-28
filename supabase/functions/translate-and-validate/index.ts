// @ts-nocheck
// VERSION: 2.3.0-NATIVE-GUIDANCE
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
        const prompt = `
      Translate the following text from ${sourceLang || 'auto'} to ${targetLang}.
      Also validate the content for profanity, hate speech, or sexual content.
      
      CRITICAL INSTRUCTIONS:
      1. NATIVE GUIDANCE: If you find homonyms or if the content is filtered, ALWAYS provide explanations in the user's native language (${sourceLang || 'Korean'}).
      
      2. DISAMBIGUATION (BE SELECTIVE):
         Only provide 'disambiguationOptions' if the overall meaning of the text is fundamentally ambiguous and cannot be resolved by context.
         If the text is a sentence, use the surrounding context to resolve any word-level homonyms before resorting to the disambiguation list.
         If truly ambiguous, provide a list of options in the source language (${sourceLang || 'Korean'}).
         Example (Source=Korean "남"): ["남 (타인)", "남 (남쪽)"]
         
      3. SAFETY & REASON:
         If the text contains EXPLICIT sexual content, SEVERE profanity, or CLEAR hate speech, set isValid to false.
         In the "reason" field, provide a polite, descriptive sentence in the source language (${sourceLang || 'Korean'}) explaining WHY it was blocked.
         Example: "이 문장에는 비속어가 포함되어 있어 번역이 제한됩니다."
      
      4. DO NOT block harmless phrases, common greetings, or standard polite conversation.

      Provide the output in strict JSON format:
      {
        "translatedText": "string (the most common translation)",
        "isValid": boolean, 
        "reason": "string (NATIVE language explanation if invalid, or PROFANITY/HATE_SPEECH/SEXUAL if generic)",
        "disambiguationOptions": [
           "string (Context in NATIVE language)"
        ]
      }

      Text: "${text}"
      ${note ? `Context/Meaning: "${note}" (Please translate based on this specific meaning)` : ''}
    `

        const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=${GEMINI_API_KEY}`, {
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
