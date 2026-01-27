// @ts-nocheck
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
      
      CRITICAL:
      1. Do NOT block harmless phrases, common greetings (e.g., "Hello", "안녕하세요"), or standard polite conversation.
      2. Only set isValid to false if the text contains EXPLICIT sexual content, SEVERE profanity, or CLEAR hate speech.
      3. If the text is ambiguous but harmless, provide the most likely translation and set isValid to true.
      
      Provide the output in strict JSON format:
      {
        "translatedText": "string (the most common, generic translation)",
        "isValid": boolean, 
        "reason": "string (if invalid, explain why: PROFANITY, HATE_SPEECH, SEXUAL, or OTHER)",
        "disambiguationOptions": [
           "string (context 1)", 
           "string (context 2)"
        ] (list of specific contexts if the source text is ambiguous. If not ambiguous, return empty list.)
      }

      Text: "${text}"
      ${note ? `Context/Meaning: "${note}" (Please translate based on this specific meaning)` : ''}
    `

        const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=${GEMINI_API_KEY}`, {
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
        })

        const data = await response.json()

        if (!data.candidates || !data.candidates[0] || !data.candidates[0].content) {
            console.error('Gemini Error Response:', JSON.stringify(data));
            const geminiError = data.error?.message || 'Unknown AI Error';
            throw new Error(`AI Request Failed: ${geminiError}`);
        }

        const rawText = data.candidates[0].content.parts[0].text
        console.log('Gemini Raw Response:', rawText);

        // Robust JSON extraction using regex (matches the first { and last })
        const jsonMatch = rawText.match(/\{[\s\S]*\}/);
        if (!jsonMatch) {
            console.error('Failed to find JSON in response:', rawText);
            throw new Error('AI returned non-JSON response');
        }
        const jsonString = jsonMatch[0];
        console.log('Extracted JSON String:', jsonString);

        let result;
        try {
            result = JSON.parse(jsonString)
        } catch (e) {
            console.error('JSON Parse Error:', e, 'Content:', jsonString);
            throw new Error('AI returned invalid JSON format');
        }

        return new Response(JSON.stringify(result), {
            headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        })

    } catch (error: any) {
        return new Response(JSON.stringify({ error: error.message || 'Unknown error' }), {
            status: 400,
            headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        })
    }
})
