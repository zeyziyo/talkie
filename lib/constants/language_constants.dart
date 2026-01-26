class LanguageConstants {
  /// Returns the language map for the given [langCode].
  /// If [langCode] is not supported, returns the default (Korean) map or English.
  static Map<String, String> getLanguageMap(String langCode) {
    return _localizedMaps[langCode] ?? _localizedMaps['en']!;
  }

  static const List<Map<String, String>> supportedLanguages = [
    {'code': 'ko', 'name': '한국어'},
    {'code': 'en', 'name': 'English'},
    {'code': 'ja', 'name': '日本語'},
    {'code': 'zh-CN', 'name': '中文 (简体)'},
    {'code': 'zh-TW', 'name': '中文 (繁体)'},
    {'code': 'es', 'name': 'Español'},
    {'code': 'fr', 'name': 'Français'},
    {'code': 'de', 'name': 'Deutsch'},
    {'code': 'ru', 'name': 'Русский'},
    {'code': 'vi', 'name': 'Tiếng Việt'},
    {'code': 'id', 'name': 'Bahasa Indonesia'},
    {'code': 'th', 'name': 'ไทย'},
    {'code': 'pt', 'name': 'Português'},
    {'code': 'it', 'name': 'Italiano'},
    {'code': 'tr', 'name': 'Türkçe'},
    {'code': 'ar', 'name': 'العربية'},
    {'code': 'hi', 'name': 'हिन्दी'},
    {'code': 'bn', 'name': 'বাংলা'},
    {'code': 'ur', 'name': 'اردو'},
    {'code': 'ms', 'name': 'Bahasa Melayu'},
    {'code': 'fil', 'name': 'Filipino'},
    {'code': 'pl', 'name': 'Polski'},
    {'code': 'uk', 'name': 'Українська'},
    {'code': 'nl', 'name': 'Nederlands'},
    {'code': 'sv', 'name': 'Svenska'},
    {'code': 'da', 'name': 'Dansk'},
    {'code': 'fi', 'name': 'Suomi'},
    {'code': 'no', 'name': 'Norsk'},
    {'code': 'hu', 'name': 'Magyar'},
    {'code': 'cs', 'name': 'Čeština'},
    {'code': 'ro', 'name': 'Română'},
    {'code': 'el', 'name': 'Ελληνικά'},
    {'code': 'he', 'name': 'עברית'},
    {'code': 'fa', 'name': 'فارسی'},
    {'code': 'ta', 'name': 'தமிழ்'},
    {'code': 'te', 'name': 'తెలుగు'},
    {'code': 'mr', 'name': 'मराठी'},
    {'code': 'gu', 'name': 'ગુજરાતી'},
    {'code': 'kn', 'name': 'ಕನ್ನಡ'},
    {'code': 'ml', 'name': 'മലയാളം'},
    {'code': 'pa', 'name': 'ਪੰਜਾਬੀ'},
    {'code': 'sw', 'name': 'Kiswahili'},
    {'code': 'af', 'name': 'Afrikaans'},
  ];

  static const Map<String, Map<String, String>> _localizedMaps = {
    // English
    'en': {
      'ko': 'Korean',
      'ja': 'Japanese',
      'zh-CN': 'Chinese (Simplified)',
      'zh-TW': 'Chinese (Traditional)',
      'hi': 'Hindi',
      'bn': 'Bengali',
      'ta': 'Tamil',
      'te': 'Telugu',
      'mr': 'Marathi',
      'ur': 'Urdu',
      'gu': 'Gujarati',
      'kn': 'Kannada',
      'ml': 'Malayalam',
      'pa': 'Punjabi',
      'en': 'English',
      'es': 'Spanish',
      'fr': 'French',
      'de': 'German',
      'it': 'Italian',
      'pt': 'Portuguese',
      'ru': 'Russian',
      'pl': 'Polish',
      'uk': 'Ukrainian',
      'nl': 'Dutch',
      'el': 'Greek',
      'cs': 'Czech',
      'ro': 'Romanian',
      'sv': 'Swedish',
      'da': 'Danish',
      'fi': 'Finnish',
      'no': 'Norwegian',
      'hu': 'Hungarian',
      'id': 'Indonesian',
      'vi': 'Vietnamese',
      'th': 'Thai',
      'fil': 'Filipino',
      'ms': 'Malay',
      'ar': 'Arabic',
      'tr': 'Turkish',
      'fa': 'Persian',
      'he': 'Hebrew',
      'sw': 'Swahili',
      'af': 'Afrikaans',
    },

    // Korean
    'ko': {
      'ko': '한국어',
      'ja': '일본어',
      'zh-CN': '중국어 (간체)',
      'zh-TW': '중국어 (번체)',
      'hi': '힌디어',
      'bn': '벵골어',
      'ta': '타밀어',
      'te': '텔루구어',
      'mr': '마라티어',
      'ur': '우르두어',
      'gu': '구자라트어',
      'kn': '칸나다어',
      'ml': '말라얄람어',
      'pa': '편자브어',
      'en': '영어',
      'es': '스페인어',
      'fr': '프랑스어',
      'de': '독일어',
      'it': '이탈리아어',
      'pt': '포르투갈어',
      'ru': '러시아어',
      'pl': '폴란드어',
      'uk': '우크라이나어',
      'nl': '네덜란드어',
      'el': '그리스어',
      'cs': '체코어',
      'ro': '루마니아어',
      'sv': '스웨덴어',
      'da': '덴마크어',
      'fi': '핀란드어',
      'no': '노르웨이어',
      'hu': '헝가리어',
      'id': '인도네시아어',
      'vi': '베트남어',
      'th': '태국어',
      'fil': '필리핀어',
      'ms': '말레이어',
      'ar': '아랍어',
      'tr': '튀르키예어',
      'fa': '페르시아어',
      'he': '히브리어',
      'sw': '스와힐리어',
      'af': '아프리칸스어',
    },

    // Japanese
    'ja': {
      'ko': '韓国語',
      'ja': '日本語',
      'zh-CN': '中国語 (簡体字)',
      'zh-TW': '中国語 (繁体字)',
      'hi': 'ヒンディー語',
      'bn': 'ベンガル語',
      'ta': 'タミル語',
      'te': 'テルグ語',
      'mr': 'マラーティー語',
      'ur': 'ウルドゥー語',
      'gu': 'グジャラート語',
      'kn': 'カンナダ語',
      'ml': 'マラヤーラム語',
      'pa': 'パンジャブ語',
      'en': '英語',
      'es': 'スペイン語',
      'fr': 'フランス語',
      'de': 'ドイツ語',
      'it': 'イタリア語',
      'pt': 'ポルトガル語',
      'ru': 'ロシア語',
      'pl': 'ポーランド語',
      'uk': 'ウクライナ語',
      'nl': 'オランダ語',
      'el': 'ギリシャ語',
      'cs': 'チェコ語',
      'ro': 'ルーマニア語',
      'sv': 'スウェーデン語',
      'da': 'デンマーク語',
      'fi': 'フィンランド語',
      'no': 'ノルウェー語',
      'hu': 'ハンガリー語',
      'id': 'インドネシア語',
      'vi': 'ベトナム語',
      'th': 'タイ語',
      'fil': 'フィリピン語',
      'ms': 'マレー語',
      'ar': 'アラビア語',
      'tr': 'トルコ語',
      'fa': 'ペルシア語',
      'he': 'ヘブライ語',
      'sw': 'スワヒリ語',
      'af': 'アフリカーンス語',
    },
    
    // Chinese (Simplified)
    'zh-CN': {
      'ko': '韩语',
      'ja': '日语',
      'zh-CN': '中文 (简体)',
      'zh-TW': '中文 (繁体)',
      'hi': '印地语',
      'bn': '孟加拉语',
      'ta': '泰米尔语',
      'te': '泰卢固语',
      'mr': '马拉地语',
      'ur': '乌尔都语',
      'gu': '古吉拉特语',
      'kn': '卡纳达语',
      'ml': '马拉雅拉姆语',
      'pa': '旁遮普语',
      'en': '英语',
      'es': '西班牙语',
      'fr': '法语',
      'de': '德语',
      'it': '意大利语',
      'pt': '葡萄牙语',
      'ru': '俄语',
      'pl': '波兰语',
      'uk': '乌克兰语',
      'nl': '荷兰语',
      'el': '希腊语',
      'cs': '捷克语',
      'ro': '罗马尼亚语',
      'sv': '瑞典语',
      'da': '丹麦语',
      'fi': '芬兰语',
      'no': '挪威语',
      'hu': '匈牙利语',
      'id': '印尼语',
      'vi': '越南语',
      'th': '泰语',
      'fil': '菲律宾语',
      'ms': '马来语',
      'ar': '阿拉伯语',
      'tr': '土耳其语',
      'fa': '波斯语',
      'he': '希伯来语',
      'sw': '斯瓦希里语',
      'af': '南非荷兰语',
    },

    // Chinese (Traditional)
    'zh-TW': {
      'ko': '韓語', 'ja': '日語', 'zh-CN': '中文 (簡體)', 'zh-TW': '中文 (繁體)',
      'hi': '印地語', 'bn': '孟加拉語', 'ta': '泰米爾語', 'te': '泰盧固語', 'mr': '馬拉地語', 'ur': '烏爾都語', 'gu': '古吉拉特語', 'kn': '卡納達語', 'ml': '馬拉雅拉姆語', 'pa': '旁遮普語',
      'en': '英語', 'es': '西班牙語', 'fr': '法語', 'de': '德語', 'it': '意大利語', 'pt': '葡萄牙語',
      'ru': '俄語', 'pl': '波蘭語', 'uk': '烏克蘭語', 'nl': '荷蘭語', 'el': '希臘語', 'cs': '捷克語', 'ro': '羅馬尼亞語', 'sv': '瑞典語', 'da': '丹麥語', 'fi': '芬蘭語', 'no': '挪威語', 'hu': '匈牙利語',
      'id': '印尼語', 'vi': '越南語', 'th': '泰語', 'fil': '菲律賓語', 'ms': '馬來語',
      'ar': '阿拉伯語', 'tr': '土耳其語', 'fa': '波斯語', 'he': '希伯來語', 'sw': '斯瓦希里語', 'af': '南非荷蘭語',
    },

    // Spanish
    'es': {
      'ko': 'Coreano', 'ja': 'Japonés', 'zh-CN': 'Chino (Simplificado)', 'zh-TW': 'Chino (Tradicional)',
      'hi': 'Hindi', 'bn': 'Bengalí', 'ta': 'Tamil', 'te': 'Telugu', 'mr': 'Maratí', 'ur': 'Urdu', 'gu': 'Guyaratí', 'kn': 'Canarés', 'ml': 'Malayalam', 'pa': 'Panyabí',
      'en': 'Inglés', 'es': 'Español', 'fr': 'Francés', 'de': 'Alemán', 'it': 'Italiano', 'pt': 'Portugués',
      'ru': 'Ruso', 'pl': 'Polaco', 'uk': 'Ucraniano', 'nl': 'Neerlandés', 'el': 'Griego', 'cs': 'Checo', 'ro': 'Rumano', 'sv': 'Sueco', 'da': 'Danés', 'fi': 'Finés', 'no': 'Noruego', 'hu': 'Húngaro',
      'id': 'Indonesio', 'vi': 'Vietnamita', 'th': 'Tailandés', 'fil': 'Filipino', 'ms': 'Malayo',
      'ar': 'Árabe', 'tr': 'Turco', 'fa': 'Persa', 'he': 'Hebreo', 'sw': 'Suajili', 'af': 'Afrikáans',
    },

    // French
    'fr': {
      'ko': 'Coréen', 'ja': 'Japonais', 'zh-CN': 'Chinois (Simplifié)', 'zh-TW': 'Chinois (Traditionnel)',
      'hi': 'Hindi', 'bn': 'Bengali', 'ta': 'Tamoul', 'te': 'Télougou', 'mr': 'Marathi', 'ur': 'Ourdou', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Pendjabi',
      'en': 'Anglais', 'es': 'Espagnol', 'fr': 'Français', 'de': 'Allemand', 'it': 'Italien', 'pt': 'Portugais',
      'ru': 'Russe', 'pl': 'Polonais', 'uk': 'Ukrainien', 'nl': 'Néerlandais', 'el': 'Grec', 'cs': 'Tchèque', 'ro': 'Roumain', 'sv': 'Suédois', 'da': 'Danois', 'fi': 'Finnois', 'no': 'Norvégien', 'hu': 'Hongrois',
      'id': 'Indonésien', 'vi': 'Vietnamien', 'th': 'Thaï', 'fil': 'Filipino', 'ms': 'Malais',
      'ar': 'Arabe', 'tr': 'Turc', 'fa': 'Persan', 'he': 'Hébreu', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // German
    'de': {
      'ko': 'Koreanisch', 'ja': 'Japanisch', 'zh-CN': 'Chinesisch (Vereinfacht)', 'zh-TW': 'Chinesisch (Traditionell)',
      'hi': 'Hindi', 'bn': 'Bengali', 'ta': 'Tamil', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Panjabi',
      'en': 'Englisch', 'es': 'Spanisch', 'fr': 'Französisch', 'de': 'Deutsch', 'it': 'Italienisch', 'pt': 'Portugiesisch',
      'ru': 'Russisch', 'pl': 'Polnisch', 'uk': 'Ukrainisch', 'nl': 'Niederländisch', 'el': 'Griechisch', 'cs': 'Tschechisch', 'ro': 'Rumänisch', 'sv': 'Schwedisch', 'da': 'Dänisch', 'fi': 'Finnisch', 'no': 'Norwegisch', 'hu': 'Ungarisch',
      'id': 'Indonesisch', 'vi': 'Vietnamesisch', 'th': 'Thailändisch', 'fil': 'Filipino', 'ms': 'Malaiisch',
      'ar': 'Arabisch', 'tr': 'Türkisch', 'fa': 'Persisch', 'he': 'Hebräisch', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // Italian
    'it': {
      'ko': 'Coreano', 'ja': 'Giapponese', 'zh-CN': 'Cinese (Semplificato)', 'zh-TW': 'Cinese (Tradizionale)',
      'hi': 'Hindi', 'bn': 'Bengalese', 'ta': 'Tamil', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Inglese', 'es': 'Spagnolo', 'fr': 'Francese', 'de': 'Tedesco', 'it': 'Italiano', 'pt': 'Portoghese',
      'ru': 'Russo', 'pl': 'Polacco', 'uk': 'Ucraino', 'nl': 'Olandese', 'el': 'Greco', 'cs': 'Ceco', 'ro': 'Rumeno', 'sv': 'Svedese', 'da': 'Danese', 'fi': 'Finlandese', 'no': 'Norvegese', 'hu': 'Ungherese',
      'id': 'Indonesiano', 'vi': 'Vietnamita', 'th': 'Tailandese', 'fil': 'Filippino', 'ms': 'Malese',
      'ar': 'Arabo', 'tr': 'Turco', 'fa': 'Persiano', 'he': 'Ebraico', 'sw': 'Swahili', 'af': 'Afrikaans',
    },
    
    // Portuguese
    'pt': {
      'ko': 'Coreano', 'ja': 'Japonês', 'zh-CN': 'Chinês (Simplificado)', 'zh-TW': 'Chinês (Tradicional)',
      'hi': 'Hindi', 'bn': 'Bengali', 'ta': 'Tâmil', 'te': 'Telugo', 'mr': 'Marata', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Canarês', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Inglês', 'es': 'Espanhol', 'fr': 'Francês', 'de': 'Alemão', 'it': 'Italiano', 'pt': 'Português',
      'ru': 'Russo', 'pl': 'Polonês', 'uk': 'Ucraniano', 'nl': 'Holandês', 'el': 'Grego', 'cs': 'Tcheco', 'ro': 'Romeno', 'sv': 'Sueco', 'da': 'Dinamarquês', 'fi': 'Finlandês', 'no': 'Norueguês', 'hu': 'Húngaro',
      'id': 'Indonésio', 'vi': 'Vietnamita', 'th': 'Tailandês', 'fil': 'Filipino', 'ms': 'Malaio',
      'ar': 'Árabe', 'tr': 'Turco', 'fa': 'Persa', 'he': 'Hebraico', 'sw': 'Suaíli', 'af': 'Africâner',
    },

    // Russian
    'ru': {
      'ko': 'Корейский', 'ja': 'Японский', 'zh-CN': 'Китайский (Упр.)', 'zh-TW': 'Китайский (Трад.)',
      'hi': 'Хинди', 'bn': 'Бенгальский', 'ta': 'Тамильский', 'te': 'Телугу', 'mr': 'Маратхи', 'ur': 'Урду', 'gu': 'Гуджарати', 'kn': 'Каннада', 'ml': 'Малаялам', 'pa': 'Панджаби',
      'en': 'Английский', 'es': 'Испанский', 'fr': 'Французский', 'de': 'Немецкий', 'it': 'Итальянский', 'pt': 'Португальский',
      'ru': 'Русский', 'pl': 'Польский', 'uk': 'Украинский', 'nl': 'Нидерландский', 'el': 'Греческий', 'cs': 'Чешский', 'ro': 'Румынский', 'sv': 'Шведский', 'da': 'Датский', 'fi': 'Финский', 'no': 'Норвежский', 'hu': 'Венгерский',
      'id': 'Индонезийский', 'vi': 'Вьетнамский', 'th': 'Тайский', 'fil': 'Филиппинский', 'ms': 'Малайский',
      'ar': 'Арабский', 'tr': 'Турецкий', 'fa': 'Персидский', 'he': 'Иврит', 'sw': 'Суахили', 'af': 'Африкаанс',
    },

    // Hindi
    'hi': {
      'ko': 'कोरियाई', 'ja': 'जापानी', 'zh-CN': 'चीनी (सरलीकृत)', 'zh-TW': 'चीनी (पारंपरिक)',
      'hi': 'हिन्दी', 'bn': 'बंगाली', 'ta': 'तमिल', 'te': 'तेलुगु', 'mr': 'मराठी', 'ur': 'उर्दू', 'gu': 'गुजराती', 'kn': 'कन्नड़', 'ml': 'मलयालम', 'pa': 'पंजाबी',
      'en': 'अंग्रेज़ी', 'es': 'स्पेनिश', 'fr': 'फ्रेंच', 'de': 'जर्मन', 'it': 'इतालवी', 'pt': 'पुर्तगाली',
      'ru': 'रूसी', 'pl': 'पोलिश', 'uk': 'यूक्रेनी', 'nl': 'डच', 'el': 'ग्रीक', 'cs': 'चेक', 'ro': 'रोमानियाई', 'sv': 'स्वीडिश', 'da': 'डेनिश', 'fi': 'फिनिश', 'no': 'नर्वेजियाई', 'hu': 'हंगेरियन',
      'id': 'इंडोनेशियाई', 'vi': 'वियतनामी', 'th': 'थाई', 'fil': 'फिलिपिनो', 'ms': 'बहासा मेलायू',
      'ar': 'अरबी', 'tr': 'तुर्की', 'fa': 'फारसी', 'he': 'हिब्रू', 'sw': 'स्वाहिली', 'af': 'अफ्रीकी',
    },

    // Bengali
    'bn': {
      'ko': 'কোরিয়ান', 'ja': 'জাপানি', 'zh-CN': 'চীনা (সরলীকৃত)', 'zh-TW': 'চীনা (ঐতিহ্যবাহী)',
      'hi': 'হিন্দি', 'bn': 'বাংলা', 'ta': 'তামিল', 'te': 'তেলেগু', 'mr': 'মারাঠি', 'ur': 'উর্দু', 'gu': 'গুজরাটি', 'kn': 'কন্নড়', 'ml': 'মালয়ালম', 'pa': 'পাঞ্জাবি',
      'en': 'ইংরেজি', 'es': 'স্প্যানিশ', 'fr': 'ফরাসি', 'de': 'জার্মান', 'it': 'ইতালীয়', 'pt': 'পর্তুগিজ',
      'ru': 'রুশ', 'pl': 'পোলিশ', 'uk': 'ইউক্রেনীয়', 'nl': 'ডাচ', 'el': 'গ্রিক', 'cs': 'চেক', 'ro': 'রোমানীয়', 'sv': 'সুইডিশ', 'da': 'ডেনিশ', 'fi': 'ফিনিশ', 'no': 'নরওয়েজীয়', 'hu': 'হাঙ্গেরীয়',
      'id': 'ইন্দোনেশীয়', 'vi': 'ভিয়েতনামী', 'th': 'থাই', 'fil': 'ফিলিপিনো', 'ms': 'মালয়',
      'ar': 'আরবি', 'tr': 'তুর্কি', 'fa': 'ফার্সি', 'he': 'হিব্রু', 'sw': 'সোয়াহিলি', 'af': 'আফ্রিকান',
    },

    // Tamil
    'ta': {
      'ko': 'கொரியன்', 'ja': 'ஜப்பானிய', 'zh-CN': 'சீன (எளிமையான)', 'zh-TW': 'சீன (பாரம்பரிய)',
      'hi': 'இந்தி', 'bn': 'வங்காளம்', 'ta': 'தமிழ்', 'te': 'தெலுங்கு', 'mr': 'மராத்தி', 'ur': 'உருது', 'gu': 'குஜராத்தி', 'kn': 'கன்னடம்', 'ml': 'மலையாளம்', 'pa': 'பஞ்சாபி',
      'en': 'ஆங்கிலம்', 'es': 'ஸ்பானிஷ்', 'fr': 'பிரெஞ்சு', 'de': 'ஜெர்மன்', 'it': 'இத்தாலிய', 'pt': 'போர்த்துகீசியம்',
      'ru': 'ரஷ்யன்', 'pl': 'போலிஷ்', 'uk': 'உக்ரைனியன்', 'nl': 'டச்சு', 'el': 'கிரேக்கம்', 'cs': 'செக்', 'ro': 'ருமேனிய', 'sv': 'ஸ்வீடிஷ்', 'da': 'டேனிஷ்', 'fi': 'பின்னிஷ்', 'no': 'நோர்வேஜியன்', 'hu': 'ஹங்கேரியன்',
      'id': 'இந்தோனேசிய', 'vi': 'வியட்நாமிய', 'th': 'தாய்', 'fil': 'பிலிப்பினோ', 'ms': 'மலாய்',
      'ar': 'அரபு', 'tr': 'துருக்கிய', 'fa': 'பாரசீக', 'he': 'ஹீப்ரு', 'sw': 'ஸ்வாஹிலி', 'af': 'ஆப்பிரிக்கான்ஸ்',
    },

    // Telugu
    'te': {
      'ko': 'కొరియన్', 'ja': 'జపనీస్', 'zh-CN': 'చైనీస్ (సరళీకృత)', 'zh-TW': 'చైనీస్ (సాంప్రదాయ)',
      'hi': 'హిందీ', 'bn': 'బెంగాలీ', 'ta': 'తమిళ', 'te': 'తెలుగు', 'mr': 'మరాఠీ', 'ur': 'ఉర్దూ', 'gu': 'గుజరాతీ', 'kn': 'కన్నడ', 'ml': 'మలయాళం', 'pa': 'పంజాబీ',
      'en': 'ఇంగ్లీష్', 'es': 'స్పానిష్', 'fr': 'ఫ్రెంచ్', 'de': 'జర్మన్', 'it': 'ఇటాలియన్', 'pt': 'పోర్చుగీస్',
      'ru': 'రష్యన్', 'pl': 'పోలిష్', 'uk': 'ఉక్రేనియన్', 'nl': 'డచ్', 'el': 'గ్రీక్', 'cs': 'చెక్', 'ro': 'రోమేనియన్', 'sv': 'స్వీడిష్', 'da': 'డానిష్', 'fi': 'ఫిన్నిష్', 'no': 'నార్వేజియన్', 'hu': 'హంగేరియన్',
      'id': 'ఇండోనేషియన్', 'vi': 'వియత్నామీస్', 'th': 'థాయ్', 'fil': 'ఫిలిపినో', 'ms': 'మలయ్',
      'ar': 'అరబిక్', 'tr': 'టర్కిష్', 'fa': 'పర్షియన్', 'he': 'హీబ్రూ', 'sw': 'స్వాహిలి', 'af': 'ఆఫ్రికాన్స్',
    },

    // Marathi
    'mr': {
      'ko': 'कोरियन', 'ja': 'जपानी', 'zh-CN': 'चिनी (सरलीकृत)', 'zh-TW': 'चिनी (पारंपारिक)',
      'hi': 'हिंदी', 'bn': 'बंगाली', 'ta': 'तमिळ', 'te': 'तेलुगू', 'mr': 'मराठी', 'ur': 'उर्दू', 'gu': 'गुजराती', 'kn': 'कन्नड', 'ml': 'मल्याळम', 'pa': 'पंजाबी',
      'en': 'इंग्रजी', 'es': 'स्पॅनिश', 'fr': 'फ्रेंच', 'de': 'जर्मन', 'it': 'इटालियन', 'pt': 'पोर्तुगीज',
      'ru': 'रशियन', 'pl': 'पोलिश', 'uk': 'युक्रेनियन', 'nl': 'डच', 'el': 'ग्रीक', 'cs': 'झेक', 'ro': 'रोमानियन', 'sv': 'स्वीडिश', 'da': 'डॅनिश', 'fi': 'फिन्निश', 'no': 'नॉर्वेजियन', 'hu': 'हंगेरियन',
      'id': 'इंडोनेशियन', 'vi': 'व्हिएतनामी', 'th': 'थाई', 'fil': 'फिलिपिनो', 'ms': 'मलय',
      'ar': 'अरबी', 'tr': 'तुर्की', 'fa': 'फारसी', 'he': 'हिब्रू', 'sw': 'स्वाहिली', 'af': 'आफ्रिकान्स',
    },

    // Urdu (RTL issues might occur but strings are standard)
    'ur': {
      'ko': 'کوریائی', 'ja': 'جاپانی', 'zh-CN': 'چینی (آسان)', 'zh-TW': 'چینی (روایتی)',
      'hi': 'ہندی', 'bn': 'بنگالی', 'ta': 'تامل', 'te': 'تیلگو', 'mr': 'مراٹھی', 'ur': 'اردو', 'gu': 'گجراتی', 'kn': 'کنڑ', 'ml': 'ملیالم', 'pa': 'پنجابی',
      'en': 'انگریزی', 'es': 'ہسپانوی', 'fr': 'فرانسیسی', 'de': 'جرمن', 'it': 'اطالوی', 'pt': 'پرتگالی',
      'ru': 'روسی', 'pl': 'پولش', 'uk': 'یوکرینی', 'nl': 'ڈچ', 'el': 'یونانی', 'cs': 'چیک', 'ro': 'رومانیائی', 'sv': 'سویڈش', 'da': 'ڈینش', 'fi': 'فنش', 'no': 'ناروے', 'hu': 'ہنگیرین',
      'id': 'انڈونیشیائی', 'vi': 'ویتنامی', 'th': 'تھائی', 'fil': 'فلپائنی', 'ms': 'مالائی',
      'ar': 'عربی', 'tr': 'ترکی', 'fa': 'فارسی', 'he': 'عبرانی', 'sw': 'سواحلی', 'af': 'افریقی',
    },

    // Gujarati
    'gu': {
      'ko': 'કોરિયન', 'ja': 'જાપાનીઝ', 'zh-CN': 'ચાઇનીઝ (સરળ)', 'zh-TW': 'ચાઇનીઝ (પરંપરાગત)',
      'hi': 'હિન્દી', 'bn': 'બંગાળી', 'ta': 'તમિલ', 'te': 'તેલુગુ', 'mr': 'મરાઠી', 'ur': 'ઉર્દૂ', 'gu': 'ગુજરાતી', 'kn': 'કન્નડ', 'ml': 'મલયાલમ', 'pa': 'પંજાબી',
      'en': 'અંગ્રેજી', 'es': 'સ્પેનિશ', 'fr': 'ફ્રેન્ચ', 'de': 'જર્મન', 'it': 'ઇટાલિયન', 'pt': 'પોર્ટુગીઝ',
      'ru': 'રશિયન', 'pl': 'પોલિશ', 'uk': 'યુક્રેનિયન', 'nl': 'ડચ', 'el': 'ગ્રીક', 'cs': 'ચેક', 'ro': 'રોમાનિયન', 'sv': 'સ્વીડિશ', 'da': 'ડેનિશ', 'fi': 'ફિનિશ', 'no': 'નોર્વેજીયન', 'hu': 'હંગેરિયન',
      'id': 'ઇન્ડોનેશિયન', 'vi': 'વિયેતનામીસ', 'th': 'થાઈ', 'fil': 'ફિલિપિનો', 'ms': 'મલય',
      'ar': 'અરબી', 'tr': 'ટર્કિશ', 'fa': 'ફારસી', 'he': 'હીબ્રુ', 'sw': 'સ્વાહિલી', 'af': 'આફ્રિકન્સ',
    },

    // Kannada
    'kn': {
      'ko': 'ಕೊರಿಯನ್', 'ja': 'ಜಪಾನೀಸ್', 'zh-CN': 'ಚೈನೀಸ್ (ಸರಳೀಕೃತ)', 'zh-TW': 'ಚೈನೀಸ್ (ಸಾಂಪ್ರದಾಯಿಕ)',
      'hi': 'ಹಿಂದಿ', 'bn': 'ಬೆಂಗಾಲಿ', 'ta': 'ತಮಿಳು', 'te': 'ತೆಲುಗು', 'mr': 'ಮರಾಠಿ', 'ur': 'ಉರ್ದು', 'gu': 'ಗುಜರಾತಿ', 'kn': 'ಕನ್ನಡ', 'ml': 'ಮಲಯಾಳಂ', 'pa': 'ಪಂಜಾಬಿ',
      'en': 'ಇಂಗ್ಲಿಷ್', 'es': 'ಸ್ಪ್ಯಾನಿಷ್', 'fr': 'ಫ್ರೆಂಚ್', 'de': 'ಜರ್ಮನ್', 'it': 'ಇಟಾಲಿಯನ್', 'pt': 'ಪೋರ್ಚುಗೀಸ್',
      'ru': 'ರಷ್ಯನ್', 'pl': 'ಪೋಲಿಷ್', 'uk': 'ಉಕ್ರೇನಿಯನ್', 'nl': 'ಡಚ್', 'el': 'ಗ್ರೀಕ್', 'cs': 'ಚೆಕ್', 'ro': 'ರೊಮೇನಿಯನ್', 'sv': 'ಸ್ವೀಡಿಷ್', 'da': 'ಡ್ಯಾನಿಶ್', 'fi': 'ಫಿನ್ನಿಷ್', 'no': 'ನಾರ್ವೇಜಿಯನ್', 'hu': 'ಹಂಗೇರಿಯನ್',
      'id': 'ಇಂಡೋನೇಷಿಯನ್', 'vi': 'ವಿಯೆಟ್ನಾಮೀಸ್', 'th': 'ಥಾಯ್', 'fil': 'ಫಿಲಿಪಿನೋ', 'ms': 'ಮಲಯ',
      'ar': 'ಅರೇಬಿಕ್', 'tr': 'ಟರ್ಕಿಶ್', 'fa': 'ಪರ್ಷಿಯನ್', 'he': 'ಹೀಬ್ರೂ', 'sw': 'ಸ್ವಹಿಲಿ', 'af': 'ಆಫ್ರಿಕಾನ್ಸ್',
    },

    // Malayalam
    'ml': {
      'ko': 'കൊറിയൻ', 'ja': 'ജപ്പാനീസ്', 'zh-CN': 'ചൈനീസ് (ലഘൂകരിച്ചത്)', 'zh-TW': 'ചൈനീസ് (പരമ്പരാഗതം)',
      'hi': 'ഹിന്ദി', 'bn': 'ബംഗാളി', 'ta': 'തമിഴ്', 'te': 'തെലുങ്ക്', 'mr': 'മറാത്തി', 'ur': 'ഉർദു', 'gu': 'ഗുജറാത്തി', 'kn': 'കന്നഡ', 'ml': 'മലയാളം', 'pa': 'പഞ്ചാബി',
      'en': 'ഇംഗ്ലീഷ്', 'es': 'സ്പാനിഷ്', 'fr': 'ഫ്രഞ്ച്', 'de': 'ജർമ്മൻ', 'it': 'ഇറ്റാലിയൻ', 'pt': 'പോർച്ചുഗീസ്',
      'ru': 'റഷ്യൻ', 'pl': 'പോളിഷ്', 'uk': 'ഉക്രേനിയൻ', 'nl': 'ഡച്ച്', 'el': 'ഗ്രീക്ക്', 'cs': 'ചെക്ക്', 'ro': 'റൊമാനിയൻ', 'sv': 'സ്വീഡിഷ്', 'da': 'ഡാനിഷ്', 'fi': 'ഫിന്നിഷ്', 'no': 'നോർവീജിയൻ', 'hu': 'ഹംഗേറിയൻ',
      'id': 'ഇന്തോനേഷ്യൻ', 'vi': 'വിയറ്റ്നാമീസ്', 'th': 'തായ്', 'fil': 'ഫിലിപ്പിനോ', 'ms': 'മലയ്',
      'ar': 'അറബിക്', 'tr': 'ടർക്കിഷ്', 'fa': 'പേർഷ്യൻ', 'he': 'ഹീബ്രു', 'sw': 'സ്വാഹിലി', 'af': 'ആഫ്രികാൻസ്',
    },

    // Punjabi
    'pa': {
      'ko': 'ਕੋਰੀਅਨ', 'ja': 'ਜਪਾਨੀ', 'zh-CN': 'ਚੀਨੀ (ਸਰਲ)', 'zh-TW': 'ਚੀਨੀ (ਰਵਾਇਤੀ)',
      'hi': 'ਹਿੰਦੀ', 'bn': 'ਬੰਗਾਲੀ', 'ta': 'ਤਮਿਲ', 'te': 'ਤੇਲਗੂ', 'mr': 'ਮਰਾਠੀ', 'ur': 'ਉਰਦੂ', 'gu': 'ਗੁਜਰਾਤੀ', 'kn': 'ਕੰਨੜ', 'ml': 'ਮਲਿਆਲਮ', 'pa': 'ਪੰਜਾਬੀ',
      'en': 'ਅੰਗਰੇਜ਼ੀ', 'es': 'ਸਪੈਨਿਸ਼', 'fr': 'ਫ੍ਰੈਂਚ', 'de': 'ਜਰਮਨ', 'it': 'ਇਤਾਲਵੀ', 'pt': 'ਪੁਰਤਗਾਲੀ',
      'ru': 'ਰੂਸੀ', 'pl': 'ਪੋਲਿਸ਼', 'uk': 'ਯੂਕਰੇਨੀ', 'nl': 'ਡੱਚ', 'el': 'ਯੂਨਾਨੀ', 'cs': 'ਚੈੱਕ', 'ro': 'ਰੋਮਾਨੀ', 'sv': 'ਸਵੀਡਿਸ਼', 'da': 'ਡੈਨਿਸ਼', 'fi': 'ਫਿਨਿਸ਼', 'no': 'ਨਾਰਵੇਜੀਅਨ', 'hu': 'ਹੰਗਰੀ',
      'id': 'ਇੰਡੋਨੇਸ਼ੀਆਈ', 'vi': 'ਵੀਅਤਨਾਮੀ', 'th': 'ਥਾਈ', 'fil': 'ਫਿਲੀਪੀਨੋ', 'ms': 'ਮਲੇਸ਼ੀਅਨ',
      'ar': 'ਅਰਬੀ', 'tr': 'ਤੁਰਕੀ', 'fa': 'ਫਾਰਸੀ', 'he': 'ਹਿਬਰੂ', 'sw': 'ਸਵਾਹਿਲੀ', 'af': 'ਅਫਰੀਕੀ',
    },

    // Indonesian
    'id': {
      'ko': 'Korea', 'ja': 'Jepang', 'zh-CN': 'Cina (Sederhana)', 'zh-TW': 'Cina (Tradisional)',
      'hi': 'Hindi', 'bn': 'Bengali', 'ta': 'Tamil', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Inggris', 'es': 'Spanyol', 'fr': 'Prancis', 'de': 'Jerman', 'it': 'Italia', 'pt': 'Portugis',
      'ru': 'Rusia', 'pl': 'Polandia', 'uk': 'Ukraina', 'nl': 'Belanda', 'el': 'Yunani', 'cs': 'Ceko', 'ro': 'Rumania', 'sv': 'Swedia', 'da': 'Denmark', 'fi': 'Finlandia', 'no': 'Norwegia', 'hu': 'Hungaria',
      'id': 'Bahasa Indonesia', 'vi': 'Vietnam', 'th': 'Thailand', 'fil': 'Filipina', 'ms': 'Melayu',
      'ar': 'Arab', 'tr': 'Turki', 'fa': 'Persia', 'he': 'Ibrani', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // Vietnamese
    'vi': {
      'ko': 'Hàn Quốc', 'ja': 'Nhật Bản', 'zh-CN': 'Trung Quốc (Giản thể)', 'zh-TW': 'Trung Quốc (Phồn thể)',
      'hi': 'Tiếng Hindi', 'bn': 'Tiếng Bengal', 'ta': 'Tiếng Tamil', 'te': 'Tiếng Telugu', 'mr': 'Tiếng Marathi', 'ur': 'Tiếng Urdu', 'gu': 'Tiếng Gujarati', 'kn': 'Tiếng Kannada', 'ml': 'Tiếng Malayalam', 'pa': 'Tiếng Punjabi',
      'en': 'Tiếng Anh', 'es': 'Tiếng Tây Ban Nha', 'fr': 'Tiếng Pháp', 'de': 'Tiếng Đức', 'it': 'Tiếng Ý', 'pt': 'Tiếng Bồ Đào Nha',
      'ru': 'Tiếng Nga', 'pl': 'Tiếng Ba Lan', 'uk': 'Tiếng Ukraina', 'nl': 'Tiếng Hà Lan', 'el': 'Tiếng Hy Lạp', 'cs': 'Tiếng Séc', 'ro': 'Tiếng Rumani', 'sv': 'Tiếng Thụy Điển', 'da': 'Tiếng Đan Mạch', 'fi': 'Tiếng Phần Lan', 'no': 'Tiếng Na Uy', 'hu': 'Tiếng Hungary',
      'id': 'Tiếng Indonesia', 'vi': 'Tiếng Việt', 'th': 'Tiếng Thái', 'fil': 'Tiếng Philippines', 'ms': 'Tiếng Mã Lai',
      'ar': 'Tiếng Ả Rập', 'tr': 'Tiếng Thổ Nhĩ Kỳ', 'fa': 'Tiếng Ba Tư', 'he': 'Tiếng Do Thái', 'sw': 'Tiếng Swahili', 'af': 'Tiếng Afrikaans',
    },

    // Thai
    'th': {
      'ko': 'เกาหลี', 'ja': 'ญี่ปุ่น', 'zh-CN': 'จีน (ตัวย่อ)', 'zh-TW': 'จีน (ตัวเต็ม)',
      'hi': 'ฮินดี', 'bn': 'เบงกาลี', 'ta': 'ทมิฬ', 'te': 'เตลูกู', 'mr': 'มาราธี', 'ur': 'อูรดู', 'gu': 'คุชราต', 'kn': 'กันนาดา', 'ml': 'มาลายาลัม', 'pa': 'ปัญจาบี',
      'en': 'อังกฤษ', 'es': 'สเปน', 'fr': 'ฝรั่งเศส', 'de': 'เยอรมัน', 'it': 'อิตาลี', 'pt': 'โปรตุเกส',
      'ru': 'รัสเซีย', 'pl': 'โปแลนด์', 'uk': 'ยูเครน', 'nl': 'ดัตช์', 'el': 'กรีก', 'cs': 'เช็ก', 'ro': 'โรมาเนีย', 'sv': 'สวีเดน', 'da': 'เดนมาร์ก', 'fi': 'ฟินแลนด์', 'no': 'นอร์เวย์', 'hu': 'ฮังการี',
      'id': 'อินโดนีเซีย', 'vi': 'เวียดนาม', 'th': 'ไทย', 'fil': 'ฟิลิปปินส์', 'ms': 'มาเลย์',
      'ar': 'อาหรับ', 'tr': 'ตุรกี', 'fa': 'เปอร์เซีย', 'he': 'ฮิบรู', 'sw': 'สวาฮีลี', 'af': 'แอฟริกัน',
    },

    // Filipino
    'fil': {
      'ko': 'Koreano', 'ja': 'Hapones', 'zh-CN': 'Tsino (Pinasimple)', 'zh-TW': 'Tsino (Tradisyonal)',
      'hi': 'Hindi', 'bn': 'Bengali', 'ta': 'Tamil', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Ingles', 'es': 'Kastila', 'fr': 'Pranses', 'de': 'Aleman', 'it': 'Italyano', 'pt': 'Portuges',
      'ru': 'Ruso', 'pl': 'Polako', 'uk': 'Ukrainiano', 'nl': 'Olandes', 'el': 'Griyego', 'cs': 'Czech', 'ro': 'Romanian', 'sv': 'Swedish', 'da': 'Danish', 'fi': 'Finnish', 'no': 'Norwegian', 'hu': 'Hungarian',
      'id': 'Indonesian', 'vi': 'Vietnamese', 'th': 'Thai', 'fil': 'Filipino', 'ms': 'Malay',
      'ar': 'Arabo', 'tr': 'Turkish', 'fa': 'Persian', 'he': 'Hebrew', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // Malay
    'ms': {
      'ko': 'Korea', 'ja': 'Jepun', 'zh-CN': 'Cina (Ringkas)', 'zh-TW': 'Cina (Tradisional)',
      'hi': 'Hindi', 'bn': 'Benggali', 'ta': 'Tamil', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Inggeris', 'es': 'Sepanyol', 'fr': 'Perancis', 'de': 'Jerman', 'it': 'Itali', 'pt': 'Portugis',
      'ru': 'Rusia', 'pl': 'Poland', 'uk': 'Ukraine', 'nl': 'Belanda', 'el': 'Greek', 'cs': 'Czech', 'ro': 'Romania', 'sv': 'Sweden', 'da': 'Denmark', 'fi': 'Finland', 'no': 'Norway', 'hu': 'Hungary',
      'id': 'Indonesia', 'vi': 'Vietnam', 'th': 'Thai', 'fil': 'Filipina', 'ms': 'Melayu',
      'ar': 'Arab', 'tr': 'Turki', 'fa': 'Parsi', 'he': 'Ibrani', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // Arabic
    'ar': {
      'ko': 'الكورية', 'ja': 'اليابانية', 'zh-CN': 'الصينية (المبسطة)', 'zh-TW': 'الصينية (التقليدية)',
      'hi': 'الهندية', 'bn': 'البنغالية', 'ta': 'التاميلية', 'te': 'التيلجو', 'mr': 'الماراثية', 'ur': 'الأردية', 'gu': 'الغوجاراتية', 'kn': 'الكانادا', 'ml': 'المالايالامية', 'pa': 'البنجابية',
      'en': 'الإنجليزية', 'es': 'الإسبانية', 'fr': 'الفرنسية', 'de': 'الألمانية', 'it': 'الإيطالية', 'pt': 'البرتغالية',
      'ru': 'الروسية', 'pl': 'البولندية', 'uk': 'الأوكرانية', 'nl': 'الهولندية', 'el': 'اليونانية', 'cs': 'التشيكية', 'ro': 'الرومانية', 'sv': 'السويدية', 'da': 'الدنماركية', 'fi': 'الفنلندية', 'no': 'النرويجية', 'hu': 'المجرية',
      'id': 'الإندونيسية', 'vi': 'الفيتنامية', 'th': 'التايلاندية', 'fil': 'الفلبينية', 'ms': 'الماليزية',
      'ar': 'العربية', 'tr': 'التركية', 'fa': 'الفارسية', 'he': 'العبرية', 'sw': 'السواحيلية', 'af': 'الأفريقية',
    },

    // Turkish
    'tr': {
      'ko': 'Korece', 'ja': 'Japonca', 'zh-CN': 'Çince (Basitleştirilmiş)', 'zh-TW': 'Çince (Geleneksel)',
      'hi': 'Hintçe', 'bn': 'Bengalce', 'ta': 'Tamilce', 'te': 'Teluguca', 'mr': 'Marati', 'ur': 'Urduca', 'gu': 'Gucaratça', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Pencapça',
      'en': 'İngilizce', 'es': 'İspanyolca', 'fr': 'Fransızca', 'de': 'Almanca', 'it': 'İtalyanca', 'pt': 'Portekizce',
      'ru': 'Rusça', 'pl': 'Lehçe', 'uk': 'Ukraynaca', 'nl': 'Felemenkçe', 'el': 'Yunanca', 'cs': 'Çekçe', 'ro': 'Rumence', 'sv': 'İsveççe', 'da': 'Danca', 'fi': 'Fince', 'no': 'Norveççe', 'hu': 'Macarca',
      'id': 'Endonezce', 'vi': 'Vietnamca', 'th': 'Tayca', 'fil': 'Filipince', 'ms': 'Malayca',
      'ar': 'Arapça', 'tr': 'Türkçe', 'fa': 'Farsça', 'he': 'İbranice', 'sw': 'Svahili', 'af': 'Afrikanca',
    },

    // Persian
    'fa': {
      'ko': 'کره‌ای', 'ja': 'ژاپنی', 'zh-CN': 'چینی (ساده‌شده)', 'zh-TW': 'چینی (سنتی)',
      'hi': 'هندی', 'bn': 'بنگالی', 'ta': 'تامیلی', 'te': 'تلوگو', 'mr': 'مراتی', 'ur': 'اردو', 'gu': 'گجراتی', 'kn': 'کانادا', 'ml': 'مالایالام', 'pa': 'پنجابی',
      'en': 'انگلیسی', 'es': 'اسپانیایی', 'fr': 'فرانسوی', 'de': 'آلمانی', 'it': 'ایتالیایی', 'pt': 'پرتغالی',
      'ru': 'روسی', 'pl': 'لهستانی', 'uk': 'اوکراینی', 'nl': 'هلندی', 'el': 'یونانی', 'cs': 'چکی', 'ro': 'رومانیایی', 'sv': 'سوئدی', 'da': 'دانمارکی', 'fi': 'فنلاندی', 'no': 'نروژی', 'hu': 'مجارستانی',
      'id': 'اندونزیایی', 'vi': 'ویتنامی', 'th': 'تایلندی', 'fil': 'فیلیپینی', 'ms': 'مالایی',
      'ar': 'عربی', 'tr': 'ترکی', 'fa': 'فارسی', 'he': 'عبری', 'sw': 'سواحیلی', 'af': 'آفریکانس',
    },

    // Hebrew
    'he': {
      'ko': 'קוריאנית', 'ja': 'יפנית', 'zh-CN': 'סינית (פשוטה)', 'zh-TW': 'סינית (מסורתית)',
      'hi': 'הינדי', 'bn': 'בנגלית', 'ta': 'טמילית', 'te': 'טלוגו', 'mr': 'מראטהי', 'ur': 'אורדו', 'gu': 'גוג\'ראטית', 'kn': 'קנאדה', 'ml': 'מלאיאלאם', 'pa': 'פנג\'אבי',
      'en': 'אנגלית', 'es': 'ספרדית', 'fr': 'צרפתית', 'de': 'גרמנית', 'it': 'איטלקית', 'pt': 'פורטוגזית',
      'ru': 'רוסית', 'pl': 'פולנית', 'uk': 'אוקראינית', 'nl': 'הולנדית', 'el': 'יוונית', 'cs': 'צ\'כית', 'ro': 'רומנית', 'sv': 'שוודית', 'da': 'דנית', 'fi': 'פינית', 'no': 'נורווגית', 'hu': 'הונגרית',
      'id': 'אינדונזית', 'vi': 'וייטנאמית', 'th': 'תאילנדית', 'fil': 'פיליפינית', 'ms': 'מלאית',
      'ar': 'ערבית', 'tr': 'טורקית', 'fa': 'פרסית', 'he': 'עברית', 'sw': 'סווהילית', 'af': 'אפריקאנס',
    },

    // Swahili
    'sw': {
      'ko': 'Kikorea', 'ja': 'Kijapani', 'zh-CN': 'Kichina (Kilichorahisishwa)', 'zh-TW': 'Kichina (Cha Jadi)',
      'hi': 'Kihindi', 'bn': 'Kibengali', 'ta': 'Kitamil', 'te': 'Kitelugu', 'mr': 'Kimarathi', 'ur': 'Kiurdu', 'gu': 'Kigujarati', 'kn': 'Kikannada', 'ml': 'Kimalayalam', 'pa': 'Kipunjabi',
      'en': 'Kiingereza', 'es': 'Kihispania', 'fr': 'Kifaransa', 'de': 'Kijerumani', 'it': 'Kiitaliano', 'pt': 'Kireno',
      'ru': 'Kirusi', 'pl': 'Kipolishi', 'uk': 'Kiukreni', 'nl': 'Kidachi', 'el': 'Kigiriki', 'cs': 'Kicheki', 'ro': 'Kiromania', 'sv': 'Kiswidi', 'da': 'Kidenmaki', 'fi': 'Kifinlandi', 'no': 'Kinorwe', 'hu': 'Kihungaria',
      'id': 'Kiindonesia', 'vi': 'Kivietinamu', 'th': 'Kithai', 'fil': 'Kifilipino', 'ms': 'Kimalay',
      'ar': 'Kiarabu', 'tr': 'Kituruki', 'fa': 'Kiajemi', 'he': 'Kiebrania', 'sw': 'Kiswahili', 'af': 'Kiafrikana',
    },

    // Afrikaans
    'af': {
      'ko': 'Koreaans', 'ja': 'Japannees', 'zh-CN': 'Chinees (Vereenvoudig)', 'zh-TW': 'Chinees (Tradisioneel)',
      'hi': 'Hindi', 'bn': 'Bengaals', 'ta': 'Tamil', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Engels', 'es': 'Spaans', 'fr': 'Frans', 'de': 'Duits', 'it': 'Italiaans', 'pt': 'Portugees',
      'ru': 'Russies', 'pl': 'Pools', 'uk': 'Oekraïens', 'nl': 'Nederlands', 'el': 'Grieks', 'cs': 'Tsjeggies', 'ro': 'Roemeens', 'sv': 'Sweeds', 'da': 'Deens', 'fi': 'Fins', 'no': 'Noors', 'hu': 'Hongaars',
      'id': 'Indonesies', 'vi': 'Viëtnamees', 'th': 'Thai', 'fil': 'Filippyns', 'ms': 'Maleis',
      'ar': 'Arabies', 'tr': 'Turks', 'fa': 'Persies', 'he': 'Hebreeus', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // Polish
    'pl': {
      'ko': 'Koreański', 'ja': 'Japoński', 'zh-CN': 'Chiński (Uproszczony)', 'zh-TW': 'Chiński (Tradycyjny)',
      'hi': 'Hindi', 'bn': 'Bengalski', 'ta': 'Tamilski', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gudźarati', 'kn': 'Kannada', 'ml': 'Malajalam', 'pa': 'Pendżabski',
      'en': 'Angielski', 'es': 'Hiszpański', 'fr': 'Francuski', 'de': 'Niemiecki', 'it': 'Włoski', 'pt': 'Portugalski',
      'ru': 'Rosyjski', 'pl': 'Polski', 'uk': 'Ukraiński', 'nl': 'Holenderski', 'el': 'Grecki', 'cs': 'Czeski', 'ro': 'Rumuński', 'sv': 'Szwedzki', 'da': 'Duński', 'fi': 'Fiński', 'no': 'Norweski', 'hu': 'Węgierski',
      'id': 'Indonezyjski', 'vi': 'Wietnamski', 'th': 'Tajski', 'fil': 'Filipiński', 'ms': 'Malajski',
      'ar': 'Arabski', 'tr': 'Turecki', 'fa': 'Perski', 'he': 'Hebrajski', 'sw': 'Suahili', 'af': 'Afrykanerski',
    },

    // Ukrainian
    'uk': {
      'ko': 'Корейська', 'ja': 'Японська', 'zh-CN': 'Китайська (Спр.)', 'zh-TW': 'Китайська (Трад.)',
      'hi': 'Хінді', 'bn': 'Бенгальська', 'ta': 'Тамільська', 'te': 'Телугу', 'mr': 'Маратхі', 'ur': 'Урду', 'gu': 'Гуджараті', 'kn': 'Каннада', 'ml': 'Малаялам', 'pa': 'Панджабі',
      'en': 'Англійська', 'es': 'Іспанська', 'fr': 'Французька', 'de': 'Німецька', 'it': 'Італійська', 'pt': 'Португальська',
      'ru': 'Російська', 'pl': 'Польська', 'uk': 'Українська', 'nl': 'Нідерландська', 'el': 'Грецька', 'cs': 'Чеська', 'ro': 'Румунська', 'sv': 'Шведська', 'da': 'Данська', 'fi': 'Фінська', 'no': 'Норвезька', 'hu': 'Угорська',
      'id': 'Індонезійська', 'vi': 'В\'єтнамська', 'th': 'Тайська', 'fil': 'Філіппінська', 'ms': 'Малайська',
      'ar': 'Арабська', 'tr': 'Турецька', 'fa': 'Перська', 'he': 'Іврит', 'sw': 'Суахілі', 'af': 'Африкаанс',
    },

    // Dutch
    'nl': {
      'ko': 'Koreaans', 'ja': 'Japans', 'zh-CN': 'Chinees (Vereenvoudigd)', 'zh-TW': 'Chinees (Traditioneel)',
      'hi': 'Hindi', 'bn': 'Bengaals', 'ta': 'Tamil', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Engels', 'es': 'Spaans', 'fr': 'Frans', 'de': 'Duits', 'it': 'Italiaans', 'pt': 'Portugees',
      'ru': 'Russisch', 'pl': 'Pools', 'uk': 'Oekraïens', 'nl': 'Nederlands', 'el': 'Grieks', 'cs': 'Tsjechisch', 'ro': 'Roemeens', 'sv': 'Zweeds', 'da': 'Deens', 'fi': 'Fins', 'no': 'Noors', 'hu': 'Hongaars',
      'id': 'Indonesisch', 'vi': 'Vietnamees', 'th': 'Thais', 'fil': 'Filipijns', 'ms': 'Maleis',
      'ar': 'Arabisch', 'tr': 'Turks', 'fa': 'Perzisch', 'he': 'Hebreeuws', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // Greek
    'el': {
      'ko': 'Κορεάτικα', 'ja': 'Ιαπωνικά', 'zh-CN': 'Κινέζικα (Απλοπ.)', 'zh-TW': 'Κινέζικα (Παραδ.)',
      'hi': 'Χίντι', 'bn': 'Μπενγκάλι', 'ta': 'Ταμίλ', 'te': 'Τελούγκου', 'mr': 'Μαράθι', 'ur': 'Ουρντού', 'gu': 'Γκουτζαράτι', 'kn': 'Κανάντα', 'ml': 'Μαλαγιαλάμ', 'pa': 'Παντζάμπι',
      'en': 'Αγγλικά', 'es': 'Ισπανικά', 'fr': 'Γαλλικά', 'de': 'Γερμανικά', 'it': 'Ιταλικά', 'pt': 'Πορτογαλικά',
      'ru': 'Ρωσικά', 'pl': 'Πολωνικά', 'uk': 'Ουκρανικά', 'nl': 'Ολλανδικά', 'el': 'Ελληνικά', 'cs': 'Τσεχικά', 'ro': 'Ρουμανικά', 'sv': 'Σουηδικά', 'da': 'Δανικά', 'fi': 'Φινλανδικά', 'no': 'Νορβηγικά', 'hu': 'Ουγγρικά',
      'id': 'Ινδονησιακά', 'vi': 'Βιετναμέζικα', 'th': 'Ταϊλανδέζικα', 'fil': 'Φιλιππινέζικα', 'ms': 'Μαλαισιανά',
      'ar': 'Αραβικά', 'tr': 'Τουρκικά', 'fa': 'Περσικά', 'he': 'Εβραϊκά', 'sw': 'Σουαχίλι', 'af': 'Αφρικάανς',
    },

    // Czech
    'cs': {
      'ko': 'Korejsky', 'ja': 'Japonsky', 'zh-CN': 'Čínsky (Zjedn.)', 'zh-TW': 'Čínsky (Trad.)',
      'hi': 'Hindsky', 'bn': 'Bengálsky', 'ta': 'Tamilsky', 'te': 'Telugsky', 'mr': 'Maráthsky', 'ur': 'Urdu', 'gu': 'Gudžarátsky', 'kn': 'Kannadsky', 'ml': 'Malajálamsky', 'pa': 'Paňdžábsky',
      'en': 'Anglicky', 'es': 'Španělsky', 'fr': 'Francouzsky', 'de': 'Německy', 'it': 'Italsky', 'pt': 'Portugalsky',
      'ru': 'Rusky', 'pl': 'Polsky', 'uk': 'Ukrajinsky', 'nl': 'Holandsky', 'el': 'Řecky', 'cs': 'Česky', 'ro': 'Rumunsky', 'sv': 'Švédsky', 'da': 'Dánsky', 'fi': 'Finsky', 'no': 'Norsky', 'hu': 'Maďarsky',
      'id': 'Indonésky', 'vi': 'Vietnamsky', 'th': 'Thajsky', 'fil': 'Filipínsky', 'ms': 'Malajsky',
      'ar': 'Arabsky', 'tr': 'Turecky', 'fa': 'Persky', 'he': 'Hebrejsky', 'sw': 'Svahilsky', 'af': 'Afrikánsky',
    },

    // Romanian
    'ro': {
      'ko': 'Coreeană', 'ja': 'Japoneză', 'zh-CN': 'Chineză (Simpl.)', 'zh-TW': 'Chineză (Trad.)',
      'hi': 'Hindi', 'bn': 'Bengaleză', 'ta': 'Tamilă', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Engleză', 'es': 'Spaniolă', 'fr': 'Franceză', 'de': 'Germană', 'it': 'Italiană', 'pt': 'Portugheză',
      'ru': 'Rusă', 'pl': 'Poloneză', 'uk': 'Ucraineană', 'nl': 'Neerlandeză', 'el': 'Greacă', 'cs': 'Cehă', 'ro': 'Română', 'sv': 'Suedeză', 'da': 'Daneză', 'fi': 'Finlandeză', 'no': 'Norvegiană', 'hu': 'Maghiară',
      'id': 'Indoneziană', 'vi': 'Vietnameză', 'th': 'Thailandeză', 'fil': 'Filipineză', 'ms': 'Malaieză',
      'ar': 'Arabă', 'tr': 'Turcă', 'fa': 'Persană', 'he': 'Ebraică', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // Swedish
    'sv': {
      'ko': 'Koreanska', 'ja': 'Japanska', 'zh-CN': 'Kinesiska (Förenklad)', 'zh-TW': 'Kinesiska (Trad.)',
      'hi': 'Hindi', 'bn': 'Bengaliska', 'ta': 'Tamilska', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Engelska', 'es': 'Spanska', 'fr': 'Franska', 'de': 'Tyska', 'it': 'Italienska', 'pt': 'Portugisiska',
      'ru': 'Ryska', 'pl': 'Polska', 'uk': 'Ukrainska', 'nl': 'Nederländska', 'el': 'Grekiska', 'cs': 'Tjeckiska', 'ro': 'Rumänska', 'sv': 'Svenska', 'da': 'Danska', 'fi': 'Finska', 'no': 'Norska', 'hu': 'Ungerska',
      'id': 'Indonesiska', 'vi': 'Vietnamesiska', 'th': 'Thailändska', 'fil': 'Filippinska', 'ms': 'Malajiska',
      'ar': 'Arabiska', 'tr': 'Turkiska', 'fa': 'Persiska', 'he': 'Hebreiska', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // Danish
    'da': {
      'ko': 'Koreansk', 'ja': 'Japansk', 'zh-CN': 'Kinesisk (Forenklet)', 'zh-TW': 'Kinesisk (Trad.)',
      'hi': 'Hindi', 'bn': 'Bengalsk', 'ta': 'Tamilsk', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Engelsk', 'es': 'Spansk', 'fr': 'Fransk', 'de': 'Tysk', 'it': 'Italiensk', 'pt': 'Portugisisk',
      'ru': 'Russisk', 'pl': 'Polsk', 'uk': 'Ukrainsk', 'nl': 'Hollandsk', 'el': 'Græsk', 'cs': 'Tjekkisk', 'ro': 'Rumænsk', 'sv': 'Svensk', 'da': 'Dansk', 'fi': 'Finsk', 'no': 'Norsk', 'hu': 'Ungarsk',
      'id': 'Indonesisk', 'vi': 'Vietnamesisk', 'th': 'Thailandsk', 'fil': 'Filippinsk', 'ms': 'Malaysisk',
      'ar': 'Arabisk', 'tr': 'Tyrkisk', 'fa': 'Persisk', 'he': 'Hebraisk', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // Finnish
    'fi': {
      'ko': 'Korea', 'ja': 'Japani', 'zh-CN': 'Kiina (Yksink.)', 'zh-TW': 'Kiina (Perint.)',
      'hi': 'Hindi', 'bn': 'Bengali', 'ta': 'Tamili', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malajalam', 'pa': 'Punjabi',
      'en': 'Englanti', 'es': 'Espanja', 'fr': 'Ranska', 'de': 'Saksa', 'it': 'Italia', 'pt': 'Portugali',
      'ru': 'Venäjä', 'pl': 'Puola', 'uk': 'Ukraina', 'nl': 'Hollanti', 'el': 'Kreikka', 'cs': 'Tsekki', 'ro': 'Romania', 'sv': 'Ruotsi', 'da': 'Tanska', 'fi': 'Suomi', 'no': 'Norja', 'hu': 'Unkari',
      'id': 'Indonesia', 'vi': 'Vietnam', 'th': 'Thai', 'fil': 'Filippiini', 'ms': 'Malaiji',
      'ar': 'Arabia', 'tr': 'Turkki', 'fa': 'Persia', 'he': 'Heprea', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // Norwegian
    'no': {
      'ko': 'Koreansk', 'ja': 'Japansk', 'zh-CN': 'Kinesisk (Forenklet)', 'zh-TW': 'Kinesisk (Trad.)',
      'hi': 'Hindi', 'bn': 'Bengalsk', 'ta': 'Tamil', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Engelsk', 'es': 'Spansk', 'fr': 'Fransk', 'de': 'Tysk', 'it': 'Italiensk', 'pt': 'Portugisisk',
      'ru': 'Russisk', 'pl': 'Polsk', 'uk': 'Ukrainsk', 'nl': 'Nederlandsk', 'el': 'Gresk', 'cs': 'Tsjekkisk', 'ro': 'Rumensk', 'sv': 'Svensk', 'da': 'Dansk', 'fi': 'Finsk', 'no': 'Norsk', 'hu': 'Ungarsk',
      'id': 'Indonesisk', 'vi': 'Vietnamesisk', 'th': 'Thailandsk', 'fil': 'Filippinsk', 'ms': 'Malayisk',
      'ar': 'Arabisk', 'tr': 'Tyrkisk', 'fa': 'Persisk', 'he': 'Hebraisk', 'sw': 'Swahili', 'af': 'Afrikaans',
    },

    // Hungarian
    'hu': {
      'ko': 'Koreai', 'ja': 'Japán', 'zh-CN': 'Kínai (Egyszerűsített)', 'zh-TW': 'Kínai (Hagyományos)',
      'hi': 'Hindi', 'bn': 'Bengáli', 'ta': 'Tamil', 'te': 'Telugu', 'mr': 'Marathi', 'ur': 'Urdu', 'gu': 'Gujarati', 'kn': 'Kannada', 'ml': 'Malayalam', 'pa': 'Punjabi',
      'en': 'Angol', 'es': 'Spanyol', 'fr': 'Francia', 'de': 'Német', 'it': 'Olasz', 'pt': 'Portugál',
      'ru': 'Orosz', 'pl': 'Lengyel', 'uk': 'Ukrán', 'nl': 'Holland', 'el': 'Görög', 'cs': 'Cseh', 'ro': 'Román', 'sv': 'Svéd', 'da': 'Dán', 'fi': 'Finn', 'no': 'Norvég', 'hu': 'Magyar',
      'id': 'Indonéz', 'vi': 'Vietnámi', 'th': 'Thai', 'fil': 'Filippínó', 'ms': 'Maláj',
      'ar': 'Arab', 'tr': 'Török', 'fa': 'Perzsa', 'he': 'Héber', 'sw': 'Szuahéli', 'af': 'Afrikaans',
    },
  };
}
