// @ts-ignore
declare const Deno: any;

const GEMINI_API_KEY = Deno.env.get('GEMINI_API_KEY')

const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

// 1. Helper: Find a valid "Flash" model (cheaper/free)
async function getValidModel(apiKey: string): Promise<string> {
    try {
        const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models?key=${apiKey}`, {
            method: 'GET',
        });
        const data = await response.json();

        // UPDATED PRIORITY: Look for 2.5 Flash, then 2.0, then 1.5
        const preferredOrder = [
            'gemini-2.5-flash',
            'gemini-2.0-flash',
            'gemini-1.5-flash',
            'gemini-flash'
        ];

        if (data.models) {
            // 1. Try to find a specific Flash model from our list
            for (const pref of preferredOrder) {
                const found = data.models.find((m: any) => m.name.includes(pref) && m.supportedGenerationMethods.includes('generateContent'));
                if (found) return found.name;
            }

            // 2. Fallback: Find ANY model with "flash" in the name
            const anyFlash = data.models.find((m: any) => m.name.toLowerCase().includes('flash') && m.supportedGenerationMethods.includes('generateContent'));
            if (anyFlash) return anyFlash.name;

            // 3. Ultimate Fallback: Just pick the first available one
            const fallback = data.models.find((m: any) => m.supportedGenerationMethods.includes('generateContent'));
            if (fallback) return fallback.name;
        }
    } catch (e) {
        console.error("Failed to list models:", e);
    }
    return 'models/gemini-1.5-flash'; // Hard fallback
}

Deno.serve(async (req: Request) => {
    if (req.method === 'OPTIONS') {
        return new Response('ok', { headers: corsHeaders })
    }

    try {
        const { text, sourceLang, targetLang } = await req.json()

        if (!text || !targetLang) {
            // Handle warming pings or empty requests gracefully
            throw new Error('Missing text or targetLang')
        }

        if (!GEMINI_API_KEY) {
            throw new Error('Server Config Error: GEMINI_API_KEY is missing')
        }

        // Get Dynamic Model (Prioritizing Flash for Free Tier)
        const modelName = await getValidModel(GEMINI_API_KEY);
        console.log(`Function V6.0 Invoked. Using Model: ${modelName}`);

        const prompt = `
      Translate the following text from ${sourceLang || 'auto'} to ${targetLang}.
      Also validate the content for profanity, hate speech, or sexual content.
      If the text is sexually explicit, hatespeech, or severe profanity, set isValid to false.
      
      Provide the output in strict JSON format:
      {
        "translatedText": "string",
        "isValid": boolean, 
        "reason": "string (ENUM: 'PROFANITY', 'HATE_SPEECH', 'SEXUAL', 'OTHER' - if valid, null)",
        "note": "string (context/disambiguation if needed, e.g. for ambiguous words like 'Saw', otherwise null)",
        "disambiguationOptions": ["string"] 
      }
      Text: "${text}"
    `

        const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/${modelName}:generateContent?key=${GEMINI_API_KEY}`, {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                contents: [{ parts: [{ text: prompt }] }]
            })
        })

        const data = await response.json()

        if (data.error) {
            console.error('Gemini API Error:', JSON.stringify(data.error));
            if (data.error.code === 429) {
                throw new Error(`Daily Limit Exceeded for model ${modelName}. Please try again later.`);
            }
            throw new Error(`AI API Error: ${data.error.message} (Code: ${data.error.code})`);
        }

        if (!data.candidates || !data.candidates[0] || !data.candidates[0].content) {
            if (data.promptFeedback?.blockReason) {
                return new Response(JSON.stringify({
                    translatedText: "Blocked Content",
                    isValid: false,
                    reason: "OTHER", // Generic fallback for safety block
                    note: null
                }), { headers: { ...corsHeaders, 'Content-Type': 'application/json' } });
            }
            throw new Error('Failed to get response from AI (No candidates).');
        }

        const rawText = data.candidates[0].content.parts[0].text
        const jsonString = rawText.replace(/```json\n?|\n?```/g, '').trim()

        let result;
        try {
            result = JSON.parse(jsonString)
        } catch (e) {
            // Fallback for valid non-JSON response? Unlikely with strict prompt.
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

// Force Module Mode to prevent TS errors in local editor
export { }
