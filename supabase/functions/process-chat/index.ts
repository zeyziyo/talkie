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

        const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=${GEMINI_API_KEY}`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                contents,
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
            console.error('Gemini Chat Error:', JSON.stringify(data));
            const geminiError = data.error?.message || 'Unknown AI Error';
            throw new Error(`AI Request Failed: ${geminiError}`);
        }

        const rawText = data.candidates[0].content.parts[0].text
        console.log('Gemini Chat Raw Response:', rawText);

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
            headers: { ...corsHeaders, 'Content-Type': 'application/json; charset=utf-8' },
        })

    } catch (error: any) {
        return new Response(JSON.stringify({ error: error.message || 'Unknown error' }), {
            status: 400,
            headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        })
    }
})
