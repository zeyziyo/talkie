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
        const { text: prompt, history } = await req.json()

        if (!prompt) {
            throw new Error('Missing prompt')
        }

        if (!GEMINI_API_KEY) {
            throw new Error('Server Config Error: GEMINI_API_KEY is missing in Secrets')
        }

        // Include history if provided
        const contents = history || [];
        contents.push({ role: 'user', parts: [{ text: prompt }] });

        // Using gemini-flash-latest which was confirmed available
        const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/gemini-flash-latest:generateContent?key=${GEMINI_API_KEY}`, {
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
        });

        const data = await response.json();

        if (!data.candidates || !data.candidates[0] || !data.candidates[0].content) {
            console.error('Gemini Chat Error Raw:', JSON.stringify(data));
            const geminiError = data.error?.message || 'No content returned from AI';
            throw new Error(`AI Request Failed: ${geminiError}`);
        }

        const rawText = data.candidates[0].content.parts[0].text
        console.log('Gemini Chat Success:', rawText);

        // Robust JSON extraction using regex (matches the first { and last })
        const jsonMatch = rawText.match(/\{[\s\S]*\}/);
        if (!jsonMatch) {
            // If not JSON, but we expect a text response for chat, wrap it
            return new Response(JSON.stringify({ response: rawText }), {
                headers: { ...corsHeaders, 'Content-Type': 'application/json; charset=utf-8' },
            });
        }
        const jsonString = jsonMatch[0];

        let result;
        try {
            result = JSON.parse(jsonString)
        } catch (e) {
            // Fallback for non-JSON content if needed
            return new Response(JSON.stringify({ response: rawText }), {
                headers: { ...corsHeaders, 'Content-Type': 'application/json; charset=utf-8' },
            });
        }

        return new Response(JSON.stringify(result), {
            headers: { ...corsHeaders, 'Content-Type': 'application/json; charset=utf-8' },
        })

    } catch (error: any) {
        return new Response(JSON.stringify({ error: error.message || 'Unknown error' }), {
            status: 400,
            headers: { ...corsHeaders, 'Content-Type': 'application/json; charset=utf-8' },
        })
    }
})
