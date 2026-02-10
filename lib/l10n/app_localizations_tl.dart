// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class AppLocalizationsTl extends AppLocalizations {
  AppLocalizationsTl([String locale = 'tl']) : super(locale);

  @override
  String get helpTitle => 'Tulong at Gabay';

  @override
  String get helpTabModes => 'Paglalarawan ng Mode';

  @override
  String get helpTabJson => 'Format ng JSON';

  @override
  String get helpTabTour => 'Mag-tour';

  @override
  String get helpMode1Desc =>
      'Kilalanin ang boses, isalin, at pakinggan ang resulta.';

  @override
  String get helpMode1Details =>
      '• Mga Setting ng Wika: Pindutin ang icon sa itaas/ibaba para baguhin ang wika\n• Toggle ng Salita/Pangungusap: Lumipat ng mode\n• Input ng Boses: Pindutin ang icon ng mikropono para magsimula/huminto sa pakikinig\n• Input ng Teksto: Direktang mag-type para magsalin\n• Awtomatikong Paghahanap: Tukuyin ang magkatulad na umiiral na mga pangungusap\n• Isalin: Pindutin ang button na Isalin para agad na magsalin\n• Pakinggan: TTS playback gamit ang icon ng speaker\n• I-save: Magdagdag ng mga tala sa \'I-save ang Data\'\n• I-clear: I-reset ang input';

  @override
  String get helpMode2Desc =>
      'Pag-aralan ang mga naka-save na pangungusap at suriin kung kabisado mo na ang mga ito gamit ang awtomatikong feature na pagtatago.';

  @override
  String get helpMode2Details =>
      '• Pumili ng Materyal: Pumili ng partikular na set ng materyal o \'Buong Pag-aaral\'\n• I-flip ang Card: Suriin ang pagsasalin gamit ang \'Ipakita/Itago\' (awtomatikong pagsusuri sa pag-aaral)\n• Pakinggan: TTS playback ng pangungusap\n• Tapos na sa Pag-aaral: Ipahiwatig na tapos na ang pag-aaral gamit ang checkmark (V)\n• I-delete: Pindutin nang matagal ang card para i-delete ang tala\n• Mga Kundisyon sa Paghahanap: I-filter ayon sa tag, kamakailang item, panimulang titik';

  @override
  String get helpMode3Desc =>
      'Makinig at gayahin ang mga pangungusap (Shadowing) upang sanayin ang iyong pagbigkas.';

  @override
  String get helpMode3Details =>
      '• Pumili ng Materyal: Pumili ng set ng materyal na pag-aaralan\n• Itakda ang Interval: Ayusin ang oras ng paghihintay sa pagitan ng mga pangungusap gamit ang mga button na [-] [+]. (3 segundo hanggang 60 segundo)\n• Simulan/Hinto: Kontrolin ang sesyon ng shadowing\n• Magsalita: Makinig at ulitin pagkatapos ng boses\n• Feedback: Ipinapakita ang score ng accuracy (0-100) at kulay\n• Mga Kundisyon sa Paghahanap: I-filter ang target ng pagsasanay ayon sa tag, kamakailang item, panimulang titik';

  @override
  String get helpModeChatDesc =>
      'Makipag-usap sa isang AI persona upang magsanay ng tunay na pag-uusap.';

  @override
  String get helpModeChatDetails =>
      '• AI Chat: Magsalita sa aking wika para magsanay sa pag-uusap\n• Multi Persona: Maaaring baguhin ang kasarian/wika/pangalan ng kabilang panig gamit ang menu sa ibabaw ng speech bubble\n• Magdagdag ng Partner: Magdagdag ng bagong kausap (Stranger) gamit ang button na +\n• GPS: Pagsasadula batay sa kasalukuyang lokasyon\n• Awtomatikong I-save: Awtomatikong isalin at i-save ang nilalaman ng pag-uusap';

  @override
  String get helpJsonDesc =>
      'Para mag-import ng materyal sa pag-aaral sa Mode 3 bilang isang JSON file, sundin ang format na ito:';

  @override
  String get helpDialogueImportDesc =>
      'Mag-import ng buong set ng pag-uusap bilang JSON file.';

  @override
  String get helpDialogueImportDetails =>
      '• Istraktura ng JSON: Gumamit ng array na `dialogues` sa halip na `entries`\n• Awtomatikong Pag-recover: Na-recover ang pamagat ng pag-uusap, persona, at pagkakasunud-sunod ng mensahe.\n• Lokasyon: Lumalabas ang mga na-import na pag-uusap sa tab na \'Kasaysayan\' ng AI Chat Mode.';

  @override
  String get helpTourDesc =>
      'Ginagabayan ka ng **Highlight Circle** sa mga pangunahing feature.\n(Hal: Maaari mong i-delete ang card na itinuturo ng **Highlight Circle** sa pamamagitan ng pagpindot nang matagal dito.)';

  @override
  String get partnerMode => 'Partner Mode';

  @override
  String get manual => 'Manwal na Input';

  @override
  String get speaker => 'Tagapagsalita';

  @override
  String get switchToAi => 'Lumipat sa AI Mode';

  @override
  String get switchToPartner => 'Lumipat sa Partner Mode';

  @override
  String get currentLocation => 'Kasalukuyang Lokasyon';

  @override
  String get location => 'Lokasyon';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Ako';

  @override
  String get currentMaterialLabel => 'Kasalukuyang Piniling Materyal:';

  @override
  String get basicMaterialRepository =>
      'Basic na Imbakan ng Pangungusap/Salita';

  @override
  String get word => 'Salita';

  @override
  String get sentence => 'Pangungusap';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Pag-aaral ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Materyal sa Pag-aaral ($count)';
  }

  @override
  String get mode2Title => 'Pag-aaral';

  @override
  String get search => 'Maghanap';

  @override
  String get translate => 'Isalin';

  @override
  String get listen => 'Pakinggan';

  @override
  String get saveData => 'I-save ang Data';

  @override
  String get saved => 'Na-save';

  @override
  String get delete => 'I-delete';

  @override
  String get materialInfo => 'Impormasyon ng Materyal';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get confirm => 'Kumpirmahin';

  @override
  String get refresh => 'I-refresh';

  @override
  String studyRecords(int count) {
    return 'Mga Tala sa Pag-aaral ($count)';
  }

  @override
  String get targetLanguageFilter => 'I-filter ang Target na Wika:';

  @override
  String get noRecords => 'Walang tala sa pag-aaral para sa napiling wika';

  @override
  String get saveTranslationsFromSearch =>
      'Subukang i-save ang mga pagsasalin mula sa search mode';

  @override
  String get flip => 'Ipakita';

  @override
  String get hide => 'Itago';

  @override
  String get deleteRecord => 'I-delete ang Record';

  @override
  String get confirmDelete =>
      'Gusto mo bang i-delete ang tala na ito sa pag-aaral?';

  @override
  String get recordDeleted => 'Na-delete ang record';

  @override
  String deleteFailed(String error) {
    return 'Nabigong I-delete: $error';
  }

  @override
  String get importJsonFile => 'Mag-import ng JSON File';

  @override
  String get importing => 'Nag-i-import...';

  @override
  String get importComplete => 'Tapos na sa Pag-import';

  @override
  String get importFailed => 'Nabigong Mag-import';

  @override
  String importFile(String fileName) {
    return 'File: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Kabuuang: $count';
  }

  @override
  String importAdded(int count) {
    return 'Naidagdag: $count';
  }

  @override
  String importSkipped(int count) {
    return 'Nilaktawan: $count';
  }

  @override
  String get errors => 'Mga Error:';

  @override
  String get error => 'Error';

  @override
  String importErrorMessage(String error) {
    return 'Nabigong mag-import ng file:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Pumili ng Materyal sa Pag-aaral';

  @override
  String get subject => 'Paksa:';

  @override
  String get source => 'Pinagmulan:';

  @override
  String get file => 'File:';

  @override
  String progress(int current, int total) {
    return 'Pag-unlad: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Mangyaring mag-import ng JSON file';

  @override
  String get selectMaterialPrompt => 'Pumili ng materyal sa pag-aaral';

  @override
  String get studyComplete => 'Tapos na sa Pag-aaral';

  @override
  String get markAsStudied => 'Markahan Bilang Pinag-aralan';

  @override
  String get listening => 'Nakikinig...';

  @override
  String get recognized => 'Nakilala';

  @override
  String recognitionFailed(String error) {
    return 'Nabigong Kilalanin ang Boses: $error';
  }

  @override
  String get checking => 'Sinusuri...';

  @override
  String get translating => 'Isinasalin...';

  @override
  String get translationComplete =>
      'Tapos na ang Pagsasalin (Kailangang I-save)';

  @override
  String get translationLoaded => 'Na-load ang Naka-save na Pagsasalin';

  @override
  String translationFailed(String error) {
    return 'Nabigong Isalin: $error';
  }

  @override
  String get enterTextToTranslate => 'Mag-type ng tekstong isasalin';

  @override
  String get saving => 'Nagse-save...';

  @override
  String get noTranslationToSave => 'Walang pagsasalin na ise-save';

  @override
  String saveFailed(String error) {
    return 'Nabigong I-save: $error';
  }

  @override
  String get playing => 'Nagpe-play...';

  @override
  String get noTextToPlay => 'Walang tekstong ipe-play';

  @override
  String playbackFailed(String error) {
    return 'Nabigong Mag-playback: $error';
  }

  @override
  String get sourceLanguage => 'Source na Wika';

  @override
  String get targetLanguage => 'Target na Wika';

  @override
  String get similarTextFound => 'May Natagpuang Magkatulad na Teksto';

  @override
  String get useExistingText => 'Gumamit ng Umiiral na Teksto';

  @override
  String get createNew => 'Magpatuloy gamit ang Bagong Pangungusap';

  @override
  String reviewCount(int count) {
    return 'Pag-aaral $count beses';
  }

  @override
  String get tabSpeaking => 'Magsalita';

  @override
  String get speakingPractice => 'Pagsasanay sa Pagbigkas';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds segundo';
  }

  @override
  String get yourPronunciation => 'Ang Pagbigkas Mo';

  @override
  String get correctAnswer => 'Tamang Sagot';

  @override
  String score(String score) {
    return 'Accuracy: $score%';
  }

  @override
  String get perfect => 'Perpekto!';

  @override
  String get good => 'Maganda';

  @override
  String get tryAgain => 'Subukan Muli';

  @override
  String get startPractice => 'Simulan ang Pagsasanay';

  @override
  String get stopPractice => 'Hentuan ang Pagsasanay';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Simulan ang Tutorial';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Input ng Boses';

  @override
  String get tutorialMicDesc =>
      'Maaari kang mag-input gamit ang boses sa pamamagitan ng pagpindot sa button ng mikropono.';

  @override
  String get tutorialTabDesc =>
      'Dito maaari mong piliin ang gustong mode ng pag-aaral.';

  @override
  String get tutorialTapToContinue => 'I-tap ang screen para magpatuloy';

  @override
  String get tutorialTransTitle => 'Isalin';

  @override
  String get tutorialTransDesc => 'Isinasalin ang tekstong in-input mo.';

  @override
  String get tutorialSaveTitle => 'I-save';

  @override
  String get tutorialSaveDesc =>
      'I-save ang isinalin na resulta sa iyong tala sa pag-aaral.';

  @override
  String get tutorialM2SelectTitle => 'Pumili ng Materyal';

  @override
  String get tutorialM2SelectDesc =>
      'Pindutin ang icon ng set ng materyal (📚) sa itaas na app bar para pumili ng materyal na pag-aaralan.';

  @override
  String get tutorialM3SelectDesc =>
      'Pindutin ang icon ng set ng materyal (📚) sa itaas na app bar para pumili ng materyal na pagsasanayan.';

  @override
  String get tutorialM2ListTitle => 'Listahan ng Pag-aaral';

  @override
  String get tutorialM2ListDesc =>
      'Maaari mong i-delete ang card na ito sa pamamagitan ng pagpindot nang matagal dito (Long Click). Suriin ang mga naka-save na pangungusap at i-flip ang mga ito.';

  @override
  String get tutorialM3SelectTitle => 'Pumili ng Materyal';

  @override
  String get tutorialM3IntervalTitle => 'Itakda ang Interval';

  @override
  String get tutorialM3IntervalDesc =>
      'Inaayos ang oras ng paghihintay sa pagitan ng mga pangungusap.';

  @override
  String get tutorialM3StartTitle => 'Simulan ang Pagsasanay';

  @override
  String get tutorialM3StartDesc =>
      'Pindutin ang button na play para pakinggan ang boses ng katutubong tagapagsalita at sundin ito.';

  @override
  String get startWarning => 'Babala';

  @override
  String get noVoiceDetected => 'Walang nakitang boses';

  @override
  String get tooltipSearch => 'Maghanap';

  @override
  String get tooltipStudyReview => 'Mag-aral+Mag-review';

  @override
  String get tooltipSpeaking => 'Magsalita';

  @override
  String get tooltipDecrease => 'Bawasan';

  @override
  String get tooltipIncrease => 'Dagdagan';

  @override
  String get languageSettings => 'Mga Setting ng Wika';

  @override
  String get tutorialM2DropdownDesc =>
      'Maaari kang pumili ng materyal na pag-aaralan sa pamamagitan ng menu sa itaas.';

  @override
  String get tutorialM2ImportDesc =>
      'Mag-import ng JSON file mula sa folder ng device.';

  @override
  String get tutorialLangSettingsTitle => 'Mga Setting ng Wika';

  @override
  String get tutorialLangSettingsDesc =>
      'Itakda ang source na wika at ang target na wika na isasalin.';

  @override
  String get copy => 'Kopyahin';

  @override
  String get copiedToClipboard => 'Kinopya sa clipboard!';

  @override
  String get tutorialContextTitle => 'Tag ng Sitwasyon/Konteksto';

  @override
  String get tutorialContextDesc =>
      'Kahit na pareho ang pangungusap, maaari mo itong i-save nang hiwalay kung isusulat mo ang sitwasyon (hal. Umaga, Gabi).';

  @override
  String get thinkingTimeInterval => 'Interval ng Oras ng Pag-iisip';

  @override
  String get thinkingTimeDesc =>
      'Ang oras para mag-isip bago ipakita ang tamang sagot.';

  @override
  String get autoPlay => 'Awtomatikong Mag-play';

  @override
  String get timeUp => 'Tapos na ang Oras!';

  @override
  String get gameModeTitle => 'Game Mode';

  @override
  String get gameModeDesc => 'Piliin ang game mode na pagsasanayan';

  @override
  String get wordDefenseTitle => 'Word Defense';

  @override
  String get wordDefenseDesc =>
      'Sabihin ang salita para ipagtanggol ang base bago dumating ang kaaway.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get dialogueQuestDesc =>
      'Magsanay sa pag-uusap sa pamamagitan ng pagsasadula. Pumili at sabihin ang naaangkop na sagot.';

  @override
  String get labelType => 'Uri:';

  @override
  String get labelWord => 'Salita';

  @override
  String get labelSentence => 'Pangungusap';

  @override
  String get contextTagLabel =>
      'Konteksto/Sitwasyon (Opsyonal) - Hal: Pagbati sa Umaga, Pormal';

  @override
  String get contextTagHint =>
      'Isulat ang sitwasyon para madaling makilala sa ibang pagkakataon';

  @override
  String get usageLimitTitle => 'Naabot na ang Limitasyon';

  @override
  String get translationLimitExceeded => 'Lumampas sa limitasyon ng pagsasalin';

  @override
  String get translationLimitMessage =>
      'Naubos mo na ang lahat ng libreng pagsasalin sa araw na ito (5 beses).\\n\\nManood ng ad para agad na mapunan ang 5 beses?';

  @override
  String get watchAdAndRefill => 'Manood ng Ad at Punan (+5 beses)';

  @override
  String get translationRefilled =>
      'Napunan na ang bilang ng pagsasalin nang 5 beses!';

  @override
  String get adLoading => 'Naglo-load ng ad. Subukan muli mamaya.';

  @override
  String get reviewAll => 'Buong Pag-aaral';

  @override
  String totalRecords(int count) {
    return 'Kabuuang $count na record (Tingnan Lahat)';
  }

  @override
  String get filterAll => 'Lahat';

  @override
  String get practiceWordsOnly => 'Magsanay ng Mga Salita Lamang';

  @override
  String get resetPracticeHistory => 'I-reset ang History ng Pagsasanay';

  @override
  String get retry => 'Subukan Muli?';

  @override
  String get noStudyMaterial => 'Walang materyal sa pag-aaral.';

  @override
  String get gameOver => 'Game Over';

  @override
  String get playAgain => 'Maglaro Muli';

  @override
  String get speakNow => 'Magsalita Ngayon!';

  @override
  String get scoreLabel => 'Score';

  @override
  String get viewOnlineGuide => 'Tingnan ang Online na Gabay';

  @override
  String get getMaterials => 'Kumuha ng Mga Materyal';

  @override
  String get swapLanguages => 'Pagpalitin ang Mga Wika';

  @override
  String get next => 'Susunod';

  @override
  String get wordModeLabel => 'Word Mode';

  @override
  String get accuracy => 'Accuracy';

  @override
  String get basicDefault => 'Basic';

  @override
  String get basic => 'Basic';

  @override
  String get tutorialM3WordsTitle => 'Pagsasanay sa Salita';

  @override
  String get tutorialM3WordsDesc =>
      'Kung naka-check, magsanay lang ng mga naka-save na salita.';

  @override
  String get enterTextHint => 'Maglagay ng tekstong isasalin';

  @override
  String get micButtonTooltip => 'Simulan ang pagkilala sa boses';

  @override
  String get menuHelp => 'Tulong';

  @override
  String get menuWebDownload => 'Homepage';

  @override
  String get menuDeviceImport => 'Mag-import ng materyal mula sa device';

  @override
  String get menuSettings => 'Mga Setting ng Wika';

  @override
  String get basicWords => 'Basic na Imbakan ng Salita';

  @override
  String get basicSentences => 'Basic na Imbakan ng Pangungusap';

  @override
  String get selectMaterialSet => 'Pumili ng set ng materyal sa pag-aaral';

  @override
  String get sectionWords => 'Mga Salita';

  @override
  String get sectionSentences => 'Mga Pangungusap';

  @override
  String get languageSettingsTitle => 'Mga Setting ng Wika';

  @override
  String get sourceLanguageLabel => 'Aking Wika (Source)';

  @override
  String get targetLanguageLabel => 'Wika sa Pag-aaral (Target)';

  @override
  String get mode3Start => 'Simulan';

  @override
  String get mode3Stop => 'Hentuan';

  @override
  String get mode3Next => 'Susunod';

  @override
  String get mode3TryAgain => 'Subukang Muli';

  @override
  String get tutorialM3ResetTitle => 'I-reset ang History';

  @override
  String get tutorialSwapDesc =>
      'Pagpalitin ang aking wika at ang wika sa pag-aaral.';

  @override
  String get recognizedText => 'Nakilalang Pagbigkas:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'I-reset ang pag-unlad at score ng accuracy para magsimula muli sa simula.';

  @override
  String get menuSelectMaterialSet => 'Pumili ng set ng materyal sa pag-aaral';

  @override
  String get sectionWord => 'Seksyon ng Salita';

  @override
  String get sectionSentence => 'Seksyon ng Pangungusap';

  @override
  String get tabWord => 'Salita';

  @override
  String get tabSentence => 'Pangungusap';

  @override
  String get errorProfanity =>
      'Hindi maisasalin dahil naglalaman ito ng kalapastanganan.';

  @override
  String get errorHateSpeech =>
      'Hindi maisasalin dahil naglalaman ito ng mapoot na pananalita.';

  @override
  String get errorSexualContent =>
      'Hindi maisasalin dahil naglalaman ito ng malaswang content.';

  @override
  String get errorOtherSafety =>
      'Tinanggihan ang pagsasalin ng AI safety policy.';

  @override
  String get clearAll => 'I-clear Lahat';

  @override
  String get disambiguationTitle => 'Pumili ng Kahulugan';

  @override
  String get disambiguationPrompt => 'Aling kahulugan ang gusto mong isalin?';

  @override
  String get skip => 'Laktawan';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Pag-aaral';

  @override
  String get practiceModeTitle => 'Pagsasanay';

  @override
  String get chatHistoryTitle => 'Kasaysayan ng Pag-uusap';

  @override
  String get chatNew => 'Bagong Pag-uusap';

  @override
  String get chatNewChat => 'Bagong Chat';

  @override
  String get chatChoosePersona => 'Pumili ng Persona';

  @override
  String get chatTypeHint => 'I-type ang mensahe...';

  @override
  String chatFailed(Object error) {
    return 'Nabigo ang Chat: $error';
  }

  @override
  String get chatNoConversations => 'Wala pang pag-uusap';

  @override
  String get chatStartNewPrompt =>
      'Subukang magsimula ng bagong pag-uusap para sa pagsasanay!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Sipi mula sa pag-uusap ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Kaibigan na Lokal';

  @override
  String get chatUntitled => 'Pag-uusap na Walang Pamagat';

  @override
  String get chatAiChat => 'Chat';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Magsanay sa pag-uusap sa totoong buhay sa pamamagitan ng AI persona.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Kasalukuyang napiling set ng materyal: $name';
  }

  @override
  String get basicWordRepository => 'Basic na Imbakan ng Salita';

  @override
  String get basicSentenceRepository => 'Basic na Imbakan ng Pangungusap';

  @override
  String get chatEndTitle => 'Tapusin at I-save ang Pag-uusap';

  @override
  String get chatEndMessage => 'Gusto mo bang tapusin ang pag-uusap?';

  @override
  String get chatSaveAndExit => 'I-save at Lumabas';

  @override
  String get errorSelectCategory => 'Pumili muna ng salita o pangungusap!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Pangungusap Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Lumipat ng word at pangungusap mode dito.';

  @override
  String get metadataDialogTitle => 'Detalyadong Kategorya';

  @override
  String get tagFormal => 'Pormal';

  @override
  String get selectPOS => 'Pumili ng POS';

  @override
  String get selectSentenceType => 'Pumili ng Uri ng Pangungusap';

  @override
  String get metadataRootWord => 'Root Word';

  @override
  String get posNoun => 'Pangngalan';

  @override
  String get posVerb => 'Pandiwa';

  @override
  String get posAdjective => 'Pang-uri';

  @override
  String get posAdverb => 'Pang-abay';

  @override
  String get posPronoun => 'Panghalip';

  @override
  String get posPreposition => 'Preposisyon';

  @override
  String get posConjunction => 'Pang-ugnay';

  @override
  String get posInterjection => 'Pandamdam';

  @override
  String get typeStatement => 'Pahayag';

  @override
  String get typeQuestion => 'Tanong';

  @override
  String get typeExclamation => 'Bulalas';

  @override
  String get typeImperative => 'Pautos';

  @override
  String get labelNote => 'Tala';

  @override
  String get labelShowMemorized => 'Tapos na';

  @override
  String get titleTagSelection => 'Tag ng Pamagat (Sarbey)';

  @override
  String get generalTags => 'Pangkalahatang mga Tag';

  @override
  String get tagSelection => 'Pagpili ng Tag';

  @override
  String get metadataFormType => 'Uri ng Gramatika';

  @override
  String get formInfinitive => 'Infinitive/Kasalukuyan';

  @override
  String get formPast => 'Nakaraan';

  @override
  String get formPastParticiple => 'Past Participle';

  @override
  String get formPresentParticiple => 'Present Participle (-ing)';

  @override
  String get formPresent => 'Kasalukuyan';

  @override
  String get formThirdPersonSingular => 'Pangatlong Panauhan na Isahan';

  @override
  String get formPlural => 'Maramihan';

  @override
  String get formSingular => 'Isahan';

  @override
  String get caseSubject => 'Paksa';

  @override
  String get caseObject => 'Layon';

  @override
  String get casePossessive => 'Pang-angkin';

  @override
  String get casePossessivePronoun => 'Panghalip na Pang-angkin';

  @override
  String get caseReflexive => 'Reflexive';

  @override
  String get formPositive => 'Positive';

  @override
  String get formComparative => 'Comparative';

  @override
  String get formSuperlative => 'Superlative';

  @override
  String get searchConditions => 'Mga Kundisyon sa Paghahanap';

  @override
  String recentNItems(int count) {
    return 'Tingnan ang $count Kamakailang Nilikha';
  }

  @override
  String get startsWith => 'Nagsisimula sa';

  @override
  String get reset => 'I-reset';

  @override
  String get participantRename => 'Palitan ang Pangalan ng Kalahok';

  @override
  String get labelName => 'Pangalan';

  @override
  String get gender => 'Kasarian';

  @override
  String get language => 'Wika';

  @override
  String get male => 'Lalaki';

  @override
  String get female => 'Babae';

  @override
  String get neutral => 'Neutral';

  @override
  String get chatAllConversations => 'Lahat ng Usapan';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Sigurado ka bang gusto mong burahin ang usapang ito?\n Hindi na ito maibabalik pa.';

  @override
  String get notSelected => '- Walang Napili -';

  @override
  String get myWordbook => 'Aking Aklat ng Salita';

  @override
  String get mySentenceCollection => 'Aking Koleksyon ng Pangungusap';

  @override
  String get newSubjectName => '새 단어장/문장집 제목';

  @override
  String get enterNewSubjectName => '새 제목 입력';

  @override
  String get addNewSubject => '새 제목 추가';

  @override
  String get selectExistingSubject => '기존 제목 선택';

  @override
  String get addTagHint => '태그 추가...';
}
