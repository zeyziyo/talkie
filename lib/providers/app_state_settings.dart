part of 'app_state.dart';

extension AppStateSettings on AppState {
  void _initSettings() {
    // Synchronous initialization from already-loaded prefs
    final savedSource = _prefs?.getString('sourceLang');
    final savedTarget = _prefs?.getString('targetLang');

    if (savedSource != null && savedSource.isNotEmpty) {
      _sourceLang = savedSource;
    } else {
      // Default source language to system locale
      final sysLangCode = ui.PlatformDispatcher.instance.locale.languageCode;
      final supported = LanguageConstants.supportedLanguages.any((l) => l['code'] == sysLangCode);
      _sourceLang = supported ? sysLangCode : 'en';
    }

    if (savedTarget != null && savedTarget.isNotEmpty) {
      _targetLang = savedTarget;
      _selectedReviewLanguage = savedTarget; // Sync review filter
    } else {
      // Default to English if source is not English, otherwise Korean
      _targetLang = _sourceLang == 'en' ? 'ko' : 'en';
      _selectedReviewLanguage = _targetLang;
    }
    
    // Chat Gender Settings
    _chatUserGender = _prefs?.getString('chatUserGender') ?? 'male';
    _chatAiGender = _prefs?.getString('chatAiGender') ?? 'female';

    // Onboarding Settings
    final hasSeenOnboarding = _prefs?.getBool('has_seen_onboarding') ?? false;
    _showWelcomeBanner = !hasSeenOnboarding;
  }

  Future<void> _saveSettings() async {
    await _prefs?.setString('sourceLang', _sourceLang);
    await _prefs?.setString('targetLang', _targetLang);
    await _prefs?.setString('chatUserGender', _chatUserGender);
    await _prefs?.setString('chatAiGender', _chatAiGender);
  }

  void setChatUserGender(String gender) {
    _chatUserGender = gender;
    _saveSettings();
    notify();
  }

  void setChatAiGender(String gender) {
    _chatAiGender = gender;
    _saveSettings();
    notify();
  }

  void setSourceLang(String lang) {
    _sourceLang = lang;
    _saveSettings(); // Save persistence
    _duplicateCheckTriggered = false; // Reset check
    // Reset selected source when language changes
    _selectedSourceId = null;
    
    // Cleanup: Consistency check (Mode 1, 2, 3)
    // 1. Clear Mode 1 text
    clearTexts();
    
    // 2. Clear Mode 2 records (incompatible source)
    _studyRecords = []; 
    
    // 3. Reset Mode 3 (incompatible source)
    selectMaterial(null);
    loadStudyMaterials(); // Refresh availability
    
    notify();
  }

  void setTargetLang(String lang) {
    _targetLang = lang;
    _saveSettings(); // Save persistence

    // Sync Review Tab Filter - ENABLED
    _selectedReviewLanguage = lang;
    
    // Cleanup: Consistency check
    // 1. Clear Mode 1 translation (output invalid)
    clearTexts();
    
    // 2. Reload Mode 2 records (new target)
     loadStudyRecords(); 
    
    // 3. Reset Mode 3 (incompatible target)
    selectMaterial(null); 
    loadStudyMaterials(); // Refresh availability
    
    notify();
  }

  void swapLanguages() {
    _isDirectionSwapped = !_isDirectionSwapped;
    
    // Clear texts as direction flipped (keep this behavior)
    clearTexts();
    
    // Note: Do not load/sync Mode 2/3 here or save physical preference
    // because this is only a temporary translation direction flip for the UI.
    // Base languages remain unchanged.
    
    notify();
  }

  String getServiceLocale(String lang) {
    // Map app language codes to STT/TTS language codes
    final map = {
      // East Asian
      'ko': 'ko-KR',
      'ja': 'ja-JP',
      'zh': 'zh-CN',
      'zh-CN': 'zh-CN',
      'zh-TW': 'zh-TW',
      
      // South Asian
      'hi': 'hi-IN',
      'bn': 'bn-IN',
      'ta': 'ta-IN',
      'te': 'te-IN',
      'mr': 'mr-IN',
      'ur': 'ur-PK',
      'gu': 'gu-IN',
      'kn': 'kn-IN',
      'ml': 'ml-IN',
      'pa': 'pa-IN',
      'as': 'as-IN', // Assamese
      'ne': 'ne-NP', // Nepali
      'si': 'si-LK', // Sinhala
      'or': 'or-IN', // Odia
      
      // European
      'en': 'en-US',
      'es': 'es-ES',
      'fr': 'fr-FR',
      'de': 'de-DE',
      'it': 'it-IT',
      'pt': 'pt-BR',
      'ru': 'ru-RU',
      'pl': 'pl-PL',
      'uk': 'uk-UA',
      'nl': 'nl-NL',
      'el': 'el-GR',
      'cs': 'cs-CZ',
      'ro': 'ro-RO',
      'sv': 'sv-SE',
      'da': 'da-DK',
      'fi': 'fi-FI',
      'no': 'no-NO',
      'nb': 'no-NO', // Bokmal
      'hu': 'hu-HU',
      'pl-PL': 'pl-PL',
      'sk': 'sk-SK', // Slovak
      'sl': 'sl-SI', // Slovenian
      'bg': 'bg-BG', // Bulgarian
      'hr': 'hr-HR', // Croatian
      'bs': 'bs-BA', // Bosnian
      'sr': 'sr-RS', // Serbian
      'sq': 'sq-AL', // Albanian
      'et': 'et-EE', // Estonian
      'lv': 'lv-LV', // Latvian
      'lt': 'lt-LT', // Lithuanian
      'is': 'is-IS', // Icelandic
      'be': 'be-BY', // Belarusian
      'ca': 'ca-ES', // Catalan
      'gl': 'gl-ES', // Galician
      'eu': 'eu-ES', // Basque
      'cy': 'cy-GB', // Welsh
      'mk': 'mk-MK', // Macedonian
      
      // Southeast Asian
      'id': 'id-ID',
      'vi': 'vi-VN',
      'th': 'th-TH',
      'fil': 'fil-PH',
      'ms': 'ms-MY',
      'km': 'km-KH', // Khmer
      'lo': 'lo-LA', // Lao
      'my': 'my-MM', // Burmese
      'tl': 'tl-PH', // Tagalog variant
      'tp': 'tl-PH', // Tagalog variant
      
      // Middle Eastern/Central Asian
      'ar': 'ar-SA',
      'tr': 'tr-TR',
      'fa': 'fa-IR',
      'he': 'he-IL',
      'kk': 'kk-KZ', // Kazakh
      'uz': 'uz-UZ', // Uzbek
      'ky': 'ky-KG', // Kyrgyz
      'az': 'az-AZ', // Azerbaijani
      'ka': 'ka-GE', // Georgian
      'hy': 'hy-AM', // Armenian
      'mn': 'mn-MN', // Mongolian
      
      // African
      'sw': 'sw-KE',
      'af': 'af-ZA',
      'zu': 'zu-ZA', // Zulu
      'am': 'am-ET', // Amharic
    };
    return map[lang] ?? lang;
  }

  void dismissWelcomeBanner() {
    _showWelcomeBanner = false;
    _prefs?.setBool('has_seen_onboarding', true);
    notify();
  }
}
