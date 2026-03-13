// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tagalog (`tl`).
class AppLocalizationsTl extends AppLocalizations {
  AppLocalizationsTl([String locale = 'tl']) : super(locale);

  @override
  String get basicWords => 'Basic na Imbakan ng Salita';

  @override
  String get inputLanguage => 'Wika ng Input';

  @override
  String get translationLanguage => 'Wika ng Pagsasalin';

  @override
  String get simplifiedGuidance =>
      'Agad na isalin ang pang-araw-araw na pag-uusap sa ibang wika! Itatala ng Talkie ang iyong buhay pangwika.';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get accuracy => 'Katumpakan';

  @override
  String get ttsMissing =>
      'Ang voice engine para sa wikang ito ay hindi naka-install sa iyong device.';

  @override
  String get ttsInstallGuide =>
      'Mangyaring i-install ang data ng wika sa Android Settings > Google TTS.';

  @override
  String get adLoading => 'Naglo-load ng ad. Subukan muli mamaya.';

  @override
  String get addNewSubject => 'Magdagdag ng bagong pamagat';

  @override
  String get addParticipant => 'Magdagdag ng Kalahok';

  @override
  String get addTagHint => 'Magdagdag ng tag...';

  @override
  String get alreadyHaveAccount => 'Mayroon ka nang account?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Awtomatikong Mag-play';

  @override
  String get basic => 'Basic';

  @override
  String get basicDefault => 'Basic';

  @override
  String get basicMaterialRepository =>
      'Basic na Imbakan ng Pangungusap/Salita';

  @override
  String get basicSentenceRepository => 'Basic na Imbakan ng Pangungusap';

  @override
  String get basicSentences => 'Basic na Imbakan ng Pangungusap';

  @override
  String get basicWordRepository => 'Basic na Imbakan ng Salita';

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
  String get chatEndMessage => 'Gusto mo bang tapusin ang pag-uusap?';

  @override
  String get chatEndTitle => 'Tapusin at I-save ang Pag-uusap';

  @override
  String chatFailed(Object error) {
    return 'Nabigo ang Chat: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Sipi mula sa pag-uusap ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Kasaysayan ng Pag-uusap';

  @override
  String get chatNew => 'Bagong Pag-uusap';

  @override
  String get chatNewChat => 'Bagong Chat';

  @override
  String get chatNoConversations => 'Wala pang pag-uusap';

  @override
  String get chatSaveAndExit => 'I-save at Lumabas';

  @override
  String get chatStartNewPrompt =>
      'Subukang magsimula ng bagong pag-uusap para sa pagsasanay!';

  @override
  String get chatTypeHint => 'I-type ang mensahe...';

  @override
  String get chatUntitled => 'Pag-uusap na Walang Pamagat';

  @override
  String get checking => 'Sinusuri...';

  @override
  String get clearAll => 'I-clear Lahat';

  @override
  String get confirm => 'Kumpirmahin';

  @override
  String get confirmDelete =>
      'Gusto mo bang i-delete ang tala na ito sa pag-aaral?';

  @override
  String get confirmDeleteConversation =>
      'Sigurado ka bang gusto mong burahin ang usapang ito?\n Hindi na ito maibabalik pa.';

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
  String get createNew => 'Magpatuloy gamit ang Bagong Pangungusap';

  @override
  String get currentLocation => 'Kasalukuyang Lokasyon';

  @override
  String get currentMaterialLabel => 'Kasalukuyang Piniling Materyal:';

  @override
  String get delete => 'I-delete';

  @override
  String deleteFailed(String error) {
    return 'Nabigong I-delete: $error';
  }

  @override
  String get deleteRecord => 'I-delete ang Record';

  @override
  String get dialogueQuestDesc =>
      'Magsanay sa pag-uusap sa pamamagitan ng pagsasadula. Pumili at sabihin ang naaangkop na sagot.';

  @override
  String get dialogueQuestTitle => 'Pagsasanay sa Pag-uusap';

  @override
  String get disambiguationPrompt => 'Aling kahulugan ang gusto mong isalin?';

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
  String get enterNewSubjectName => 'Ipasok ang bagong pamagat';

  @override
  String get enterSentenceHint => 'Magpasok ng pangungusap...';

  @override
  String get enterTextHint => 'Maglagay ng tekstong isasalin';

  @override
  String get enterTextToTranslate => 'Mag-type ng tekstong isasalin';

  @override
  String get enterWordHint => 'Magpasok ng salita...';

  @override
  String get error => 'Error';

  @override
  String get errorHateSpeech =>
      'Hindi maisasalin dahil naglalaman ito ng mapoot na pananalita.';

  @override
  String get errorOtherSafety =>
      'Tinanggihan ang pagsasalin ng AI safety policy.';

  @override
  String get errorProfanity =>
      'Hindi maisasalin dahil naglalaman ito ng kalapastanganan.';

  @override
  String get errorSelectCategory => 'Pumili muna ng salita o pangungusap!';

  @override
  String get errorSexualContent =>
      'Hindi maisasalin dahil naglalaman ito ng malaswang content.';

  @override
  String get errors => 'Mga Error:';

  @override
  String get female => 'Babae';

  @override
  String get file => 'File:';

  @override
  String get filterAll => 'Lahat';

  @override
  String get flip => 'Ipakita';

  @override
  String get formComparative => 'Pahambing';

  @override
  String get formInfinitive => 'Infinitive/Kasalukuyan';

  @override
  String get formPast => 'Nakaraan';

  @override
  String get formPastParticiple => 'Nakaraang Partisipyo';

  @override
  String get formPlural => 'Maramihan';

  @override
  String get formPositive => 'Positibo';

  @override
  String get formPresent => 'Kasalukuyan';

  @override
  String get formPresentParticiple => 'Present Participle (-ing)';

  @override
  String get formSingular => 'Isahan';

  @override
  String get formSuperlative => 'Pasukdol';

  @override
  String get formThirdPersonSingular => 'Pangatlong Panauhan na Isahan';

  @override
  String get gameModeDesc => 'Piliin ang game mode na pagsasanayan';

  @override
  String get gameModeTitle => 'Mode ng Laro';

  @override
  String get gameOver => 'Game Over';

  @override
  String get gender => 'Kasarian';

  @override
  String get labelFilterMaterial => 'Materyales';

  @override
  String get labelFilterTag => 'Mga Tag';

  @override
  String get generalTags => 'Pangkalahatang mga Tag';

  @override
  String get getMaterials => 'Kumuha ng Mga Materyal';

  @override
  String get good => 'Maganda';

  @override
  String get googleContinue => 'Magpatuloy sa Google';

  @override
  String get helpDialogueImportDesc =>
      'Mag-import ng buong set ng pag-uusap bilang JSON file.';

  @override
  String get helpDialogueImportDetails =>
      '• Istraktura ng JSON: Gumamit ng array na `dialogues` sa halip na `entries`\n• Awtomatikong Pag-recover: Na-recover ang pamagat ng pag-uusap, persona, at pagkakasunud-sunod ng mensahe.\n• Lokasyon: Lumalabas ang mga na-import na pag-uusap sa tab na \'Kasaysayan\' ng AI Chat Mode.';

  @override
  String get helpJsonDesc =>
      'Para mag-import ng materyal sa pag-aaral sa Mode 3 bilang isang JSON file, sundin ang format na ito:';

  @override
  String get helpJsonTypeDialogue => 'Dayalogo';

  @override
  String get helpJsonTypeSentence => 'Pangungusap';

  @override
  String get helpJsonTypeWord => 'Salita';

  @override
  String get helpMode1Desc => '음성을 인식하거나 텍스트를 입력하여 즉시 번역하고, 학습 리스트에 저장하세요.';

  @override
  String get helpMode1Details =>
      '• 언어 설정: 홈 화면 상단의 언어 버튼으로 내 언어와 학습 중인 언어를 확인하고 학습 언어를 변경할 수 있습니다.\n• 심플 입력: 중앙의 대형 마이크 및 텍스트 창을 통해 즉시 입력하세요.\n• 설정 확인: 입력이 끝나면 오른쪽의 파란색 체크 버튼을 누르세요. 상세 설정 창이 나타납니다.\n• 상세 설정: 나타난 다이얼로그에서 저장할 자료집, 주석(메모), 태그를 지정할 수 있습니다.\n• 지금 번역하기: 설정을 마친 후 초록색 번역 버튼을 누르면 인공지능이 즉시 번역을 수행합니다.\n• 자동 검색: 입력 중 유사한 기존 번역을 실시간으로 감지하여 보여줍니다.\n• 듣기 및 저장: 번역 결과 하단의 스피커 아이콘으로 발음을 듣고, \'데이터 저장\'을 통해 학습 리스트에 추가하세요.';

  @override
  String get helpMode2Desc =>
      'Pag-aralan ang mga naka-save na pangungusap at suriin kung kabisado mo na ang mga ito gamit ang awtomatikong feature na pagtatago.';

  @override
  String get helpMode2Details =>
      '• Pumili ng set ng aralin: Gamitin ang \'Pumili ng Set ng Aralin\' o \'Online Library\' sa menu (⋮) sa kanang itaas\n• Baliktarin ang card: Tingnan ang pagsasalin gamit ang \'Ipakita/Itago\'\n• Pakinggan: I-play ang pagbigkas gamit ang icon ng speaker\n• Kumpletuhin ang pag-aaral: Markahan bilang tapos na gamit ang check mark (V)\n• Tanggalin: Pindutin nang matagal (Long Click) ang card upang tanggalin ang talaan\n• Paghahanap at Filter: Suporta para sa search bar (real-time na smart search) at mga filter ng tag at panimulang letra';

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
      '• AI Chat: Magsanay ng tunay na pag-uusap sa persona sa menu na \'Chat\' sa ibabang tab bar\n• Mga Setting ng Persona: Malayang tukuyin ang kasarian, pangalan, at code ng wika ng ibang partido\n• GPS Sitwasyon: Inirerekomenda ang mga paksa ng pag-uusap na angkop para sa lokasyon sa pamamagitan ng pagkilala sa aking kasalukuyang lokasyon\n• 2 Wika: Ang sagot ng AI ay ipinapakita kasama ng pagsasalin upang mapakinabangan ang epekto ng pag-aaral\n• Pamamahala ng Talaan: Pag-filter ng nakaraang kasaysayan ng pag-uusap at pag-save ng mga partikular na mensahe sa pag-uusap bilang materyal sa pag-aaral';

  @override
  String get helpTabJson => 'Format ng JSON';

  @override
  String get helpTabModes => 'Paglalarawan ng Mode';

  @override
  String get helpTabTour => 'Mag-tour';

  @override
  String get helpTitle => 'Tulong at Gabay';

  @override
  String get helpTourDesc =>
      'Ginagabayan ka ng **Highlight Circle** sa mga pangunahing feature.\n(Hal: Maaari mong i-delete ang card na itinuturo ng **Highlight Circle** sa pamamagitan ng pagpindot nang matagal dito.)';

  @override
  String get hide => 'Itago';

  @override
  String importAdded(int count) {
    return 'Naidagdag: $count';
  }

  @override
  String get importComplete => 'Tapos na sa Pag-import';

  @override
  String get importDuplicateTitleError =>
      'Mayroon nang materyal na may parehong pamagat. Subukang baguhin ang pamagat.';

  @override
  String importErrorMessage(String error) {
    return 'Nabigong mag-import ng file:\\n$error';
  }

  @override
  String get importFailed => 'Nabigong Mag-import';

  @override
  String importFile(String fileName) {
    return 'File: $fileName';
  }

  @override
  String get importJsonFile => 'Mag-import ng JSON File';

  @override
  String get importJsonFilePrompt => 'Mangyaring mag-import ng JSON file';

  @override
  String importSkipped(int count) {
    return 'Nilaktawan: $count';
  }

  @override
  String importTotal(int count) {
    return 'Kabuuang: $count';
  }

  @override
  String get importing => 'Nag-i-import...';

  @override
  String get inputModeTitle => 'Input';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds segundo';
  }

  @override
  String get invalidEmail => 'Mangyaring maglagay ng valid na email.';

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
  String get labelSentenceCollection => 'Koleksyon ng mga Pangungusap';

  @override
  String get labelSentenceType => 'Uri ng Pangungusap';

  @override
  String get labelShowMemorized => 'Tapos na';

  @override
  String get labelType => 'Uri:';

  @override
  String get labelWord => 'Salita';

  @override
  String get labelWordbook => 'Talaan ng mga Salita';

  @override
  String get language => 'Wika';

  @override
  String get languageSettings => 'Mga Setting ng Wika';

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
  String get listen => 'Pakinggan';

  @override
  String get listening => 'Nakikinig...';

  @override
  String get loadingParticipants => 'Ikinakarga ang mga kalahok...';

  @override
  String get location => 'Lokasyon';

  @override
  String get login => 'Mag-login';

  @override
  String get logout => 'Mag-logout';

  @override
  String get logoutConfirmMessage =>
      'Sigurado ka bang gusto mong mag-logout sa device na ito?';

  @override
  String get logoutConfirmTitle => 'Mag-logout';

  @override
  String get male => 'Lalaki';

  @override
  String get manageParticipants => 'Pamahalaan ang mga Kalahok';

  @override
  String get manual => 'Manwal na Input';

  @override
  String get markAsStudied => 'Markahan Bilang Pinag-aralan';

  @override
  String get materialInfo => 'Impormasyon ng Materyal';

  @override
  String get me => 'Ako';

  @override
  String get menuDeviceImport => 'Mag-import ng materyal mula sa device';

  @override
  String get menuHelp => 'Tulong';

  @override
  String get menuLanguageSettings => 'Mga Setting ng Wika';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get menuSelectMaterialSet => 'Pumili ng set ng materyal sa pag-aaral';

  @override
  String get menuSettings => 'Mga Setting ng Wika';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get menuWebDownload => 'Homepage';

  @override
  String get metadataDialogTitle => 'Detalyadong Kategorya';

  @override
  String get metadataFormType => 'Uri ng Gramatika';

  @override
  String get metadataRootWord => 'Salitang-ugat';

  @override
  String get micButtonTooltip => 'Simulan ang pagkilala sa boses';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Kasalukuyang napiling set ng materyal: $name';
  }

  @override
  String get mode2Title => 'Pag-aaral';

  @override
  String get mode3Next => 'Susunod';

  @override
  String get mode3Start => 'Simulan';

  @override
  String get mode3Stop => 'Hentuan';

  @override
  String get mode3TryAgain => 'Subukang Muli';

  @override
  String get mySentenceCollection => 'Aking Koleksyon ng Pangungusap';

  @override
  String get myWordbook => 'Aking Aklat ng Salita';

  @override
  String get neutral => 'Neutral';

  @override
  String get newSubjectName => 'Bagong Pamagat ng Paksa/Pangungusap';

  @override
  String get next => 'Susunod';

  @override
  String get noDialogueHistory => 'Walang history ng dayalogo.';

  @override
  String get noInternetWarningMic =>
      'Walang koneksyon sa internet. Maaaring hindi gumana ang voice recognition offline.';

  @override
  String get noInternetWarningTranslate =>
      'Walang koneksyon sa internet. Hindi magagamit ang pagsasalin offline. Mangyaring gumamit ng review mode.';

  @override
  String get noMaterialsInCategory => 'Walang materyal sa kategoryang ito.';

  @override
  String get noParticipantsFound => 'Walang nakarehistrong kalahok.';

  @override
  String get noRecords => 'Walang tala sa pag-aaral para sa napiling wika';

  @override
  String get noStudyMaterial => 'Walang materyal sa pag-aaral.';

  @override
  String get noTextToPlay => 'Walang tekstong ipe-play';

  @override
  String get noTranslationToSave => 'Walang pagsasalin na ise-save';

  @override
  String get noVoiceDetected => 'Walang nakitang boses';

  @override
  String get notSelected => '- Walang Napili -';

  @override
  String get onlineLibraryCheckInternet =>
      'Suriin ang iyong koneksyon sa internet o subukang muli sa ibang pagkakataon.';

  @override
  String get onlineLibraryLoadFailed => 'Nabigo ang pagkarga ng materyal.';

  @override
  String get onlineLibraryNoMaterials => 'Walang materyal.';

  @override
  String get participantDeleted => 'Natanggal na ang kalahok.';

  @override
  String get participantRename => 'Palitan ang Pangalan ng Kalahok';

  @override
  String get partner => 'Kasosyo';

  @override
  String get partnerMode => 'Partner Mode';

  @override
  String get password => 'Password';

  @override
  String get passwordTooShort =>
      'Dapat ay hindi bababa sa 6 na character ang password.';

  @override
  String get perfect => 'Perpekto!';

  @override
  String get personaFriend => 'Kaibigan na Lokal';

  @override
  String get personaGuide => 'Tour Guide';

  @override
  String get personaTeacher => 'Guro sa Ingles';

  @override
  String get playAgain => 'Maglaro Muli';

  @override
  String playbackFailed(String error) {
    return 'Nabigong Mag-playback: $error';
  }

  @override
  String get playing => 'Nagpe-play...';

  @override
  String get posAdjective => 'Pang-uri';

  @override
  String get posAdverb => 'Pang-abay';

  @override
  String get posConjunction => 'Pang-ugnay';

  @override
  String get posInterjection => 'Pandamdam';

  @override
  String get posNoun => 'Pangngalan';

  @override
  String get posPreposition => 'Preposisyon';

  @override
  String get posPronoun => 'Panghalip';

  @override
  String get posVerb => 'Pandiwa';

  @override
  String get practiceModeTitle => 'Pagsasanay';

  @override
  String get practiceWordsOnly => 'Magsanay ng Mga Salita Lamang';

  @override
  String progress(int current, int total) {
    return 'Pag-unlad: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Tingnan ang $count Kamakailang Nilikha';
  }

  @override
  String recognitionFailed(String error) {
    return 'Nabigong Kilalanin ang Boses: $error';
  }

  @override
  String get recognized => 'Nakilala';

  @override
  String get recognizedText => 'Nakilalang Pagbigkas:';

  @override
  String get recordDeleted => 'Na-delete ang record';

  @override
  String get refresh => 'I-refresh';

  @override
  String get reset => 'I-reset';

  @override
  String get resetPracticeHistory => 'I-reset ang History ng Pagsasanay';

  @override
  String get retry => 'Subukan Muli?';

  @override
  String get reviewAll => 'Buong Pag-aaral';

  @override
  String reviewCount(int count) {
    return 'Pag-aaral $count beses';
  }

  @override
  String get reviewModeTitle => 'Pag-aaral';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Ikatlong Partido';

  @override
  String get roleUser => 'Gumagamit';

  @override
  String get save => 'I-save';

  @override
  String get saveData => 'I-save ang Data';

  @override
  String saveFailed(String error) {
    return 'Nabigong I-save: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Subukang i-save ang mga pagsasalin mula sa search mode';

  @override
  String get saved => 'Na-save';

  @override
  String get saving => 'Nagse-save...';

  @override
  String score(String score) {
    return 'Score: $score%';
  }

  @override
  String get scoreLabel => 'Iskor';

  @override
  String get search => 'Maghanap';

  @override
  String get searchConditions => 'Mga Kundisyon sa Paghahanap';

  @override
  String get searchSentenceHint => 'Maghanap ng pangungusap...';

  @override
  String get searchWordHint => 'Maghanap ng salita...';

  @override
  String get sectionSentence => 'Seksyon ng Pangungusap';

  @override
  String get sectionSentences => 'Mga Pangungusap';

  @override
  String get sectionWord => 'Seksyon ng Salita';

  @override
  String get sectionWords => 'Mga Salita';

  @override
  String get selectExistingSubject => 'Pumili ng kasalukuyang pamagat';

  @override
  String get selectMaterialPrompt => 'Pumili ng materyal sa pag-aaral';

  @override
  String get selectMaterialSet => 'Pumili ng set ng materyal sa pag-aaral';

  @override
  String get selectPOS => 'Pumili ng POS';

  @override
  String get selectParticipants => 'Pumili ng mga Kalahok';

  @override
  String get selectSentenceType => 'Pumili ng Uri ng Pangungusap';

  @override
  String get selectStudyMaterial => 'Pumili ng Materyal sa Pag-aaral';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Pangungusap';

  @override
  String get signUp => 'Mag-sign up';

  @override
  String get similarTextFound => 'May Natagpuang Magkatulad na Teksto';

  @override
  String get skip => 'Laktawan';

  @override
  String get source => 'Pinagmulan:';

  @override
  String get sourceLanguage => 'Source na Wika';

  @override
  String get sourceLanguageLabel => 'Aking Wika (Source)';

  @override
  String get speakNow => 'Magsalita Ngayon!';

  @override
  String get speaker => 'Tagapagsalita';

  @override
  String get speakerSelect => 'Pumili ng Tagapagsalita';

  @override
  String get speakingPractice => 'Pagsasanay sa Pagbigkas';

  @override
  String get startChat => 'Simulan ang Chat';

  @override
  String get startPractice => 'Simulan ang Pagsasanay';

  @override
  String get startTutorial => 'Simulan ang Tutorial';

  @override
  String get startWarning => 'Babala';

  @override
  String get startsWith => 'Nagsisimula sa';

  @override
  String get statusCheckEmail =>
      'Pakisuy ang iyong email para makumpleto ang verification.';

  @override
  String statusDownloading(Object name) {
    return 'Dina-download: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Nabigo ang pag-import: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return 'Matagumpay na nai-import ang $name';
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
  String get statusLoginSuccess => 'Matagumpay na nakapag-login.';

  @override
  String get statusLogoutSuccess => 'Nag-logout na.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Nabigo ang pag-sign up: $error';
  }

  @override
  String get statusSigningUp => 'Nag-sign up...';

  @override
  String get stopPractice => 'Hentuan ang Pagsasanay';

  @override
  String get studyComplete => 'Tapos na sa Pag-aaral';

  @override
  String studyRecords(int count) {
    return 'Mga Tala sa Pag-aaral ($count)';
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
  String get swapLanguages => 'Pagpalitin ang Mga Wika';

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
    return 'Pag-aaral ($count)';
  }

  @override
  String get tabSentence => 'Pangungusap';

  @override
  String get tabSpeaking => 'Magsalita';

  @override
  String tabStudyMaterial(int count) {
    return 'Materyal sa Pag-aaral ($count)';
  }

  @override
  String get tabWord => 'Salita';

  @override
  String get tagFormal => 'Pormal';

  @override
  String get tagSelection => 'Pagpili ng Tag';

  @override
  String get targetLanguage => 'Target na Wika';

  @override
  String get targetLanguageFilter => 'I-filter ang Target na Wika:';

  @override
  String get targetLanguageLabel => 'Wika sa Pag-aaral (Target)';

  @override
  String get thinkingTimeDesc =>
      'Ang oras para mag-isip bago ipakita ang tamang sagot.';

  @override
  String get thinkingTimeInterval => 'Pagitan ng Pag-play';

  @override
  String get timeUp => 'Tapos na ang Oras!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Tag ng Pamagat (Sarbey)';

  @override
  String get tooltipDecrease => 'Bawasan';

  @override
  String get tooltipIncrease => 'Dagdagan';

  @override
  String get tooltipSearch => 'Maghanap';

  @override
  String get tooltipSpeaking => 'Magsalita';

  @override
  String get tooltipStudyReview => 'Mag-aral+Mag-review';

  @override
  String totalRecords(int count) {
    return 'Kabuuang $count na record (Tingnan Lahat)';
  }

  @override
  String get translate => 'Isalin';

  @override
  String get translating => 'Isinasalin...';

  @override
  String get translation => 'Pagsasalin';

  @override
  String get translationComplete =>
      'Tapos na ang Pagsasalin (Kailangang I-save)';

  @override
  String translationFailed(String error) {
    return 'Nabigong Isalin: $error';
  }

  @override
  String get translationLimitExceeded => 'Lumampas sa limitasyon ng pagsasalin';

  @override
  String get translationLimitMessage =>
      'Naubos mo na ang lahat ng libreng pagsasalin sa araw na ito (5 beses).\\n\\nManood ng ad para agad na mapunan ang 5 beses?';

  @override
  String get translationLoaded => 'Na-load ang Naka-save na Pagsasalin';

  @override
  String get translationRefilled =>
      'Napunan na ang bilang ng pagsasalin nang 5 beses!';

  @override
  String get translationResultHint => 'Resulta ng Pagsasalin - Maaaring i-edit';

  @override
  String get tryAgain => 'Subukan Muli';

  @override
  String get tutorialAiChatDesc =>
      'Magsanay sa pag-uusap sa totoong buhay sa pamamagitan ng AI persona.';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialContextDesc =>
      'Kahit na pareho ang pangungusap, maaari mo itong i-save nang hiwalay kung isusulat mo ang sitwasyon (hal. Umaga, Gabi).';

  @override
  String get tutorialContextTitle => 'Tag ng Sitwasyon/Konteksto';

  @override
  String get tutorialLangSettingsDesc =>
      'Itakda ang source na wika at ang target na wika na isasalin.';

  @override
  String get tutorialLangSettingsTitle => 'Mga Setting ng Wika';

  @override
  String get tutorialM1ToggleDesc =>
      'Lumipat ng word at pangungusap mode dito.';

  @override
  String get tutorialM1ToggleTitle => 'Word/Pangungusap Mode';

  @override
  String get tutorialM2DropdownDesc =>
      'Maaari kang pumili ng materyal na pag-aaralan sa pamamagitan ng menu sa itaas.';

  @override
  String get tutorialM2ImportDesc =>
      'Mag-import ng JSON file mula sa folder ng device.';

  @override
  String get tutorialM2ListDesc =>
      'Maaari mong i-delete ang card na ito sa pamamagitan ng pagpindot nang matagal dito (Long Click). Suriin ang mga naka-save na pangungusap at i-flip ang mga ito.';

  @override
  String get tutorialM2ListTitle => 'Listahan ng Pag-aaral';

  @override
  String get tutorialM2SearchDesc =>
      'Maaari kang maghanap at mabilis na mahanap ang mga naka-save na salita at pangungusap.';

  @override
  String get tutorialM2SelectDesc =>
      'Pindutin ang icon ng set ng materyal (📚) sa itaas na app bar para pumili ng materyal na pag-aaralan.';

  @override
  String get tutorialM2SelectTitle => 'Pumili ng Materyal';

  @override
  String get tutorialM3IntervalDesc =>
      'Inaayos ang oras ng paghihintay sa pagitan ng mga pangungusap.';

  @override
  String get tutorialM3IntervalTitle => 'Itakda ang Interval';

  @override
  String get tutorialM3ResetDesc =>
      'I-reset ang pag-unlad at score ng accuracy para magsimula muli sa simula.';

  @override
  String get tutorialM3ResetTitle => 'I-reset ang History';

  @override
  String get tutorialM3SelectDesc =>
      'Pindutin ang icon ng set ng materyal (📚) sa itaas na app bar para pumili ng materyal na pagsasanayan.';

  @override
  String get tutorialM3SelectTitle => 'Pumili ng Materyal';

  @override
  String get tutorialM3StartDesc =>
      'Pindutin ang button na play para pakinggan ang boses ng katutubong tagapagsalita at sundin ito.';

  @override
  String get tutorialM3StartTitle => 'Simulan ang Pagsasanay';

  @override
  String get tutorialM3WordsDesc =>
      'Kung naka-check, magsanay lang ng mga naka-save na salita.';

  @override
  String get tutorialM3WordsTitle => 'Pagsasanay sa Salita';

  @override
  String get tutorialMicDesc =>
      'Maaari kang mag-input gamit ang boses sa pamamagitan ng pagpindot sa button ng mikropono.';

  @override
  String get tutorialMicTitle => 'Input ng Boses';

  @override
  String get tutorialSaveDesc =>
      'I-save ang isinalin na resulta sa iyong tala sa pag-aaral.';

  @override
  String get tutorialSaveTitle => 'I-save';

  @override
  String get tutorialSwapDesc =>
      'Pagpalitin ang aking wika at ang wika sa pag-aaral.';

  @override
  String get tutorialTabDesc =>
      'Dito maaari mong piliin ang gustong mode ng pag-aaral.';

  @override
  String get tutorialTapToContinue => 'I-tap ang screen para magpatuloy';

  @override
  String get tutorialTransDesc => 'Isinasalin ang tekstong in-input mo.';

  @override
  String get tutorialTransTitle => 'Isalin';

  @override
  String get typeExclamation => 'Bulalas';

  @override
  String get typeImperative => 'Pautos';

  @override
  String get typeQuestion => 'Tanong';

  @override
  String get typeStatement => 'Pahayag';

  @override
  String get usageLimitTitle => 'Naabot na ang Limitasyon';

  @override
  String get useExistingText => 'Gumamit ng Umiiral na Teksto';

  @override
  String get viewOnlineGuide => 'Tingnan ang Online na Gabay';

  @override
  String get voluntaryTranslations => 'Boluntaryong Pagsasalin';

  @override
  String get watchAdAndRefill => 'Manood ng Ad at Punan (+5 beses)';

  @override
  String get word => 'Salita';

  @override
  String get wordDefenseDesc =>
      'Sabihin ang salita para ipagtanggol ang base bago dumating ang kaaway.';

  @override
  String get wordDefenseTitle => 'Word Defense';

  @override
  String get wordModeLabel => 'Word Mode';

  @override
  String get yourPronunciation => 'Ang Pagbigkas Mo';

  @override
  String get ttsUnsupportedNatively =>
      'Hindi sinusuportahan ng mga default na setting ng device na ito ang output ng boses para sa wikang ito.';

  @override
  String get homeTab => 'Home';

  @override
  String get welcomeTitle => 'Maligayang pagdating sa Talkie!';

  @override
  String get welcomeDesc =>
      'Sa Talkie, agad kang makakapag-translate at walang limitasyong makakapag-aral sa pagitan ng kahit anong 80 wika.';

  @override
  String get welcomeButton => 'Magsimula';

  @override
  String get labelDetails => 'Mga Detalye';

  @override
  String get translationResult => 'Resulta ng Pagsasalin';

  @override
  String get inputContent => 'Ipinasok na Nilalaman';

  @override
  String get translateNow => 'Isalin Ngayon';

  @override
  String get tooltipSettingsConfirm => 'Kumpirmahin ang mga Setting';

  @override
  String get hintNoteExample =>
      'Hal: Konteksto, mga salitang magkasingtunog, atbp.';

  @override
  String get hintTagExample => 'Hal: Negosyo, Paglalakbay...';

  @override
  String get addNew => 'Magdagdag ng Bago';

  @override
  String get newNotebookTitle => 'Pamagat ng Bagong Notebook';

  @override
  String get enterNameHint => 'Ipasok ang pangalan';

  @override
  String get add => 'Idagdag';

  @override
  String get openSettings => 'Buksan ang mga Setting';

  @override
  String get helpNotebook =>
      'Pumili ng folder kung saan ilalagay ang mga isinalin.';

  @override
  String get helpNote =>
      'Malayang isulat ang kahulugan, halimbawa, o sitwasyon ng salita.';

  @override
  String get helpTag =>
      'Maglagay ng mga keyword para sa pag-uuri o paghahanap sa hinaharap.';
}
