// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get accuracy => 'Katumpakan';

  @override
  String get ttsMissing =>
      'Wala pang voice engine para sa wikang ito na naka-install sa device.';

  @override
  String get ttsInstallGuide =>
      'Pumunta sa Android Settings > Google TTS para i-install ang language data.';

  @override
  String get adLoading =>
      'Naglo-load ng ad. Subukang muli sa ibang pagkakataon.';

  @override
  String get addNewSubject => 'Idagdag ang bagong pamagat';

  @override
  String get addParticipant => 'Magdagdag ng Kalahok';

  @override
  String get addTagHint => 'Magdagdag ng tag...';

  @override
  String get alreadyHaveAccount => 'May account ka na?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Auto-play';

  @override
  String get basic => 'Pangunahin';

  @override
  String get basicDefault => 'Basic Default';

  @override
  String get basicMaterialRepository =>
      'Basic na Repository ng Pangungusap/Salita';

  @override
  String get basicSentenceRepository =>
      'Repository ng Mga Pangunahing Pangungusap';

  @override
  String get basicSentences => 'Basic na Repository ng mga Pangungusap';

  @override
  String get basicWordRepository => 'Repository ng Mga Pangunahing Salita';

  @override
  String get basicWords => 'Basic na Repository ng mga Salita';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get caseObject => 'Layon';

  @override
  String get casePossessive => 'Pang-angkin';

  @override
  String get casePossessivePronoun => 'Panghalip na Pang-angkin';

  @override
  String get caseReflexive => 'Panaong Pabalik';

  @override
  String get caseSubject => 'Paksa';

  @override
  String get chatAiChat => 'Chat';

  @override
  String get chatAllConversations => 'Lahat ng Usapan';

  @override
  String get chatChoosePersona => 'Pumili ng Persona';

  @override
  String get chatEndMessage => 'Gusto mo bang tapusin ang chat?';

  @override
  String get chatEndTitle => 'Tapusin at I-save ang Chat';

  @override
  String chatFailed(Object error) {
    return 'Nabigo ang chat: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Sipi mula sa pag-uusap ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Kasaysayan ng Chat';

  @override
  String get chatNew => 'Bagong Chat';

  @override
  String get chatNewChat => 'Bagong Chat';

  @override
  String get chatNoConversations => 'Wala pang pag-uusap';

  @override
  String get chatSaveAndExit => 'I-save at Lumabas';

  @override
  String get chatStartNewPrompt =>
      'Subukan ang isang bagong pag-uusap para sa pagsasanay!';

  @override
  String get chatTypeHint => 'Mag-type ng mensahe...';

  @override
  String get chatUntitled => 'Walang Pamagat na Chat';

  @override
  String get checking => 'Sinusuri...';

  @override
  String get clearAll => 'I-clear Lahat';

  @override
  String get confirm => 'Kumpirmahin';

  @override
  String get confirmDelete => 'Sigurado ka bang gusto mong tanggalin ito?';

  @override
  String get confirmDeleteConversation =>
      'Sigurado ka bang gusto mong burahin ang usapang ito?\nHindi na ito mababawi pa.';

  @override
  String get confirmDeleteParticipant =>
      'Sigurado ka bang gusto mong tanggalin ang kalahok na ito?';

  @override
  String get contextTagHint =>
      'Isulat ang sitwasyon para madaling makilala sa ibang pagkakataon';

  @override
  String get contextTagLabel =>
      'Konteksto/Sitwasyon (Opsyonal) - Hal: Pagbati sa Umaga, Pormal';

  @override
  String get copiedToClipboard => 'Kinopya sa clipboard!';

  @override
  String get copy => 'Kopyahin';

  @override
  String get correctAnswer => 'Tamang Sagot';

  @override
  String get createNew => 'Lumikha ng Bago';

  @override
  String get currentLocation => 'Kasalukuyang Lokasyon';

  @override
  String get currentMaterialLabel => 'Kasalukuyang Piling Materyal:';

  @override
  String get delete => 'Tanggalin';

  @override
  String deleteFailed(String error) {
    return 'Nabigong tanggalin: $error';
  }

  @override
  String get deleteRecord => 'Tanggalin ang Tala';

  @override
  String get dialogueQuestDesc =>
      'Magsanay ng pag-uusap sa pamamagitan ng role-playing. Pumili at sabihin ang naaangkop na sagot.';

  @override
  String get dialogueQuestTitle => 'Quest sa Pag-uusap';

  @override
  String get disambiguationPrompt => 'Anong kahulugan ang gusto mong isalin?';

  @override
  String get disambiguationTitle => 'Pumili ng Kahulugan';

  @override
  String get dontHaveAccount => 'Wala ka pang account?';

  @override
  String get editParticipant => 'I-edit ang Kalahok';

  @override
  String get email => 'Email';

  @override
  String get emailAlreadyInUse =>
      'Ang email na ito ay ginagamit na. Mag-login o gamitin ang pagbawi ng password.';

  @override
  String get enterNewSubjectName => 'Ilagay ang bagong pamagat';

  @override
  String get enterSentenceHint => 'Maglagay ng pangungusap...';

  @override
  String get enterTextHint => 'Ilagay ang tekstong isasalin';

  @override
  String get enterTextToTranslate => 'Ipasok ang teksto upang isalin';

  @override
  String get enterWordHint => 'Maglagay ng salita...';

  @override
  String get error => 'Error';

  @override
  String get errorHateSpeech =>
      'Hindi maaaring isalin dahil naglalaman ng mga pahayag ng pagkapoot.';

  @override
  String get errorOtherSafety =>
      'Ang pagsasalin ay tinanggihan dahil sa patakaran sa kaligtasan ng AI.';

  @override
  String get errorProfanity =>
      'Hindi maaaring isalin dahil naglalaman ng mga malaswang salita.';

  @override
  String get errorSelectCategory => 'Pumili muna ng salita o pangungusap!';

  @override
  String get errorSexualContent =>
      'Hindi maaaring isalin dahil naglalaman ng sekswal na nilalaman.';

  @override
  String get errors => 'Mga Error:';

  @override
  String get female => 'Babae';

  @override
  String get file => 'File:';

  @override
  String get filterAll => 'Lahat';

  @override
  String get flip => 'I-flip';

  @override
  String get formComparative => 'Pahambing';

  @override
  String get formInfinitive => 'Infinitive/Kasalukuyan';

  @override
  String get formPast => 'Nakaraan';

  @override
  String get formPastParticiple => 'Nakaraang Participle';

  @override
  String get formPlural => 'Maramihan';

  @override
  String get formPositive => 'Positibo';

  @override
  String get formPresent => 'Kasalukuyan';

  @override
  String get formPresentParticiple => 'Kasalukuyang Participle (-ing)';

  @override
  String get formSingular => 'Isahan';

  @override
  String get formSuperlative => 'Pasukdol';

  @override
  String get formThirdPersonSingular => 'Pangatlong Panauhan Isahan';

  @override
  String get gameModeDesc => 'Pumili ng game mode para sa pagsasanay';

  @override
  String get gameModeTitle => 'Mode ng Laro';

  @override
  String get gameOver => 'Tapos na ang Laro';

  @override
  String get gender => 'Kasarian';

  @override
  String get generalTags => 'Pangkalahatang mga Tag';

  @override
  String get getMaterials => 'Kumuha ng mga Materyales';

  @override
  String get good => 'Mahusay';

  @override
  String get googleContinue => 'Magpatuloy sa Google';

  @override
  String get helpDialogueImportDesc =>
      'Mag-import ng buong set ng dayalogo gamit ang JSON file.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'Para sa pag-import sa Mode 3, lumikha ng JSON:';

  @override
  String get helpJsonTypeDialogue => 'Dayalogo (Dialogue)';

  @override
  String get helpJsonTypeSentence => 'Pangungusap (Sentence)';

  @override
  String get helpJsonTypeWord => 'Salita (Word)';

  @override
  String get helpMode1Desc =>
      'Kilalanin ang boses, isalin at pakinggan ang resulta.';

  @override
  String get helpMode1Details =>
      '• Boses: I-tap ang mikropono para magsimula/huminto\n• Teksto: Mag-type nang direkta para isalin\n• Auto-Search: Nakikita ang mga katulad na pangungusap\n• Isalin: Pindutan para sa agarang pagsasalin\n• Makinig: Speaker icon para sa TTS\n• I-save: Nagdaragdag sa kasaysayan\n• I-clear: I-reset ang lahat';

  @override
  String get helpMode2Desc => 'Balik-aralan ang mga na-save na pangungusap.';

  @override
  String get helpMode2Details =>
      '• Pumili: Pumili ng set o \'Balik-aralan Lahat\'\n• I-flip: \'Ipakita/Itago\' ang pagsasalin\n• Makinig: I-play ang TTS para sa pangungusap\n• Markahan: Tsek (V) para sa tapos na\n• Tanggalin: Pindutin nang matagal ang card para tanggalin\n• Filter: Tingnan lahat o ayon sa materyales';

  @override
  String get helpMode3Desc =>
      'Makinig at gayahin ang mga pangungusap (Shadowing) upang magsanay ng iyong pagbigkas.';

  @override
  String get helpMode3Details =>
      '• Pumili: Pumili ng package\n• Agwat: [-] [+] oras ng paghihintay (3s-60s)\n• Simulan/Itigil: Kontrolin ang sesyon\n• Magsalita: Makinig at ulitin\n• Marka: Kawastuhan (0-100)\n• Subukan muli: Button kung hindi makita ang boses';

  @override
  String get helpModeChatDesc =>
      'Magsanay ng totoong pag-uusap sa pamamagitan ng pakikipag-usap sa isang AI persona.';

  @override
  String get helpModeChatDetails =>
      '• AI Chat: Magsanay ng mga totoong pag-uusap gamit ang mga persona.\n• Pamamahala ng Kalahok: Itakda ang iyong wika at ang wika ng AI upang maiwasan ang hindi pagkakatugma ng wika.\n• GPS Roleplay: Lumikha ng mga natural na sitwasyon sa pag-uusap batay sa iyong kasalukuyang lokasyon.\n• Pagpapanatili ng Kasaysayan: Ang lahat ng pag-uusap ay ligtas na naka-save batay sa ID, at ang kasaysayan ay nananatili kahit na palitan mo ang pangalan.';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabModes => 'Mga Mode';

  @override
  String get helpTabTour => 'Pasyal';

  @override
  String get helpTitle => 'Tulong at Gabay';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Itago';

  @override
  String importAdded(int count) {
    return 'Idinagdag: $count';
  }

  @override
  String get importComplete => 'Tapos na ang Pag-import';

  @override
  String get importDuplicateTitleError =>
      'Mayroon nang materyal na may parehong pamagat. Subukang baguhin ang pamagat.';

  @override
  String importErrorMessage(String error) {
    return 'Nabigong i-import ang file:\\n$error';
  }

  @override
  String get importFailed => 'Nabigong Mag-import';

  @override
  String importFile(String fileName) {
    return 'File: $fileName';
  }

  @override
  String get importJsonFile => 'Mag-import ng JSON';

  @override
  String get importJsonFilePrompt => 'Mangyaring mag-import ng JSON file';

  @override
  String importSkipped(int count) {
    return 'Nilaktawan: $count';
  }

  @override
  String importTotal(int count) {
    return 'Kabuuan: $count';
  }

  @override
  String get importing => 'Nag-iimport...';

  @override
  String get inputModeTitle => 'Input';

  @override
  String intervalSeconds(int seconds) {
    return 'Agwat: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Mangyaring magpasok ng isang wastong email.';

  @override
  String get kakaoContinue => 'Magpatuloy sa Kakao';

  @override
  String get labelLangCode => 'Language Code (Hal: en-US, ko-KR)';

  @override
  String get labelName => 'Pangalan';

  @override
  String get labelNote => 'Tala';

  @override
  String get labelPOS => 'Bahagi ng Pananalita';

  @override
  String get labelRole => 'Papel';

  @override
  String get labelSentence => 'Pangungusap';

  @override
  String get labelSentenceCollection => 'Koleksyon ng Pangungusap';

  @override
  String get labelSentenceType => 'Uri ng Pangungusap';

  @override
  String get labelShowMemorized => 'Tapos na';

  @override
  String get labelType => 'Uri:';

  @override
  String get labelWord => 'Salita';

  @override
  String get labelWordbook => 'Wordbook';

  @override
  String get language => 'Wika';

  @override
  String get languageSettings => 'Mga setting ng wika';

  @override
  String get languageSettingsTitle => 'Mga Setting ng Wika';

  @override
  String get libTitleFirstMeeting => 'Unang Pagkikita';

  @override
  String get libTitleGreetings1 => 'Pagbati 1';

  @override
  String get libTitleNouns1 => 'Pangngalan 1';

  @override
  String get libTitleVerbs1 => 'Pandiwa 1';

  @override
  String get listen => 'Makinig';

  @override
  String get listening => 'Nakikinig...';

  @override
  String get loadingParticipants => 'Naglo-load ng mga Kalahok...';

  @override
  String get location => 'Lokasyon';

  @override
  String get login => 'Mag-login';

  @override
  String get logout => 'Mag-logout';

  @override
  String get logoutConfirmMessage =>
      'Sigurado ka bang gusto mong mag-logout sa kasalukuyang device?';

  @override
  String get logoutConfirmTitle => 'Mag-logout';

  @override
  String get male => 'Lalaki';

  @override
  String get manageParticipants => 'Pamahalaan ang mga Kalahok';

  @override
  String get manual => 'Manwal na Input';

  @override
  String get markAsStudied => 'Markahan bilang Napag-aralan';

  @override
  String get materialInfo => 'Impormasyon ng materyal';

  @override
  String get me => 'Ako';

  @override
  String get menuDeviceImport => 'Mag-import ng mga Materyales mula sa Device';

  @override
  String get menuHelp => 'Tulong';

  @override
  String get menuLanguageSettings => 'Mga Setting ng Wika';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get menuSelectMaterialSet => 'Pumili ng materyal sa pag-aaral';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get menuWebDownload => 'Manwal ng Gumagamit';

  @override
  String get metadataDialogTitle => 'Detalyadong Klasipikasyon';

  @override
  String get metadataFormType => 'Uri ng Balangkas';

  @override
  String get metadataRootWord => 'Salitang-ugat (Root Word)';

  @override
  String get micButtonTooltip => 'Simulan ang pagkilala ng boses';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Kasalukuyang Napiling Materyal: $name';
  }

  @override
  String get mode2Title => 'Balik-aral';

  @override
  String get mode3Next => 'Susunod';

  @override
  String get mode3Start => 'Simulan';

  @override
  String get mode3Stop => 'Tapusin';

  @override
  String get mode3TryAgain => 'Subukang Muli';

  @override
  String get mySentenceCollection => 'Aking Pangungusap';

  @override
  String get myWordbook => 'Aking Talasalitaan';

  @override
  String get neutral => 'Neutral';

  @override
  String get newSubjectName => 'Bagong Pamagat ng Aralin/Pangungusap';

  @override
  String get next => 'Susunod';

  @override
  String get noDialogueHistory => 'Walang kasaysayan ng dayalogo.';

  @override
  String get noInternetWarningMic =>
      'Walang koneksyon sa internet. Maaaring hindi posible ang pagkilala ng boses sa offline mode.';

  @override
  String get noInternetWarningTranslate =>
      'Walang koneksyon sa internet. Hindi magagamit ang function ng pagsasalin sa offline mode. Mangyaring gamitin ang review mode.';

  @override
  String get noMaterialsInCategory => 'Walang materyales sa kategoryang ito.';

  @override
  String get noParticipantsFound => 'Walang nakarehistrong kalahok.';

  @override
  String get noRecords => 'Walang tala para sa napiling wika';

  @override
  String get noStudyMaterial => 'Walang materyal sa pag-aaral.';

  @override
  String get noTextToPlay => 'Walang teksto na i-play';

  @override
  String get noTranslationToSave => 'Walang pagsasalin na i-save';

  @override
  String get noVoiceDetected => 'Walang boses na nakita';

  @override
  String get notSelected => '- Walang Napili -';

  @override
  String get onlineLibraryCheckInternet =>
      'Suriin ang iyong koneksyon sa internet o subukang muli sa ibang pagkakataon.';

  @override
  String get onlineLibraryLoadFailed => 'Nabigo sa pag-load ng mga materyales.';

  @override
  String get onlineLibraryNoMaterials => 'Walang materyales.';

  @override
  String get participantDeleted => 'Natanggal ang kalahok.';

  @override
  String get participantRename => 'Palitan ang Pangalan ng Kalahok';

  @override
  String get partner => 'Partner';

  @override
  String get partnerMode => 'Partner Mode';

  @override
  String get password => 'Password';

  @override
  String get passwordTooShort => 'Dapat umabot ng 6 na character ang password.';

  @override
  String get perfect => 'Perpekto!';

  @override
  String get personaFriend => 'Kaibigang Lokal';

  @override
  String get personaGuide => 'Gabay sa Paglalakbay';

  @override
  String get personaTeacher => 'Guro sa Ingles';

  @override
  String get playAgain => 'Maglaro Muli';

  @override
  String playbackFailed(String error) {
    return 'Nabigo ang pag-play: $error';
  }

  @override
  String get playing => 'Nagpe-play...';

  @override
  String get posAdjective => 'Pang-uri';

  @override
  String get posAdverb => 'Pang-abay';

  @override
  String get posConjunction => 'Pangatnig';

  @override
  String get posInterjection => 'Pandamdam';

  @override
  String get posNoun => 'Pangngalan';

  @override
  String get posPreposition => 'Pang-ukol';

  @override
  String get posPronoun => 'Panghalip';

  @override
  String get posVerb => 'Pandiwa';

  @override
  String get practiceModeTitle => 'Pagsasanay';

  @override
  String get practiceWordsOnly => 'Magsanay lamang ng mga salita';

  @override
  String progress(int current, int total) {
    return 'Progreso: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Ipakita ang Kamakailang Nilikhang $count';
  }

  @override
  String recognitionFailed(String error) {
    return 'Nabigo ang pagkilala sa boses: $error';
  }

  @override
  String get recognized => 'Natapos ang pagkilala';

  @override
  String get recognizedText => 'Nakilalang pagbigkas:';

  @override
  String get recordDeleted => 'Matagumpay na natanggal ang tala';

  @override
  String get refresh => 'I-refresh';

  @override
  String get reset => 'I-reset';

  @override
  String get resetPracticeHistory => 'I-reset ang kasaysayan ng pagsasanay';

  @override
  String get retry => 'Subukan muli?';

  @override
  String get reviewAll => 'Review Lahat';

  @override
  String reviewCount(int count) {
    return 'Binago nang $count beses';
  }

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Ikatlong Partido';

  @override
  String get roleUser => 'Gumagamit';

  @override
  String get save => 'I-save';

  @override
  String get saveData => 'I-save';

  @override
  String saveFailed(String error) {
    return 'Nabigong i-save: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'I-save ang mga pagsasalin mula sa search mode';

  @override
  String get saved => 'Na-save';

  @override
  String get saving => 'Nagsa-save...';

  @override
  String score(String score) {
    return 'Kawastuhan: $score%';
  }

  @override
  String get scoreLabel => 'Iskor';

  @override
  String get search => 'Hanapin';

  @override
  String get searchConditions => 'Mga Kondisyon sa Paghahanap';

  @override
  String get searchSentenceHint => 'Maghanap ng pangungusap...';

  @override
  String get searchWordHint => 'Maghanap ng salita...';

  @override
  String get sectionSentence => 'Seksyon ng Pangungusap';

  @override
  String get sectionSentences => 'Mga Pangungusap';

  @override
  String get sectionWord => 'Seksyon ng salita';

  @override
  String get sectionWords => 'Mga Salita';

  @override
  String get selectExistingSubject => 'Pumili ng kasalukuyang pamagat';

  @override
  String get selectMaterialPrompt =>
      'Mangyaring pumili ng materyales sa pag-aaral';

  @override
  String get selectMaterialSet => 'Pumili ng Materyales sa Pag-aaral';

  @override
  String get selectPOS => 'Pumili ng Bahagi ng Pananalita';

  @override
  String get selectParticipants => 'Piliin ang mga Kalahok';

  @override
  String get selectSentenceType => 'Pumili ng Uri ng Pangungusap';

  @override
  String get selectStudyMaterial => 'Pumili ng Materyales';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Pangungusap';

  @override
  String get signUp => 'Mag-sign Up';

  @override
  String get similarTextFound => 'May natagpuang katulad na teksto';

  @override
  String get skip => 'Laktawan';

  @override
  String get source => 'Pinagmulan:';

  @override
  String get sourceLanguage => 'Pinagmulang Wika';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Magsalita Ngayon!';

  @override
  String get speaker => 'Tagapagsalita';

  @override
  String get speakerSelect => 'Piliin ang Tagapagsalita';

  @override
  String get speakingPractice => 'Pagsasanay sa Pagsasalita';

  @override
  String get startChat => 'Simulan ang Chat';

  @override
  String get startPractice => 'Simulan ang Pagsasanay';

  @override
  String get startTutorial => 'Simulan ang Pasyal';

  @override
  String get startWarning => 'Babala';

  @override
  String get startsWith => 'Nagsisimula sa';

  @override
  String get statusCheckEmail =>
      'Pakisuyong kumpirmahin ang email upang makumpleto ang iyong pagpapatunay.';

  @override
  String statusDownloading(Object name) {
    return 'Nagda-download: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Nabigo ang pag-import: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name ay matagumpay na na-import';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Kinansela ang pag-login.';

  @override
  String statusLoginFailed(Object error) {
    return 'Nabigo ang pag-login: $error';
  }

  @override
  String get statusLoginSuccess => 'Matagumpay na naka-login.';

  @override
  String get statusLogoutSuccess => 'Naka-logout.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Nabigo ang pag-sign up: $error';
  }

  @override
  String get statusSigningUp => 'Nagsa-sign Up...';

  @override
  String get stopPractice => 'Itigil';

  @override
  String get studyComplete => 'Napag-aralan na';

  @override
  String studyRecords(int count) {
    return 'Mga Tala ($count)';
  }

  @override
  String get styleFormal => 'Pormal';

  @override
  String get styleInformal => 'Impormal';

  @override
  String get stylePolite => 'Magalang';

  @override
  String get styleSlang => 'Slang';

  @override
  String get subject => 'Paksa:';

  @override
  String get swapLanguages => 'Magpalit ng Wika';

  @override
  String get switchToAi => 'Lumipat sa AI Mode';

  @override
  String get switchToPartner => 'Lumipat sa Partner Mode';

  @override
  String get syncingData => 'Sini-sync ang data...';

  @override
  String get tabConversation => 'Usapan';

  @override
  String tabReview(int count) {
    return 'Balik-aral ($count)';
  }

  @override
  String get tabSentence => 'pangungusap';

  @override
  String get tabSpeaking => 'Pagsasalita';

  @override
  String tabStudyMaterial(int count) {
    return 'Materyales ($count)';
  }

  @override
  String get tabWord => 'salita';

  @override
  String get tagFormal => 'Pormal';

  @override
  String get tagSelection => 'Pagpili ng Tag';

  @override
  String get targetLanguage => 'Target na Wika';

  @override
  String get targetLanguageFilter => 'Target na Wika:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'Oras para mag-isip bago ipakita ang sagot.';

  @override
  String get thinkingTimeInterval => 'Pagitan ng Pag-iisip';

  @override
  String get timeUp => 'Tapos na ang oras!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Tag ng Pamagat (Collection)';

  @override
  String get tooltipDecrease => 'Bawasan';

  @override
  String get tooltipIncrease => 'Dagdagan';

  @override
  String get tooltipSearch => 'Maghanap';

  @override
  String get tooltipSpeaking => 'Pagsasalita';

  @override
  String get tooltipStudyReview => 'Pag-aaral+Pagsusuri';

  @override
  String totalRecords(int count) {
    return 'Kabuuang $count tala (Tingnan ang lahat)';
  }

  @override
  String get translate => 'Isalin';

  @override
  String get translating => 'Nagsasalin...';

  @override
  String get translation => 'Pagsasalin';

  @override
  String get translationComplete =>
      'Tapos na ang pagsasalin (kailangang i-save)';

  @override
  String translationFailed(String error) {
    return 'Nabigo ang pagsasalin: $error';
  }

  @override
  String get translationLimitExceeded => 'Lumampas sa limitasyon ng pagsasalin';

  @override
  String get translationLimitMessage =>
      'Naubos mo na ang iyong pang-araw-araw na libreng pagsasalin (5 beses).\\n\\nGusto mo bang manood ng ad upang agad na mag-refill ng 5 beses?';

  @override
  String get translationLoaded => 'Na-load ang naka-save na pagsasalin';

  @override
  String get translationRefilled =>
      'Ang bilang ng pagsasalin ay na-refill ng 5 beses!';

  @override
  String get translationResultHint => 'Resulta ng Pagsasalin - Maaaring i-edit';

  @override
  String get tryAgain => 'Subukan muli';

  @override
  String get tutorialAiChatDesc =>
      'Magsanay ng mga totoong pag-uusap gamit ang isang AI persona.';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialContextDesc =>
      'Magdagdag ng konteksto (hal. Umaga) upang makilala ang magkatulad na mga pangungusap.';

  @override
  String get tutorialContextTitle => 'Tag ng Konteksto';

  @override
  String get tutorialLangSettingsDesc =>
      'Itakda ang orihinal at target na wika para sa pagsasalin.';

  @override
  String get tutorialLangSettingsTitle => 'Mga Setting ng Wika';

  @override
  String get tutorialM1ToggleDesc =>
      'Lumipat sa pagitan ng word at sentence mode dito.';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM2DropdownDesc => 'Pumili ng mga materyales sa pag-aaral.';

  @override
  String get tutorialM2ImportDesc =>
      'Mag-import ng JSON file mula sa folder ng device.';

  @override
  String get tutorialM2ListDesc =>
      'Suriin ang iyong mga na-save na card at i-flip ang mga ito. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Listahan ng Pag-aaral';

  @override
  String get tutorialM2SearchDesc =>
      'Mabilis na hanapin sa pamamagitan ng paghahanap ng mga naka-save na salita at pangungusap.';

  @override
  String get tutorialM2SelectDesc =>
      'Pumili ng materyales o lumipat sa \'Balik-aralan Lahat\'.';

  @override
  String get tutorialM2SelectTitle => 'Pumili at Mag-filter';

  @override
  String get tutorialM3IntervalDesc =>
      'Ayusin ang oras ng paghihintay sa pagitan ng mga pangungusap.';

  @override
  String get tutorialM3IntervalTitle => 'Agwat';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc =>
      'Pumili ng set para sa pagsasanay sa pagsasalita.';

  @override
  String get tutorialM3SelectTitle => 'Pumili ng Materyales';

  @override
  String get tutorialM3StartDesc => 'I-tap ang play para magsimula.';

  @override
  String get tutorialM3StartTitle => 'Simulan';

  @override
  String get tutorialM3WordsDesc =>
      'Lagyan ng tsek para magsanay lamang ng mga naka-save na salita.';

  @override
  String get tutorialM3WordsTitle => 'Pagsasanay ng mga Salita';

  @override
  String get tutorialMicDesc => 'I-tap ang mic button para sa voice input.';

  @override
  String get tutorialMicTitle => 'Input ng Boses';

  @override
  String get tutorialSaveDesc =>
      'I-save ang iyong pagsasalin sa mga tala ng pag-aaral.';

  @override
  String get tutorialSaveTitle => 'I-save';

  @override
  String get tutorialSwapDesc =>
      'Pinapalitan ko ang aking wika ng wikang aking pinag-aaralan.';

  @override
  String get tutorialTabDesc =>
      'Maaari mong piliin ang nais na mode ng pag-aaral dito.';

  @override
  String get tutorialTapToContinue => 'I-tap upang magpatuloy';

  @override
  String get tutorialTransDesc => 'I-tap dito para isalin ang iyong teksto.';

  @override
  String get tutorialTransTitle => 'Isalin';

  @override
  String get typeExclamation => 'Padamdam';

  @override
  String get typeImperative => 'Pautos';

  @override
  String get typeQuestion => 'Tanong';

  @override
  String get typeStatement => 'Pahayag';

  @override
  String get usageLimitTitle => 'Limitado na Paggamit';

  @override
  String get useExistingText => 'Gamitin ang Umiiral';

  @override
  String get viewOnlineGuide => 'Tingnan ang Online Guide';

  @override
  String get voluntaryTranslations => 'Mga Boluntaryong Pagsasalin';

  @override
  String get watchAdAndRefill => 'Manood ng Ad at Mag-refill (+5 beses)';

  @override
  String get word => 'Salita';

  @override
  String get wordDefenseDesc =>
      'Ipagtanggol ang base sa pamamagitan ng pagsasabi ng salita bago makarating ang kaaway.';

  @override
  String get wordDefenseTitle => 'Word Defense';

  @override
  String get wordModeLabel => 'Word Mode';

  @override
  String get yourPronunciation => 'Ang iyong Pagbigkas';

  @override
  String get ttsUnsupportedNatively =>
      'Hindi sinusuportahan ng mga default na setting ng device na ito ang voice output sa wikang ito.';
}
