// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get basicWords => 'ਮੂਲ ਸ਼ਬਦ ਰਿਪੋਜ਼ਟਰੀ';

  @override
  String get inputLanguage => '입력 언어';

  @override
  String get translationLanguage => '번역 언어';

  @override
  String get simplifiedGuidance =>
      '일상의 대화를 외국어로 순간 변환! Talkie가 당신의 언어 생활을 기록해 드립니다.';

  @override
  String get cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get accuracy => 'ਸ਼ੁੱਧਤਾ';

  @override
  String get ttsMissing =>
      'ਇਸ ਭਾਸ਼ਾ ਦਾ ਵੌਇਸ ਇੰਜਣ ਤੁਹਾਡੇ ਜੰਤਰ \'ਤੇ ਸਥਾਪਤ ਨਹੀਂ ਹੈ।';

  @override
  String get ttsInstallGuide =>
      'ਕਿਰਪਾ ਕਰਕੇ ਐਂਡਰਾਇਡ ਸੈਟਿੰਗਾਂ > Google TTS ਤੋਂ ਇਸ ਭਾਸ਼ਾ ਲਈ ਡਾਟਾ ਸਥਾਪਤ ਕਰੋ।';

  @override
  String get adLoading =>
      'ਇਸ਼ਤਿਹਾਰ ਲੋਡ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਬਾਅਦ ਵਿੱਚ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get addNewSubject => 'ਨਵਾਂ ਨਾਮ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get addParticipant => 'ਭਾਗੀਦਾਰ ਸ਼ਾਮਲ ਕਰੋ';

  @override
  String get addTagHint => 'ਟੈਗ ਸ਼ਾਮਲ ਕਰੋ...';

  @override
  String get alreadyHaveAccount => 'ਕੀ ਤੁਹਾਡਾ ਪਹਿਲਾਂ ਤੋਂ ਹੀ ਖਾਤਾ ਹੈ?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'ਆਟੋ ਪਲੇ';

  @override
  String get basic => 'ਮੂਲ';

  @override
  String get basicDefault => 'ਮੂਲ';

  @override
  String get basicMaterialRepository => 'ਮੂਲ ਵਾਕ/ਸ਼ਬਦ ਰਿਪੋਜ਼ਟਰੀ';

  @override
  String get basicSentenceRepository => 'ਮੁਢਲੇ ਵਾਕ ਭੰਡਾਰ';

  @override
  String get basicSentences => 'ਮੂਲ ਵਾਕ ਰਿਪੋਜ਼ਟਰੀ';

  @override
  String get basicWordRepository => 'ਮੁਢਲੇ ਸ਼ਬਦ ਭੰਡਾਰ';

  @override
  String get caseObject => 'ਕਰਮ ਕਾਰਕ';

  @override
  String get casePossessive => 'ਸੰਬੰਧਕ ਕਾਰਕ';

  @override
  String get casePossessivePronoun => 'ਸੰਬੰਧਕ ਪੜਨਾਂਵ';

  @override
  String get caseReflexive => 'ਨਿਜਵਾਚਕ ਪੜਨਾਂਵ';

  @override
  String get caseSubject => 'ਕਰਤਾ ਕਾਰਕ';

  @override
  String get chatAiChat => 'ਗੱਲਬਾਤ';

  @override
  String get chatAllConversations => 'ਸਾਰੀਆਂ ਗੱਲਬਾਤਾਂ';

  @override
  String get chatChoosePersona => 'ਪਾਤਰ ਚੁਣੋ';

  @override
  String get chatEndMessage => 'ਕੀ ਤੁਸੀਂ ਗੱਲਬਾਤ ਖਤਮ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ?';

  @override
  String get chatEndTitle => 'ਗੱਲਬਾਤ ਖਤਮ ਕਰੋ ਅਤੇ ਸੁਰੱਖਿਅਤ ਕਰੋ';

  @override
  String chatFailed(Object error) {
    return 'ਚੈਟ ਅਸਫਲ: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'ਗੱਲਬਾਤ ਤੋਂ ਅੰਸ਼ ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'ਗੱਲਬਾਤ ਇਤਿਹਾਸ';

  @override
  String get chatNew => 'ਨਵੀਂ ਗੱਲਬਾਤ';

  @override
  String get chatNewChat => 'ਨਵੀਂ ਗੱਲਬਾਤ';

  @override
  String get chatNoConversations => 'ਅਜੇ ਤੱਕ ਕੋਈ ਗੱਲਬਾਤ ਨਹੀਂ ਹੈ';

  @override
  String get chatSaveAndExit => 'ਸੁਰੱਖਿਅਤ ਕਰੋ ਅਤੇ ਬਾਹਰ ਜਾਓ';

  @override
  String get chatStartNewPrompt => 'ਅਭਿਆਸ ਕਰਨ ਲਈ ਇੱਕ ਨਵੀਂ ਗੱਲਬਾਤ ਸ਼ੁਰੂ ਕਰੋ!';

  @override
  String get chatTypeHint => 'ਇੱਕ ਸੁਨੇਹਾ ਦਾਖਲ ਕਰੋ...';

  @override
  String get chatUntitled => 'ਬਿਨਾਂ ਸਿਰਲੇਖ ਵਾਲੀ ਗੱਲਬਾਤ';

  @override
  String get checking => 'ਜਾਂਚ ਕਰ ਰਿਹਾ ਹੈ...';

  @override
  String get clearAll => 'ਸਭ ਸਾਫ਼ ਕਰੋ';

  @override
  String get confirm => 'ਠੀਕ ਹੈ';

  @override
  String get confirmDelete =>
      'ਕੀ ਤੁਸੀਂ ਸੱਚਮੁੱਚ ਇਸ ਰਿਕਾਰਡ ਨੂੰ ਹਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ?';

  @override
  String get confirmDeleteConversation =>
      'ਕੀ ਤੁਸੀਂ ਇਸ ਗੱਲਬਾਤ ਨੂੰ ਮਿਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ?\nਮਿਟਾਈ ਗਈ ਗੱਲਬਾਤ ਨੂੰ ਮੁੜ ਪ੍ਰਾਪਤ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String get confirmDeleteParticipant =>
      'ਕੀ ਤੁਸੀਂ ਇਸ ਭਾਗੀਦਾਰ ਨੂੰ ਹਟਾਉਣਾ ਚਾਹੁੰਦੇ ਹੋ?';

  @override
  String get contextTagHint =>
      'ਸਥਿਤੀ ਲਿਖੋ ਤਾਂ ਜੋ ਇਸਨੂੰ ਬਾਅਦ ਵਿੱਚ ਵੱਖਰਾ ਕਰਨਾ ਆਸਾਨ ਹੋਵੇ';

  @override
  String get contextTagLabel =>
      'ਸੰਦਰਭ/ਸਥਿਤੀ (ਵਿਕਲਪਿਕ) - ਉਦਾਹਰਨ: ਸਵੇਰ ਦੀ ਨਮਸਕਾਰ, ਰਸਮੀ';

  @override
  String get copiedToClipboard => 'ਕਲਿੱਪਬੋਰਡ \'ਤੇ ਕਾਪੀ ਹੋ ਗਿਆ!';

  @override
  String get copy => 'ਕਾਪੀ ਕਰੋ';

  @override
  String get correctAnswer => 'ਸਹੀ ਜਵਾਬ';

  @override
  String get createNew => 'ਨਵਾਂ ਬਣਾਓ';

  @override
  String get currentLocation => 'ਮੌਜੂਦਾ ਸਥਾਨ';

  @override
  String get currentMaterialLabel => 'ਮੌਜੂਦਾ ਚੁਣੀ ਹੋਈ ਸਮੱਗਰੀ:';

  @override
  String get delete => 'ਹਟਾਓ';

  @override
  String deleteFailed(String error) {
    return 'ਹਟਾਉਣਾ ਅਸਫਲ: $error';
  }

  @override
  String get deleteRecord => 'ਰਿਕਾਰਡ ਹਟਾਓ';

  @override
  String get dialogueQuestDesc =>
      'ਸਥਿਤੀ ਨਾਟਕ ਦੁਆਰਾ ਗੱਲਬਾਤ ਦਾ ਅਭਿਆਸ ਕਰੋ। ਢੁਕਵੇਂ ਜਵਾਬਾਂ ਦੀ ਚੋਣ ਕਰੋ ਅਤੇ ਬੋਲੋ।';

  @override
  String get dialogueQuestTitle => 'ਗੱਲਬਾਤ ਖੋਜ';

  @override
  String get disambiguationPrompt =>
      'ਤੁਸੀਂ ਕਿਸ ਅਰਥ ਵਿੱਚ ਅਨੁਵਾਦ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ?';

  @override
  String get disambiguationTitle => 'ਅਰਥ ਚੁਣੋ';

  @override
  String get dontHaveAccount => 'ਕੀ ਤੁਹਾਡਾ ਕੋਈ ਖਾਤਾ ਨਹੀਂ ਹੈ?';

  @override
  String get editParticipant => 'ਭਾਗੀਦਾਰ ਸੋਧੋ';

  @override
  String get email => 'ਈਮੇਲ';

  @override
  String get emailAlreadyInUse =>
      'ਇਹ ਈਮੇਲ ਪਹਿਲਾਂ ਹੀ ਰਜਿਸਟਰਡ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਲੌਗਇਨ ਕਰੋ ਜਾਂ ਪਾਸਵਰਡ ਰਿਕਵਰੀ ਵਰਤੋਂ।';

  @override
  String get enterNewSubjectName => 'ਨਵਾਂ ਨਾਮ ਦਰਜ ਕਰੋ';

  @override
  String get enterSentenceHint => 'ਇੱਕ ਵਾਕ ਦਰਜ ਕਰੋ...';

  @override
  String get enterTextHint => 'ਅਨੁਵਾਦ ਕਰਨ ਲਈ ਟੈਕਸਟ ਦਾਖਲ ਕਰੋ';

  @override
  String get enterTextToTranslate => 'ਅਨੁਵਾਦ ਲਈ ਟੈਕਸਟ ਦਰਜ ਕਰੋ';

  @override
  String get enterWordHint => 'ਇੱਕ ਸ਼ਬਦ ਦਰਜ ਕਰੋ...';

  @override
  String get error => 'ਗਲਤੀ';

  @override
  String get errorHateSpeech =>
      'ਇਸ ਵਿੱਚ ਨਫ਼ਰਤ ਭਰੇ ਸ਼ਬਦ ਹਨ, ਇਸਲਈ ਅਨੁਵਾਦ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String get errorOtherSafety =>
      'AI ਸੁਰੱਖਿਆ ਨੀਤੀ ਦੁਆਰਾ ਅਨੁਵਾਦ ਤੋਂ ਇਨਕਾਰ ਕਰ ਦਿੱਤਾ ਗਿਆ ਹੈ।';

  @override
  String get errorProfanity =>
      'ਇਸ ਵਿੱਚ ਅਸ਼ਲੀਲ ਸ਼ਬਦ ਹਨ, ਇਸਲਈ ਅਨੁਵਾਦ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String get errorSelectCategory => 'ਪਹਿਲਾਂ ਕੋਈ ਸ਼ਬਦ ਜਾਂ ਵਾਕ ਚੁਣੋ!';

  @override
  String get errorSexualContent =>
      'ਇਸ ਵਿੱਚ ਕਾਮੁਕ ਸਮੱਗਰੀ ਹੈ, ਇਸਲਈ ਅਨੁਵਾਦ ਨਹੀਂ ਕੀਤਾ ਜਾ ਸਕਦਾ।';

  @override
  String get errors => 'ਗਲਤੀਆਂ:';

  @override
  String get female => 'ਔਰਤ';

  @override
  String get file => 'ਫਾਈਲ:';

  @override
  String get filterAll => 'ਸਾਰੇ';

  @override
  String get flip => 'ਪਲਟੋ';

  @override
  String get formComparative => 'ਤੁਲਨਾਤਮਕ ਡਿਗਰੀ';

  @override
  String get formInfinitive => 'ਮੂਲ ਰੂਪ/ਵਰਤਮਾਨ ਰੂਪ';

  @override
  String get formPast => 'ਭੂਤਕਾਲ';

  @override
  String get formPastParticiple => 'ਭੂਤਕਾਲ ਕਿਰਦੰਤ';

  @override
  String get formPlural => 'ਬਹੁਵਚਨ';

  @override
  String get formPositive => 'ਸਧਾਰਨ ਡਿਗਰੀ';

  @override
  String get formPresent => 'ਵਰਤਮਾਨ ਰੂਪ';

  @override
  String get formPresentParticiple => 'ਵਰਤਮਾਨ ਕਿਰਦੰਤ (ing)';

  @override
  String get formSingular => 'ਇੱਕਵਚਨ';

  @override
  String get formSuperlative => 'ਉੱਤਮ ਡਿਗਰੀ';

  @override
  String get formThirdPersonSingular => 'ਤੀਜਾ ਵਿਅਕਤੀ ਇਕਵਚਨ';

  @override
  String get gameModeDesc => 'ਅਭਿਆਸ ਕਰਨ ਲਈ ਇੱਕ ਗੇਮ ਮੋਡ ਚੁਣੋ';

  @override
  String get gameModeTitle => 'ਗੇਮ ਮੋਡ';

  @override
  String get gameOver => 'ਗੇਮ ਓਵਰ';

  @override
  String get gender => 'ਲਿੰਗ';

  @override
  String get generalTags => 'ਆਮ ਟੈਗ';

  @override
  String get getMaterials => 'ਸਮੱਗਰੀ ਪ੍ਰਾਪਤ ਕਰੋ';

  @override
  String get good => 'ਚੰਗਾ';

  @override
  String get googleContinue => 'Google ਨਾਲ ਜਾਰੀ ਰੱਖੋ';

  @override
  String get helpDialogueImportDesc =>
      'JSON ਫਾਈਲ ਨਾਲ ਪੂਰਾ ਗੱਲਬਾਤ ਸੈੱਟ ਇੰਪੋਰਟ ਕਰੋ।';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'ਮੋਡ 3 ਵਿੱਚ ਇੰਪੋਰਟ ਕਰਨ ਲਈ, JSON ਬਣਾਓ:';

  @override
  String get helpJsonTypeDialogue => 'ਗੱਲਬਾਤ (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'ਵਾਕ (Sentence)';

  @override
  String get helpJsonTypeWord => 'ਸ਼ਬਦ (Word)';

  @override
  String get helpMode1Details =>
      '• ਆਵਾਜ਼: ਸ਼ੁਰੂ/ਬੰਦ ਕਰਨ ਲਈ ਮਾਈਕ ਦਬਾਓ\n• ਟੈਕਸਟ: ਅਨੁਵਾਦ ਲਈ ਸਿੱਧਾ ਟਾਈਪ ਕਰੋ\n• ਆਟੋ-ਸਰਚ: ਸਮਾਨ ਵਾਕਾਂ ਨੂੰ ਲੱਭਦਾ ਹੈ\n• ਅਨੁਵਾਦ: ਤੁਰੰਤ ਅਨੁਵਾਦ ਦਾ ਬਟਨ\n• ਸੁਣੋ: TTS ਲਈ ਸਪੀਕਰ ਆਈਕਨ\n• ਸੇਵ: ਇਤਿਹਾਸ ਵਿੱਚ ਸ਼ਾਮਲ ਕਰਦਾ ਹੈ\n• ਸਾਫ਼ ਕਰੋ: ਸਭ ਰੀਸੈਟ ਕਰੋ (TODO: Translate)';

  @override
  String get helpMode2Desc =>
      'ਲੁਕੇ ਹੋਏ ਅਨੁਵਾਦ ਨਾਲ ਸੇਵ ਕੀਤੇ ਵਾਕਾਂ ਦੀ ਸਮੀਖਿਆ ਕਰੋ।';

  @override
  String get helpMode2Details =>
      '• ਮਟੀਰੀਅਲ ਚੁਣੋ: ਉੱਪਰ ਸੱਜੇ ਮੀਨੂ (⋮) ਵਿੱਚੋਂ \'ਸਿੱਖਣ ਵਾਲਾ ਮਟੀਰੀਅਲ ਚੁਣੋ\' ਜਾਂ \'ਔਨਲਾਈਨ ਮਟੀਰੀਅਲ ਲਾਇਬਰੇਰੀ\' ਵਰਤੋ\n• ਕਾਰਡ ਪਲਟਾਓ: ਅਨੁਵਾਦ ਦੀ ਜਾਂਚ ਕਰਨ ਲਈ \'ਦਿਖਾਓ/ਛੁਪਾਓ\'\n• ਸੁਣੋ: ਉਚਾਰਨ ਚਲਾਉਣ ਲਈ ਸਪੀਕਰ ਆਈਕਨ\n• ਸਿੱਖਣਾ ਪੂਰਾ ਕਰੋ: ਸਿੱਖਣਾ ਪੂਰਾ ਕਰਨ ਲਈ ਚੈੱਕ ਮਾਰਕ (V)\n• ਮਿਟਾਓ: ਰਿਕਾਰਡ ਮਿਟਾਉਣ ਲਈ ਕਾਰਡ \'ਤੇ ਲੰਮਾ ਦਬਾਅ ਦਿਓ (ਲੰਮਾ ਕਲਿੱਕ)\n• ਖੋਜ ਅਤੇ ਫਿਲਟਰ: ਖੋਜ ਪੱਟੀ (ਰੀਅਲ-ਟਾਈਮ ਸਮਾਰਟ ਖੋਜ) ਅਤੇ ਟੈਗ, ਸ਼ੁਰੂਆਤੀ ਅੱਖਰ ਫਿਲਟਰ ਸਹਾਇਤਾ';

  @override
  String get helpMode3Desc =>
      'ਵਾਕ ਸੁਣੋ ਅਤੇ ਦੁਹਰਾਓ (ਛਾਇਆ-ਅਨੁਵਾਦ) ਅਤੇ ਆਪਣੇ ਉਚਾਰਨ ਦਾ ਅਭਿਆਸ ਕਰੋ।';

  @override
  String get helpMode3Details =>
      '• ਚੁਣੋ: ਪੈਕੇਜ ਚੁਣੋ\n• ਅੰਤਰਾਲ: [-] [+] ਉਡੀਕ ਦਾ ਸਮਾਂ (3ਸਕਿੰਟ-60ਸਕਿੰਟ)\n• ਸ਼ੁਰੂ/ਬੰਦ: ਸੈਸ਼ਨ ਕੰਟਰੋਲ ਕਰੋ\n• ਬੋਲੋ: ਆਡੀਓ ਸੁਣੋ ਅਤੇ ਦੁਹਰਾਓ\n• ਸਕੋਰ: ਸ਼ੁੱਧਤਾ (0-100)\n• ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼: ਜੇ ਆਵਾਜ਼ ਨਹੀਂ ਮਿਲਦੀ ਤਾਂ ਬਟਨ';

  @override
  String get helpModeChatDesc =>
      'ਇੱਕ AI ਪਰਸੋਨਾ ਨਾਲ ਗੱਲਬਾਤ ਕਰਕੇ ਅਸਲ-ਸੰਵਾਦ ਦਾ ਅਭਿਆਸ ਕਰੋ।';

  @override
  String get helpModeChatDetails =>
      '• AI ਚੈਟ: ਕਿਸੇ ਪਾਤਰ ਨਾਲ ਅਸਲ ਗੱਲਬਾਤ ਦਾ ਅਭਿਆਸ ਕਰੋ।\n• ਭਾਗੀਦਾਰ ਪ੍ਰਬੰਧਨ: ਤੁਸੀਂ ਆਪਣੀ ਭਾਸ਼ਾ ਅਤੇ AI ਦੀ ਭਾਸ਼ਾ ਨੂੰ ਸੈੱਟ ਕਰਕੇ ਭਾਸ਼ਾ ਵਿੱਚ ਅੰਤਰ ਤੋਂ ਬਚ ਸਕਦੇ ਹੋ।\n• GPS ਸਥਿਤੀ ਨਾਟਕ: ਤੁਹਾਡੇ ਮੌਜੂਦਾ ਟਿਕਾਣੇ ਦੇ ਆਧਾਰ \'ਤੇ ਕੁਦਰਤੀ ਗੱਲਬਾਤ ਦੀ ਸਥਿਤੀ ਬਣਾਓ।\n• ਰਿਕਾਰਡ ਰੱਖੋ: ਸਾਰੀਆਂ ਗੱਲਬਾਤਾਂ ID ਆਧਾਰ \'ਤੇ ਸੁਰੱਖਿਅਤ ਢੰਗ ਨਾਲ ਸਟੋਰ ਕੀਤੀਆਂ ਜਾਂਦੀਆਂ ਹਨ, ਅਤੇ ਰਿਕਾਰਡ ਨਾਮ ਬਦਲਣ \'ਤੇ ਵੀ ਸੁਰੱਖਿਅਤ ਰਹਿੰਦੇ ਹਨ। (TODO: Translate)';

  @override
  String get helpTabJson => 'JSON ਫਾਰਮੈਟ';

  @override
  String get helpTabModes => 'ਮੋਡ';

  @override
  String get helpTabTour => 'ਟੂਰ';

  @override
  String get helpTitle => 'ਮਦਦ ਅਤੇ ਗਾਈਡ';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'ਲੁਕਾਓ';

  @override
  String importAdded(int count) {
    return 'ਸ਼ਾਮਲ ਕੀਤਾ: $count';
  }

  @override
  String get importComplete => 'ਇੰਪੋਰਟ ਪੂਰਾ';

  @override
  String get importDuplicateTitleError =>
      'ਇਸੇ ਸਿਰਲੇਖ ਦੀ ਸਮੱਗਰੀ ਪਹਿਲਾਂ ਤੋਂ ਹੀ ਮੌਜੂਦ ਹੈ। ਸਿਰਲੇਖ ਬਦਲਣ ਤੋਂ ਬਾਅਦ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String importErrorMessage(String error) {
    return 'ਫਾਈਲ ਇੰਪੋਰਟ ਕਰਨ ਵਿੱਚ ਅਸਫਲ:\\n$error';
  }

  @override
  String get importFailed => 'ਇੰਪੋਰਟ ਅਸਫਲ';

  @override
  String importFile(String fileName) {
    return 'ਫਾਈਲ: $fileName';
  }

  @override
  String get importJsonFile => 'JSON ਇੰਪੋਰਟ';

  @override
  String get importJsonFilePrompt => 'ਕਿਰਪਾ ਕਰਕੇ JSON ਫਾਈਲ ਇੰਪੋਰਟ ਕਰੋ';

  @override
  String importSkipped(int count) {
    return 'ਛੱਡਿਆ: $count';
  }

  @override
  String importTotal(int count) {
    return 'ਕੁੱਲ: $count';
  }

  @override
  String get importing => 'ਇੰਪੋਰਟ ਹੋ ਰਿਹਾ ਹੈ...';

  @override
  String get inputModeTitle => 'ਇਨਪੁਟ';

  @override
  String intervalSeconds(int seconds) {
    return 'ਅੰਤਰਾਲ: $secondsਸਕਿੰਟ';
  }

  @override
  String get invalidEmail => 'ਇੱਕ ਵੈਧ ਈਮੇਲ ਦਾਖਲ ਕਰੋ।';

  @override
  String get kakaoContinue => 'ਕਾਕਾਓ ਨਾਲ ਜਾਰੀ ਰੱਖੋ';

  @override
  String get labelLangCode => 'ਭਾਸ਼ਾ ਕੋਡ (ਉਦਾਹਰਨ: en-US, ko-KR)';

  @override
  String get labelName => 'ਨਾਮ';

  @override
  String get labelNote => 'ਨੋਟ';

  @override
  String get labelPOS => 'ਭਾਸ਼ਾ ਦਾ ਭਾਗ';

  @override
  String get labelRole => 'ਭੂਮਿਕਾ';

  @override
  String get labelSentence => 'ਵਾਕ';

  @override
  String get labelSentenceCollection => 'ਵਾਕ ਸੰਗ੍ਰਹਿ';

  @override
  String get labelSentenceType => 'ਵਾਕ ਦੀ ਕਿਸਮ';

  @override
  String get labelShowMemorized => 'ਹੋ ਗਿਆ';

  @override
  String get labelType => 'ਕਿਸਮ:';

  @override
  String get labelWord => 'ਸ਼ਬਦ';

  @override
  String get labelWordbook => 'ਸ਼ਬਦ-ਕੋਸ਼';

  @override
  String get language => 'ਭਾਸ਼ਾ';

  @override
  String get languageSettings => 'ਭਾਸ਼ਾ ਸੈਟਿੰਗਾਂ';

  @override
  String get languageSettingsTitle => 'ਭਾਸ਼ਾ ਸੈਟਿੰਗ';

  @override
  String get libTitleFirstMeeting => 'ਪਹਿਲੀ ਮੁਲਾਕਾਤ';

  @override
  String get libTitleGreetings1 => 'ਨਮਸਕਾਰ 1';

  @override
  String get libTitleNouns1 => 'ਨਾਂਵ 1';

  @override
  String get libTitleVerbs1 => 'ਕਿਰਿਆਵਾਂ 1';

  @override
  String get listen => 'ਸੁਣੋ';

  @override
  String get listening => 'ਸੁਣ ਰਿਹਾ ਹੈ...';

  @override
  String get loadingParticipants => 'ਭਾਗੀਦਾਰ ਲੋਡ ਕੀਤੇ ਜਾ ਰਹੇ ਹਨ...';

  @override
  String get location => 'ਸਥਾਨ';

  @override
  String get login => 'ਲੌਗਇਨ';

  @override
  String get logout => 'ਲਾਗ ਆਉਟ';

  @override
  String get logoutConfirmMessage =>
      'ਕੀ ਤੁਸੀਂ ਇਸ ਡਿਵਾਈਸ ਤੋਂ ਲਾਗ ਆਉਟ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ?';

  @override
  String get logoutConfirmTitle => 'ਲਾਗ ਆਉਟ';

  @override
  String get male => 'ਮਰਦ';

  @override
  String get manageParticipants => 'ਭਾਗੀਦਾਰ ਪ੍ਰਬੰਧਿਤ ਕਰੋ';

  @override
  String get manual => 'ਮੈਨੁਅਲ ਇਨਪੁਟ';

  @override
  String get markAsStudied => 'ਅਧਿਐਨ ਕੀਤਾ ਵਜੋਂ ਨਿਸ਼ਾਨ ਲਗਾਓ';

  @override
  String get materialInfo => 'ਸਮੱਗਰੀ ਜਾਣਕਾਰੀ';

  @override
  String get me => 'ਮੈਂ';

  @override
  String get menuDeviceImport => 'ਡਿਵਾਈਸ ਤੋਂ ਸਮੱਗਰੀ ਇੰਪੋਰਟ ਕਰੋ';

  @override
  String get menuHelp => 'ਮਦਦ';

  @override
  String get menuLanguageSettings => 'ਭਾਸ਼ਾ ਸੈਟਿੰਗ';

  @override
  String get menuOnlineLibrary => 'ਔਨਲਾਈਨ ਲਾਇਬ੍ਰੇਰੀ';

  @override
  String get menuSelectMaterialSet => 'ਇੱਕ ਅਧਿਐਨ ਸਮੱਗਰੀ ਚੁਣੋ';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'ਵਰਤੋਂ ਬਾਰੇ ਜਾਣਕਾਰੀ';

  @override
  String get menuWebDownload => 'ਵਰਤੋਂਕਾਰ ਮੈਨੂਅਲ';

  @override
  String get metadataDialogTitle => 'ਵਿਸਤ੍ਰਿਤ ਵਰਗੀਕਰਨ';

  @override
  String get metadataFormType => 'ਵਿਆਕਰਣਕ ਰੂਪ';

  @override
  String get metadataRootWord => 'ਮੂਲ ਸ਼ਬਦ (Root Word)';

  @override
  String get micButtonTooltip => 'ਵੌਇਸ ਪਛਾਣ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'ਮੌਜੂਦਾ ਚੁਣੀ ਹੋਈ ਸਮੱਗਰੀ: $name';
  }

  @override
  String get mode2Title => 'ਸਮੀਖਿਆ';

  @override
  String get mode3Next => 'ਅੱਗੇ';

  @override
  String get mode3Start => 'ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get mode3Stop => 'ਬੰਦ ਕਰੋ';

  @override
  String get mode3TryAgain => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get mySentenceCollection => 'ਮੇਰਾ ਵਾਕ ਸੰਗ੍ਰਹਿ';

  @override
  String get myWordbook => 'ਮੇਰੀ ਸ਼ਬਦਾਵਲੀ';

  @override
  String get neutral => 'ਨਿਰਪੱਖ';

  @override
  String get newSubjectName => 'ਨਵਾਂ ਵਿਸ਼ਾ ਨਾਮ';

  @override
  String get next => 'ਅੱਗੇ';

  @override
  String get noDialogueHistory => 'ਕੋਈ ਗੱਲਬਾਤ ਇਤਿਹਾਸ ਨਹੀਂ ਹੈ।';

  @override
  String get noInternetWarningMic =>
      'ਕੋਈ ਇੰਟਰਨੈਟ ਕਨੈਕਸ਼ਨ ਨਹੀਂ ਹੈ। ਔਫਲਾਈਨ ਹੋਣ \'ਤੇ ਵੌਇਸ ਪਛਾਣ ਉਪਲਬਧ ਨਹੀਂ ਹੋ ਸਕਦੀ ਹੈ।';

  @override
  String get noInternetWarningTranslate =>
      'ਕੋਈ ਇੰਟਰਨੈਟ ਕਨੈਕਸ਼ਨ ਨਹੀਂ ਹੈ। ਔਫਲਾਈਨ ਹੋਣ \'ਤੇ ਅਨੁਵਾਦ ਫੰਕਸ਼ਨ ਉਪਲਬਧ ਨਹੀਂ ਹੈ। ਕਿਰਪਾ ਕਰਕੇ ਸਮੀਖਿਆ ਮੋਡ ਦੀ ਵਰਤੋਂ ਕਰੋ।';

  @override
  String get noMaterialsInCategory => 'ਇਸ ਸ਼੍ਰੇਣੀ ਵਿੱਚ ਕੋਈ ਸਮੱਗਰੀ ਨਹੀਂ ਹੈ।';

  @override
  String get noParticipantsFound => 'ਕੋਈ ਰਜਿਸਟਰਡ ਭਾਗੀਦਾਰ ਨਹੀਂ ਮਿਲਿਆ।';

  @override
  String get noRecords => 'ਚੁਣੀ ਗਈ ਭਾਸ਼ਾ ਲਈ ਕੋਈ ਰਿਕਾਰਡ ਨਹੀਂ';

  @override
  String get noStudyMaterial => 'ਕੋਈ ਅਧਿਐਨ ਸਮੱਗਰੀ ਨਹੀਂ ਹੈ।';

  @override
  String get noTextToPlay => 'ਚਲਾਉਣ ਲਈ ਕੋਈ ਟੈਕਸਟ ਨਹੀਂ';

  @override
  String get noTranslationToSave => 'ਸੇਵ ਕਰਨ ਲਈ ਕੋਈ ਅਨੁਵਾਦ ਨਹੀਂ';

  @override
  String get noVoiceDetected => 'ਕੋਈ ਆਵਾਜ਼ ਨਹੀਂ ਮਿਲੀ';

  @override
  String get notSelected => '- ਕੋਈ ਨਹੀਂ ਚੁਣਿਆ ਗਿਆ -';

  @override
  String get onlineLibraryCheckInternet =>
      'ਆਪਣਾ ਇੰਟਰਨੈੱਟ ਕਨੈਕਸ਼ਨ ਚੈੱਕ ਕਰੋ ਜਾਂ ਬਾਅਦ ਵਿੱਚ ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get onlineLibraryLoadFailed => 'ਸਮੱਗਰੀ ਲੋਡ ਕਰਨ ਵਿੱਚ ਅਸਫਲ ਰਿਹਾ।';

  @override
  String get onlineLibraryNoMaterials => 'ਕੋਈ ਸਮੱਗਰੀ ਨਹੀਂ ਹੈ।';

  @override
  String get participantDeleted => 'ਭਾਗੀਦਾਰ ਹਟਾ ਦਿੱਤਾ ਗਿਆ ਹੈ।';

  @override
  String get participantRename => 'ਭਾਗੀਦਾਰ ਦਾ ਨਾਮ ਬਦਲੋ';

  @override
  String get partner => 'ਸਾਥੀ';

  @override
  String get partnerMode => 'ਸਾਥੀ ਮੋਡ';

  @override
  String get password => 'ਪਾਸਵਰਡ';

  @override
  String get passwordTooShort => 'ਪਾਸਵਰਡ 6 ਅੱਖਰਾਂ ਤੋਂ ਵੱਧ ਹੋਣਾ ਚਾਹੀਦਾ ਹੈ।';

  @override
  String get perfect => 'ਬਹੁਤ ਵਧੀਆ!';

  @override
  String get personaFriend => 'ਸਥਾਨਕ ਦੋਸਤ';

  @override
  String get personaGuide => 'ਯਾਤਰਾ ਗਾਈਡ';

  @override
  String get personaTeacher => 'ਅੰਗਰੇਜ਼ੀ ਅਧਿਆਪਕ';

  @override
  String get playAgain => 'ਦੁਬਾਰਾ ਖੇਡੋ';

  @override
  String playbackFailed(String error) {
    return 'ਪਲੇਬੈਕ ਅਸਫਲ: $error';
  }

  @override
  String get playing => 'ਚਲਾ ਰਿਹਾ ਹੈ...';

  @override
  String get posAdjective => 'ਵਿਸ਼ੇਸ਼ਣ';

  @override
  String get posAdverb => 'ਕਿਰਿਆ ਵਿਸ਼ੇਸ਼ਣ';

  @override
  String get posConjunction => 'ਸੰਯੋਜਕ';

  @override
  String get posInterjection => 'ਵਿਸਮਿਕ';

  @override
  String get posNoun => 'ਨਾਂਵ';

  @override
  String get posPreposition => 'ਪੂਰਵ-ਸਥਿਤੀ/ਪੋਸਟਪੋਜ਼ੀਸ਼ਨ';

  @override
  String get posPronoun => 'ਪੜਨਾਂਵ';

  @override
  String get posVerb => 'ਕਿਰਿਆ';

  @override
  String get practiceModeTitle => 'ਅਭਿਆਸ';

  @override
  String get practiceWordsOnly => 'ਸਿਰਫ਼ ਸ਼ਬਦਾਂ ਦਾ ਅਭਿਆਸ ਕਰੋ';

  @override
  String progress(int current, int total) {
    return 'ਤਰੱਕੀ: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'ਹਾਲ ਹੀ ਵਿੱਚ ਬਣਾਏ ਗਏ $count ਆਈਟਮਾਂ ਦੇਖੋ';
  }

  @override
  String recognitionFailed(String error) {
    return 'ਆਵਾਜ਼ ਪਛਾਣ ਅਸਫਲ: $error';
  }

  @override
  String get recognized => 'ਪਛਾਣ ਪੂਰੀ';

  @override
  String get recognizedText => 'ਪਛਾਣੀ ਗਈ ਆਵਾਜ਼:';

  @override
  String get recordDeleted => 'ਰਿਕਾਰਡ ਸਫਲਤਾਪੂਰਵਕ ਹਟਾਇਆ ਗਿਆ';

  @override
  String get refresh => 'ਰੀਫ੍ਰੈਸ਼';

  @override
  String get reset => 'ਰੀਸੈੱਟ ਕਰੋ';

  @override
  String get resetPracticeHistory => 'ਅਭਿਆਸ ਇਤਿਹਾਸ ਰੀਸੈੱਟ ਕਰੋ';

  @override
  String get retry => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ?';

  @override
  String get reviewAll => 'ਸਾਰਿਆਂ ਦੀ ਸਮੀਖਿਆ ਕਰੋ';

  @override
  String reviewCount(int count) {
    return '$count ਵਾਰ ਸਮੀਖਿਆ ਕੀਤੀ';
  }

  @override
  String get reviewModeTitle => 'ਸਮੀਖਿਆ';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'ਤੀਜਾ ਧਿਰ';

  @override
  String get roleUser => 'ਵਰਤੋਂਕਾਰ';

  @override
  String get save => 'ਸੁਰੱਖਿਅਤ ਕਰੋ';

  @override
  String get saveData => 'ਸੇਵ ਕਰੋ';

  @override
  String saveFailed(String error) {
    return 'ਸੇਵ ਕਰਨਾ ਅਸਫਲ: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'ਖੋਜ ਮੋਡ ਤੋਂ ਅਨੁਵਾਦ ਸੇਵ ਕਰੋ';

  @override
  String get saved => 'ਸੇਵ ਕੀਤਾ';

  @override
  String get saving => 'ਸੇਵ ਕਰ ਰਿਹਾ ਹੈ...';

  @override
  String score(String score) {
    return 'ਸ਼ੁੱਧਤਾ: $score%';
  }

  @override
  String get scoreLabel => 'ਸਕੋਰ';

  @override
  String get search => 'ਖੋਜ';

  @override
  String get searchConditions => 'ਖੋਜ ਸ਼ਰਤਾਂ';

  @override
  String get searchSentenceHint => 'ਵਾਕ ਖੋਜੋ...';

  @override
  String get searchWordHint => 'ਸ਼ਬਦ ਖੋਜੋ...';

  @override
  String get sectionSentence => 'ਵਾਕ ਭਾਗ';

  @override
  String get sectionSentences => 'ਵਾਕ';

  @override
  String get sectionWord => 'ਸ਼ਬਦ ਭਾਗ';

  @override
  String get sectionWords => 'ਸ਼ਬਦ';

  @override
  String get selectExistingSubject => 'ਮੌਜੂਦਾ ਨਾਮ ਚੁਣੋ';

  @override
  String get selectMaterialPrompt => 'ਕਿਰਪਾ ਕਰਕੇ ਅਧਿਐਨ ਸਮੱਗਰੀ ਚੁਣੋ';

  @override
  String get selectMaterialSet => 'ਸਿੱਖਣ ਸਮੱਗਰੀ ਚੁਣੋ';

  @override
  String get selectPOS => 'ਭਾਸ਼ਾ ਦਾ ਹਿੱਸਾ ਚੁਣੋ';

  @override
  String get selectParticipants => 'ਭਾਗੀਦਾਰ ਚੁਣੋ';

  @override
  String get selectSentenceType => 'ਵਾਕ ਦੀ ਕਿਸਮ ਚੁਣੋ';

  @override
  String get selectStudyMaterial => 'ਸਮੱਗਰੀ ਚੁਣੋ';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'ਵਾਕ';

  @override
  String get signUp => 'ਸਾਈਨ ਅੱਪ ਕਰੋ';

  @override
  String get similarTextFound => 'ਇਕੋ ਜਿਹਾ ਟੈਕਸਟ ਮਿਲਿਆ';

  @override
  String get skip => 'ਛੱਡੋ';

  @override
  String get source => 'ਸਰੋਤ:';

  @override
  String get sourceLanguage => 'ਸਰੋਤ ਭਾਸ਼ਾ';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'ਹੁਣ ਬੋਲੋ!';

  @override
  String get speaker => 'ਬੁਲਾਰਾ';

  @override
  String get speakerSelect => 'ਬੁਲਾਰੇ ਦੀ ਚੋਣ ਕਰੋ';

  @override
  String get speakingPractice => 'ਬੋਲਣ ਦਾ ਅਭਿਆਸ';

  @override
  String get startChat => 'ਗੱਲਬਾਤ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get startPractice => 'ਅਭਿਆਸ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get startTutorial => 'ਟੂਰ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get startWarning => 'ਚੇਤਾਵਨੀ';

  @override
  String get startsWith => 'ਸ਼ੁਰੂਆਤੀ ਅੱਖਰ';

  @override
  String get statusCheckEmail =>
      'ਪ੍ਰਮਾਣਿਕਤਾ ਪੂਰੀ ਕਰਨ ਲਈ ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੀ ਈਮੇਲ ਵੇਖੋ।';

  @override
  String statusDownloading(Object name) {
    return 'ਡਾਊਨਲੋਡ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'ਇੰਪੋਰਟ ਕਰਨਾ ਅਸਫਲ: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name ਇੰਪੋਰਟ ਕਰਨਾ ਪੂਰਾ ਹੋਇਆ';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'ਲੌਗਇਨ ਰੱਦ ਕਰ ਦਿੱਤਾ ਗਿਆ।';

  @override
  String statusLoginFailed(Object error) {
    return 'ਲੌਗਇਨ ਅਸਫਲ: $error';
  }

  @override
  String get statusLoginSuccess => 'ਲੌਗਇਨ ਸਫਲ ਹੋ ਗਿਆ।';

  @override
  String get statusLogoutSuccess => 'ਲਾਗ ਆਉਟ ਹੋ ਗਿਆ ਹੈ।';

  @override
  String statusSignUpFailed(Object error) {
    return 'ਸਾਈਨ ਅੱਪ ਕਰਨਾ ਅਸਫਲ: $error';
  }

  @override
  String get statusSigningUp => 'ਸਾਈਨ ਅੱਪ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get stopPractice => 'ਰੋਕੋ';

  @override
  String get studyComplete => 'ਅਧਿਐਨ ਕੀਤਾ';

  @override
  String studyRecords(int count) {
    return 'ਰਿਕਾਰਡ ($count)';
  }

  @override
  String get styleFormal => 'ਰਸਮੀ';

  @override
  String get styleInformal => 'ਗੈਰ-ਰਸਮੀ';

  @override
  String get stylePolite => 'ਸ਼ਿਸ਼ਟਾਚਾਰੀ';

  @override
  String get styleSlang => 'ਅਪਭਾਸ਼ਾ/ਅਸ਼ਲੀਲ';

  @override
  String get subject => 'ਵਿਸ਼ਾ:';

  @override
  String get swapLanguages => 'ਭਾਸ਼ਾਵਾਂ ਬਦਲੋ';

  @override
  String get switchToAi => 'AI ਮੋਡ \'ਤੇ ਜਾਓ';

  @override
  String get switchToPartner => 'ਸਾਥੀ ਮੋਡ \'ਤੇ ਜਾਓ';

  @override
  String get syncingData => 'ਡੇਟਾ ਸਿੰਕ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get tabConversation => 'ਗੱਲਬਾਤ';

  @override
  String tabReview(int count) {
    return 'ਸਮੀਖਿਆ ($count)';
  }

  @override
  String get tabSentence => 'ਵਾਕ';

  @override
  String get tabSpeaking => 'ਬੋਲਣਾ';

  @override
  String tabStudyMaterial(int count) {
    return 'ਸਮੱਗਰੀ ($count)';
  }

  @override
  String get tabWord => 'ਸ਼ਬਦ';

  @override
  String get tagFormal => 'ਆਦਰਯੋਗ';

  @override
  String get tagSelection => 'ਟੈਗ ਚੁਣੋ';

  @override
  String get targetLanguage => 'ਟੀਚਾ ਭਾਸ਼ਾ';

  @override
  String get targetLanguageFilter => 'ਟੀਚਾ ਭਾਸ਼ਾ ਫਿਲਟਰ:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'ਜਵਾਬ ਪ੍ਰਗਟ ਹੋਣ ਤੋਂ ਪਹਿਲਾਂ ਸੋਚਣ ਦਾ ਸਮਾਂ।';

  @override
  String get thinkingTimeInterval => 'ਪਲੇਅਬੈਕ ਵਿੱਚ ਦੇਰੀ';

  @override
  String get timeUp => 'ਸਮਾਂ ਖਤਮ!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'ਸਿਰਲੇਖ ਟੈਗ (ਕਲੈਕਸ਼ਨ)';

  @override
  String get tooltipDecrease => 'ਘਟਾਓ';

  @override
  String get tooltipIncrease => 'ਵਧਾਓ';

  @override
  String get tooltipSearch => 'ਖੋਜੋ';

  @override
  String get tooltipSpeaking => 'ਬੋਲਣਾ';

  @override
  String get tooltipStudyReview => 'ਅਧਿਐਨ+ਸਮੀਖਿਆ';

  @override
  String totalRecords(int count) {
    return 'ਕੁੱਲ $count ਰਿਕਾਰਡ (ਸਾਰਾ ਦੇਖੋ)';
  }

  @override
  String get translate => 'ਅਨੁਵਾਦ';

  @override
  String get translating => 'ਅਨੁਵਾਦ ਕਰ ਰਿਹਾ ਹੈ...';

  @override
  String get translation => 'ਅਨੁਵਾਦ';

  @override
  String get translationComplete => 'ਅਨੁਵਾਦ ਪੂਰਾ (ਸੇਵ ਕਰਨਾ ਜ਼ਰੂਰੀ)';

  @override
  String translationFailed(String error) {
    return 'ਅਨੁਵਾਦ ਅਸਫਲ: $error';
  }

  @override
  String get translationLimitExceeded => 'ਅਨੁਵਾਦ ਦੀ ਸੀਮਾ ਵੱਧ ਗਈ';

  @override
  String get translationLimitMessage =>
      'ਤੁਸੀਂ ਆਪਣਾ ਰੋਜ਼ਾਨਾ ਮੁਫ਼ਤ ਅਨੁਵਾਦ (5 ਵਾਰ) ਪੂਰਾ ਕਰ ਲਿਆ ਹੈ।\\n\\nਕੀ ਤੁਸੀਂ ਇਸ਼ਤਿਹਾਰ ਦੇਖ ਕੇ ਤੁਰੰਤ 5 ਵਾਰ ਰੀਚਾਰਜ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ?';

  @override
  String get translationLoaded => 'ਸੇਵ ਕੀਤਾ ਅਨੁਵਾਦ ਲੋਡ ਕੀਤਾ ਗਿਆ';

  @override
  String get translationRefilled => 'ਅਨੁਵਾਦਾਂ ਦੀ ਗਿਣਤੀ 5 ਵਾਰ ਰੀਚਾਰਜ ਹੋ ਗਈ ਹੈ!';

  @override
  String get translationResultHint => 'ਅਨੁਵਾਦ ਨਤੀਜਾ - ਸੋਧਿਆ ਜਾ ਸਕਦਾ ਹੈ';

  @override
  String get tryAgain => 'ਦੁਬਾਰਾ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get tutorialAiChatDesc => 'AI ਪਾਤਰ ਨਾਲ ਅਸਲ ਗੱਲਬਾਤ ਦਾ ਅਭਿਆਸ ਕਰੋ।';

  @override
  String get tutorialAiChatTitle => 'AI ਗੱਲਬਾਤ';

  @override
  String get tutorialContextDesc =>
      'ਸਮਾਨ ਵਾਕਾਂ ਨੂੰ ਵੱਖਰਾ ਕਰਨ ਲਈ ਪ੍ਰਸੰਗ (ਜਿਵੇਂ: ਸਵੇਰ) ਸ਼ਾਮਲ ਕਰੋ।';

  @override
  String get tutorialContextTitle => 'ਪ੍ਰਸੰਗ ਟੈਗ';

  @override
  String get tutorialLangSettingsDesc =>
      'ਅਨੁਵਾਦ ਕਰਨ ਲਈ ਸਰੋਤ ਅਤੇ ਨਿਸ਼ਾਨਾ ਭਾਸ਼ਾ ਸੈੱਟ ਕਰੋ।';

  @override
  String get tutorialLangSettingsTitle => 'ਭਾਸ਼ਾ ਸੈਟਿੰਗ';

  @override
  String get tutorialM1ToggleDesc => 'ਇੱਥੇ ਸ਼ਬਦ ਅਤੇ ਵਾਕ ਮੋਡ ਵਿਚਕਾਰ ਬਦਲੋ।';

  @override
  String get tutorialM1ToggleTitle => 'ਸ਼ਬਦ/ਵਾਕ ਮੋਡ';

  @override
  String get tutorialM2DropdownDesc => 'ਅਧਿਐਨ ਸਮੱਗਰੀ ਚੁਣੋ।';

  @override
  String get tutorialM2ImportDesc => 'ਡਿਵਾਈਸ ਫੋਲਡਰ ਤੋਂ JSON ਫਾਈਲ ਆਯਾਤ ਕਰੋ।';

  @override
  String get tutorialM2ListDesc =>
      'ਆਪਣੇ ਕਾਰਡ ਚੈੱਕ ਕਰੋ ਅਤੇ ਉਹਨਾਂ ਨੂੰ ਪਲਟੋ। (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'ਅਧਿਐਨ ਸੂਚੀ';

  @override
  String get tutorialM2SearchDesc =>
      'ਤੇਜ਼ੀ ਨਾਲ ਲੱਭਣ ਲਈ ਸਟੋਰ ਕੀਤੇ ਸ਼ਬਦਾਂ ਅਤੇ ਵਾਕਾਂ ਦੀ ਖੋਜ ਕਰੋ।';

  @override
  String get tutorialM2SelectDesc =>
      'ਸਮੱਗਰੀ ਚੁਣੋ ਜਾਂ \'ਸਭ ਸਮੀਖਿਆ ਕਰੋ\' \'ਤੇ ਜਾਓ।';

  @override
  String get tutorialM2SelectTitle => 'ਚੁਣੋ ਅਤੇ ਫਿਲਟਰ';

  @override
  String get tutorialM3IntervalDesc =>
      'ਵਾਕਾਂ ਦੇ ਵਿਚਕਾਰ ਉਡੀਕ ਦਾ ਸਮਾਂ ਅਨੁਕੂਲ ਕਰੋ।';

  @override
  String get tutorialM3IntervalTitle => 'ਅੰਤਰਾਲ';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'ਬੋਲਣ ਦੇ ਅਭਿਆਸ ਲਈ ਸੈੱਟ ਚੁਣੋ।';

  @override
  String get tutorialM3SelectTitle => 'ਸਮੱਗਰੀ ਚੁਣੋ';

  @override
  String get tutorialM3StartDesc => 'ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਪਲੇ ਦਬਾਓ।';

  @override
  String get tutorialM3StartTitle => 'ਸ਼ੁਰੂ';

  @override
  String get tutorialM3WordsDesc =>
      'ਜੇਕਰ ਚੈੱਕ ਕੀਤਾ ਜਾਂਦਾ ਹੈ, ਤਾਂ ਸਿਰਫ਼ ਸਟੋਰ ਕੀਤੇ ਸ਼ਬਦਾਂ ਦਾ ਹੀ ਅਭਿਆਸ ਕਰੋ।';

  @override
  String get tutorialM3WordsTitle => 'ਸ਼ਬਦ ਅਭਿਆਸ';

  @override
  String get tutorialMicDesc => 'ਵੌਇਸ ਇਨਪੁਟ ਲਈ ਮਾਈਕ ਬਟਨ ਦਬਾਓ।';

  @override
  String get tutorialMicTitle => 'ਵੌਇਸ ਇਨਪੁਟ';

  @override
  String get tutorialSaveDesc => 'ਆਪਣਾ ਅਨੁਵਾਦ ਸੇਵ ਕਰੋ।';

  @override
  String get tutorialSaveTitle => 'ਸੇਵ';

  @override
  String get tutorialSwapDesc =>
      'ਮੈਂ ਆਪਣੀ ਭਾਸ਼ਾ ਨੂੰ ਉਸ ਭਾਸ਼ਾ ਨਾਲ ਬਦਲਦਾ ਹਾਂ ਜੋ ਮੈਂ ਸਿੱਖ ਰਿਹਾ ਹਾਂ।';

  @override
  String get tutorialTabDesc =>
      'ਤੁਸੀਂ ਇੱਥੇ ਆਪਣੀ ਲੋੜੀਂਦੀ ਸਿੱਖਣ ਦੀ ਵਿਧੀ ਚੁਣ ਸਕਦੇ ਹੋ।';

  @override
  String get tutorialTapToContinue => 'ਜਾਰੀ ਰੱਖਣ ਲਈ ਟੈਪ ਕਰੋ';

  @override
  String get tutorialTransDesc => 'ਆਪਣਾ ਟੈਕਸਟ ਅਨੁਵਾਦ ਕਰਨ ਲਈ ਇੱਥੇ ਦਬਾਓ।';

  @override
  String get tutorialTransTitle => 'ਅਨੁਵਾਦ';

  @override
  String get typeExclamation => 'ਵਿਸਮਿਕ ਵਾਕ';

  @override
  String get typeImperative => 'ਹੁਕਮੀਆ ਵਾਕ';

  @override
  String get typeQuestion => 'ਪ੍ਰਸ਼ਨ';

  @override
  String get typeStatement => 'ਬਿਆਨ';

  @override
  String get usageLimitTitle => 'ਵਰਤੋਂ ਦੀ ਹੱਦ ਪੂਰੀ ਹੋ ਗਈ';

  @override
  String get useExistingText => 'ਮੌਜੂਦਾ ਵਰਤੋ';

  @override
  String get viewOnlineGuide => 'ਔਨਲਾਈਨ ਗਾਈਡ ਦੇਖੋ';

  @override
  String get voluntaryTranslations => 'ਵਲੰਟਰੀ ਅਨੁਵਾਦ';

  @override
  String get watchAdAndRefill => 'ਇਸ਼ਤਿਹਾਰ ਦੇਖੋ ਅਤੇ ਰੀਚਾਰਜ ਕਰੋ (+5 ਵਾਰ)';

  @override
  String get word => 'ਸ਼ਬਦ';

  @override
  String get wordDefenseDesc =>
      'ਦੁਸ਼ਮਣ ਦੇ ਆਉਣ ਤੋਂ ਪਹਿਲਾਂ ਸ਼ਬਦ ਬੋਲ ਕੇ ਅਧਾਰ ਦਾ ਬਚਾਅ ਕਰੋ।';

  @override
  String get wordDefenseTitle => 'ਸ਼ਬਦ ਡਿਫੈਂਸ';

  @override
  String get wordModeLabel => 'ਸ਼ਬਦ ਮੋਡ';

  @override
  String get yourPronunciation => 'ਤੁਹਾਡਾ ਉਚਾਰਨ';

  @override
  String get ttsUnsupportedNatively =>
      'ਇਹ ਭਾਸ਼ਾ ਇਸ ਡਿਵਾਈਸ ਦੀਆਂ ਸੈਟਿੰਗਾਂ \'ਤੇ ਸਮਰਥਿਤ ਨਹੀਂ ਹੈ।';

  @override
  String get welcomeTitle => 'Talkie ਵਿੱਚ ਤੁਹਾਡਾ ਸੁਆਗਤ ਹੈ!';

  @override
  String get welcomeDesc =>
      'Talkie 80 ਤੋਂ ਵੱਧ ਭਾਸ਼ਾਵਾਂ ਦਾ ਸਮਰਥਨ ਕਰਦਾ ਹੈ ਅਤੇ ਯਾਤਰੀਆਂ ਲਈ ਇੱਕ ਸਮਾਰਟ ਅਨੁਵਾਦ ਸਾਧਨ ਹੈ। AI ਚੈਟ ਰਾਹੀਂ ਆਪਣੇ ਬੋਲਣ ਦੇ ਹੁਨર ਨੂੰ ਵਧਾਓ!';

  @override
  String get welcomeButton => 'ਸ਼ੁਰੂ ਕਰੋ';
}
