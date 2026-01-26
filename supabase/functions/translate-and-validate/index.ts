// 1. Set Function Name: translate-and-validate

// @ts-ignore
declare const Deno: any;

const GEMINI_API_KEY = Deno.env.get('GEMINI_API_KEY')

const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

Deno.serve(async (req: Request) => {
    // Handle CORS preflight requests
    if (req.method === 'OPTIONS') {
        return new Response('ok', { headers: corsHeaders })
    }

    try {
        console.log("Function V2.2 Invoked (gemini-1.5-pro)");
        const { text, sourceLang, targetLang } = await req.json()

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
      If the text is sexually explicit or contains severe profanity, set isValid to false.
      
      Provide the output in strict JSON format:
      {
        "translatedText": "string",
        "isValid": boolean, 
        "reason": "string (if invalid, explain why)",
        "note": "string (context/disambiguation if needed, e.g. for ambiguous words like 'Saw', otherwise null)"
      }

      Text: "${text}"
    `

        const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-pro:generateContent?key=${GEMINI_API_KEY}`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                contents: [{ parts: [{ text: prompt }] }]
            })
        })

        const data = await response.json()

        if (!data.candidates || !data.candidates[0] || !data.candidates[0].content) {
            console.error('Gemini Error:', JSON.stringify(data));
            throw new Error('Failed to get response from AI: ' + JSON.stringify(data));
        }

        const rawText = data.candidates[0].content.parts[0].text
        // Clean markdown code blocks
        const jsonString = rawText.replace(/```json\n?|\n?```/g, '').trim()

        let result;
        try {
            result = JSON.parse(jsonString)
        } catch (e) {
            throw new Error('AI returned invalid JSON format')
        }

        return new Response(JSON.stringify(result), {
            headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        })

    } catch (error) {
        const errorMessage = error instanceof Error ? error.message : String(error)
        return new Response(JSON.stringify({ error: errorMessage }), {
            status: 400,
            headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        })
    }
})
