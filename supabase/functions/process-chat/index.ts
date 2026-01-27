// @ts-nocheck
// 1. Set Function Name: process-chat

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
        const { text, context, targetLang, history } = await req.json()

        if (!text || !targetLang) {
            throw new Error('Missing text or targetLang')
        }

        if (!GEMINI_API_KEY) {
            throw new Error('Server Config Error: GEMINI_API_KEY is missing in Secrets')
        }

        // Call Gemini API using fetch for maximum stability in Edge Functions
        const prompt = `
      You are an AI assistant for a language learning app "Talkie".
      Current Conversation Context: ${context || "None"}
      Target Language: ${targetLang}
      
      User Message: ${text}
      
      Requirements:
      1. Respond naturally in the target language.
      2. If the user asks for help or translation, provide it gracefully.
      3. Suggest a short, catchy title for this conversation if it's the first few messages (return null if not needed).
      
      Provide the output in strict JSON format:
      {
        "response": "Your response in ${targetLang}",
        "translation": "Korean translation of your response",
        "title": "Optional Suggested Title or null"
      }
    `

        // Include history if provided
        const contents = history || [];
        contents.push({ role: 'user', parts: [{ text: prompt }] });

        const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=${GEMINI_API_KEY}`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ contents })
        })

        const data = await response.json()

        if (!data.candidates || !data.candidates[0] || !data.candidates[0].content) {
            console.error('Gemini Error:', JSON.stringify(data));
            const errorMessage = data.error ? data.error.message : 'Unknown AI Error from Gemini';
            throw new Error(`AI Request Failed: ${errorMessage}`);
        }

        const rawText = data.candidates[0].content.parts[0].text
        const jsonString = rawText.replace(/```json\n?|\n?```/g, '').trim()

        let result;
        try {
            result = JSON.parse(jsonString)
        } catch (e) {
            throw new Error('AI returned invalid JSON format')
        }

        return new Response(JSON.stringify(result), {
            headers: { ...corsHeaders, 'Content-Type': 'application/json; charset=utf-8' },
        })

    } catch (error) {
        return new Response(JSON.stringify({ error: error.message }), {
            status: 400,
            headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        })
    }
})
