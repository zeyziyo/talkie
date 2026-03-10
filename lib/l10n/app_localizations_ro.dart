// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get basicWords => 'Depozit de bază cu cuvinte';

  @override
  String get inputLanguage => '입력 언어';

  @override
  String get translationLanguage => '번역 언어';

  @override
  String get simplifiedGuidance =>
      '일상의 대화를 외국어로 순간 변환! Talkie가 당신의 언어 생활을 기록해 드립니다.';

  @override
  String get cancel => 'Anulare';

  @override
  String get accuracy => 'Acuratețe';

  @override
  String get ttsMissing =>
      'Motorul vocal pentru această limbă nu este instalat pe dispozitiv.';

  @override
  String get ttsInstallGuide =>
      'Instalează datele lingvistice corespunzătoare în Setări Android > Google TTS.';

  @override
  String get adLoading =>
      'Se încarcă anunțul. Te rugăm să încerci din nou mai târziu.';

  @override
  String get addNewSubject => 'Adăugați titlu nou';

  @override
  String get addParticipant => 'Adaugă participant';

  @override
  String get addTagHint => 'Adăugați etichetă...';

  @override
  String get alreadyHaveAccount => 'Ai deja un cont?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Redare automată';

  @override
  String get basic => 'Bază';

  @override
  String get basicDefault => 'Bază';

  @override
  String get basicMaterialRepository => 'Depozit de bază cu propoziții/cuvinte';

  @override
  String get basicSentenceRepository => 'Depozit de propoziții de bază';

  @override
  String get basicSentences => 'Depozit de bază cu propoziții';

  @override
  String get basicWordRepository => 'Depozit de cuvinte de bază';

  @override
  String get caseObject => 'Acuzativ';

  @override
  String get casePossessive => 'Genitiv';

  @override
  String get casePossessivePronoun => 'Pronume posesiv';

  @override
  String get caseReflexive => 'Reflexiv';

  @override
  String get caseSubject => 'Nominativ';

  @override
  String get chatAiChat => 'Conversație';

  @override
  String get chatAllConversations => 'Toate conversațiile';

  @override
  String get chatChoosePersona => 'Alege personajul';

  @override
  String get chatEndMessage => 'Sigur dorești să închei conversația?';

  @override
  String get chatEndTitle => 'Încheie și salvează conversația';

  @override
  String chatFailed(Object error) {
    return 'Conversație eșuată: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'Extras din conversație ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'Istoric conversații';

  @override
  String get chatNew => 'Conversație nouă';

  @override
  String get chatNewChat => 'Conversație nouă';

  @override
  String get chatNoConversations => 'Nu există conversații încă';

  @override
  String get chatSaveAndExit => 'Salvează și ieși';

  @override
  String get chatStartNewPrompt => 'Începe o nouă conversație pentru a exersa!';

  @override
  String get chatTypeHint => 'Scrie un mesaj...';

  @override
  String get chatUntitled => 'Conversație fără titlu';

  @override
  String get checking => 'Verificare...';

  @override
  String get clearAll => 'Șterge tot';

  @override
  String get confirm => 'Confirmă';

  @override
  String get confirmDelete => 'Sigur doriți să ștergeți această înregistrare?';

  @override
  String get confirmDeleteConversation =>
      'Sigur dorești să ștergi această conversație?\nConversațiile șterse nu pot fi recuperate.';

  @override
  String get confirmDeleteParticipant =>
      'Sigur dorești să ștergi acest participant?';

  @override
  String get contextTagHint =>
      'Descrie situația pentru a o identifica mai ușor ulterior';

  @override
  String get contextTagLabel =>
      'Context/Situație (opțional) - ex: Salut de dimineață, Politețe';

  @override
  String get copiedToClipboard => 'Copiat în clipboard!';

  @override
  String get copy => 'Copiază';

  @override
  String get correctAnswer => 'Răspuns Corect';

  @override
  String get createNew => 'Creează Nou';

  @override
  String get currentLocation => 'Locația actuală';

  @override
  String get currentMaterialLabel => 'Culegere selectată curent:';

  @override
  String get delete => 'Șterge';

  @override
  String deleteFailed(String error) {
    return 'Ștergere eșuată: $error';
  }

  @override
  String get deleteRecord => 'Șterge Înregistrare';

  @override
  String get dialogueQuestDesc =>
      'Exersează conversații prin joc de rol. Selectează răspunsurile potrivite și spune-le.';

  @override
  String get dialogueQuestTitle => 'Misiune dialog';

  @override
  String get disambiguationPrompt => 'Ce sens doriți să traducem?';

  @override
  String get disambiguationTitle => 'Selectați sensul';

  @override
  String get dontHaveAccount => 'Nu ai un cont?';

  @override
  String get editParticipant => 'Editează participant';

  @override
  String get email => 'Email';

  @override
  String get emailAlreadyInUse =>
      'Acest e-mail este deja înregistrat. Te rugăm să te autentifici sau să recuperezi parola.';

  @override
  String get enterNewSubjectName => 'Introduceți titlul nou';

  @override
  String get enterSentenceHint => 'Introdu o propoziție...';

  @override
  String get enterTextHint => 'Introdu textul de tradus';

  @override
  String get enterTextToTranslate => 'Introduceți text pentru traducere';

  @override
  String get enterWordHint => 'Introdu un cuvânt...';

  @override
  String get error => 'Eroare';

  @override
  String get errorHateSpeech =>
      'Nu se poate traduce deoarece conține discurs instigator la ură.';

  @override
  String get errorOtherSafety =>
      'Traducerea a fost refuzată de politica de siguranță AI.';

  @override
  String get errorProfanity =>
      'Nu se poate traduce deoarece conține cuvinte obscene.';

  @override
  String get errorSelectCategory =>
      'Selectează mai întâi un cuvânt sau o propoziție!';

  @override
  String get errorSexualContent =>
      'Nu se poate traduce deoarece conține conținut sexual explicit.';

  @override
  String get errors => 'Erori:';

  @override
  String get female => 'Feminin';

  @override
  String get file => 'Fișier:';

  @override
  String get filterAll => 'Toate';

  @override
  String get flip => 'Întoarce';

  @override
  String get formComparative => 'Comparativ';

  @override
  String get formInfinitive => 'Infinitiv/Prezent';

  @override
  String get formPast => 'Trecut';

  @override
  String get formPastParticiple => 'Participiu trecut';

  @override
  String get formPlural => 'Forma de plural';

  @override
  String get formPositive => 'Pozitiv';

  @override
  String get formPresent => 'Prezent';

  @override
  String get formPresentParticiple => 'Participiu prezent (ing)';

  @override
  String get formSingular => 'Forma de singular';

  @override
  String get formSuperlative => 'Superlativ';

  @override
  String get formThirdPersonSingular => 'Persoana a III-a singular';

  @override
  String get gameModeDesc =>
      'Selectează modul de joc pe care vrei să-l exersezi';

  @override
  String get gameModeTitle => 'Mod joc';

  @override
  String get gameOver => 'Joc terminat';

  @override
  String get gender => 'Gen';

  @override
  String get generalTags => 'Etichete generale';

  @override
  String get getMaterials => 'Obține materiale';

  @override
  String get good => 'Bine';

  @override
  String get googleContinue => 'Continuă cu Google';

  @override
  String get helpDialogueImportDesc =>
      'Importă seturi complete de dialoguri din fișiere JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc => 'Pentru import materiale în Mod 3, creați JSON:';

  @override
  String get helpJsonTypeDialogue => 'Dialog';

  @override
  String get helpJsonTypeSentence => 'Sentință';

  @override
  String get helpJsonTypeWord => 'Cuvânt';

  @override
  String get helpMode1Desc =>
      'Recunoaștere vocală, traducere și ascultare rezultat.';

  @override
  String get helpMode1Details =>
      '• Voce: Apasă microfon pentru start/stop\n• Text: Scrie direct pentru traducere\n• Auto-Căutare: Detectează propoziții similare\n• Traducere: Buton pentru traducere instantă\n• Ascultă: Icoană difuzor pentru TTS\n• Salvează: Adaugă în istoric\n• Șterge: Resetează tot (TODO: Translate)';

  @override
  String get helpMode2Desc =>
      'Recapitulare propoziții salvate cu ascundere traducere.';

  @override
  String get helpMode2Details =>
      '• Selectarea materialului: accesează \'Alege materialul de studiu\' sau \'Biblioteca online\' din meniul (⋮) din dreapta sus\n• Întoarce cardul: folosește \'Arată/Ascunde\' pentru a verifica traducerea\n• Ascultă: redă pronunția cu pictograma difuzorului\n• Finalizare studiu: marchează cu bifa (V) pentru a finaliza studiul\n• Șterge: apasă lung (Long Click) pe card pentru a șterge înregistrarea\n• Caută și filtrează: folosește bara de căutare (căutare inteligentă în timp real) și filtrele de etichete, litere de început';

  @override
  String get helpMode3Desc =>
      'Ascultă și repetă propoziții (Shadowing) pentru a-ți exersa pronunția.';

  @override
  String get helpMode3Details =>
      '• Selectare: Alege pachet\n• Interval: [-] [+] pauză (3s-60s)\n• Start/Stop: Control sesiune\n• Vorbește: Ascultă și repetă\n• Scor: Acuratețe (0-100)\n• Reîncearcă: Buton dacă vocea nu este detectată';

  @override
  String get helpModeChatDesc =>
      'Exersează conversații reale vorbind cu un personaj AI.';

  @override
  String get helpModeChatDetails =>
      '• Chat AI: Exersează conversații reale cu personaje.\n• Gestionarea participanților: Setează-ți limba și limba AI-ului pentru a evita nepotrivirile lingvistice.\n• Situații GPS: Creează situații de conversație naturale bazate pe locația ta curentă.\n• Păstrarea istoricului: Toate conversațiile sunt stocate în siguranță pe baza ID-ului, iar istoricul se păstrează chiar dacă schimbi numele. (TODO: Translate)';

  @override
  String get helpTabJson => 'Format JSON';

  @override
  String get helpTabModes => 'Moduri';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpTitle => 'Ajutor & Ghid';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Ascunde';

  @override
  String importAdded(int count) {
    return 'Adăugat: $count';
  }

  @override
  String get importComplete => 'Import Complet';

  @override
  String get importDuplicateTitleError =>
      'Există deja un material cu același titlu. Te rugăm să schimbi titlul și să încerci din nou.';

  @override
  String importErrorMessage(String error) {
    return 'Nu s-a putut importa fișierul:\\n$error';
  }

  @override
  String get importFailed => 'Import Eșuat';

  @override
  String importFile(String fileName) {
    return 'Fișier: $fileName';
  }

  @override
  String get importJsonFile => 'Import JSON';

  @override
  String get importJsonFilePrompt => 'Vă rugăm importați fișier JSON';

  @override
  String importSkipped(int count) {
    return 'Sărit: $count';
  }

  @override
  String importTotal(int count) {
    return 'Total: $count';
  }

  @override
  String get importing => 'Se importă...';

  @override
  String get inputModeTitle => 'Introducere';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds secunde';
  }

  @override
  String get invalidEmail => 'Introdu o adresă de email validă.';

  @override
  String get kakaoContinue => 'Continuă cu Kakao';

  @override
  String get labelLangCode => 'Cod limbă (ex: en-US, ko-KR)';

  @override
  String get labelName => 'Nume';

  @override
  String get labelNote => 'Notă';

  @override
  String get labelPOS => 'Parte de vorbire';

  @override
  String get labelRole => 'Rol';

  @override
  String get labelSentence => 'Sentință';

  @override
  String get labelSentenceCollection => 'Colecție de propoziții';

  @override
  String get labelSentenceType => 'Tip de propoziție';

  @override
  String get labelShowMemorized => 'Terminat';

  @override
  String get labelType => 'Tip:';

  @override
  String get labelWord => 'Cuvânt';

  @override
  String get labelWordbook => 'Culegere de cuvinte';

  @override
  String get language => 'Limbă';

  @override
  String get languageSettings => 'Setări limbă';

  @override
  String get languageSettingsTitle => 'Setări de limbă';

  @override
  String get libTitleFirstMeeting => 'Prima întâlnire';

  @override
  String get libTitleGreetings1 => 'Salutări 1';

  @override
  String get libTitleNouns1 => 'Substantive 1';

  @override
  String get libTitleVerbs1 => 'Verbe 1';

  @override
  String get listen => 'Ascultă';

  @override
  String get listening => 'Ascult...';

  @override
  String get loadingParticipants => 'Se încarcă participanții...';

  @override
  String get location => 'Locație';

  @override
  String get login => 'Autentificare';

  @override
  String get logout => 'Deconectare';

  @override
  String get logoutConfirmMessage =>
      'Sigur dorești să te deconectezi de pe acest dispozitiv?';

  @override
  String get logoutConfirmTitle => 'Deconectare';

  @override
  String get male => 'Masculin';

  @override
  String get manageParticipants => 'Gestionează participanți';

  @override
  String get manual => 'Introducere manuală';

  @override
  String get markAsStudied => 'Marchează ca Studiat';

  @override
  String get materialInfo => 'Informații material';

  @override
  String get me => 'Eu';

  @override
  String get menuDeviceImport => 'Importă materiale de pe dispozitiv';

  @override
  String get menuHelp => 'Ajutor';

  @override
  String get menuLanguageSettings => 'Setări limbă';

  @override
  String get menuOnlineLibrary => 'Bibliotecă online';

  @override
  String get menuSelectMaterialSet => 'Selectați un material de studiu';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Tutorial de utilizare';

  @override
  String get menuWebDownload => 'Manual de utilizare';

  @override
  String get metadataDialogTitle => 'Clasificare detaliată';

  @override
  String get metadataFormType => 'Forma gramaticală';

  @override
  String get metadataRootWord => 'Forma de bază (Root Word)';

  @override
  String get micButtonTooltip => 'Începe recunoașterea vocală';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Culegere selectată curent: $name';
  }

  @override
  String get mode2Title => 'Recapitulare';

  @override
  String get mode3Next => 'Următorul';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stop';

  @override
  String get mode3TryAgain => 'Încearcă din nou';

  @override
  String get mySentenceCollection => 'Colecția mea de fraze';

  @override
  String get myWordbook => 'Vocabularul meu';

  @override
  String get neutral => 'Neutru';

  @override
  String get newSubjectName => 'Titlu nou caiet/colecție';

  @override
  String get next => 'Următorul';

  @override
  String get noDialogueHistory => 'Nu există istoric de dialoguri.';

  @override
  String get noInternetWarningMic =>
      'Nu există conexiune la internet. Recunoașterea vocală ar putea să nu funcționeze offline.';

  @override
  String get noInternetWarningTranslate =>
      'Nu există conexiune la internet. Funcția de traducere nu este disponibilă offline. Te rugăm să folosești modul de revizuire.';

  @override
  String get noMaterialsInCategory =>
      'Nu există materiale în această categorie.';

  @override
  String get noParticipantsFound => 'Nu există participanți înregistrați.';

  @override
  String get noRecords => 'Nu există înregistrări pentru limba selectată';

  @override
  String get noStudyMaterial => 'Nu există material de studiu.';

  @override
  String get noTextToPlay => 'Nicio text de redat';

  @override
  String get noTranslationToSave => 'Nicio traducere de salvat';

  @override
  String get noVoiceDetected => 'Voce nedetectată';

  @override
  String get notSelected => '- Neselectat -';

  @override
  String get onlineLibraryCheckInternet =>
      'Verifică-ți conexiunea la internet sau încearcă din nou mai târziu.';

  @override
  String get onlineLibraryLoadFailed => 'Încărcarea materialelor a eșuat.';

  @override
  String get onlineLibraryNoMaterials => 'Nu există materiale.';

  @override
  String get participantDeleted => 'Participantul a fost șters.';

  @override
  String get participantRename => 'Redenumește participantul';

  @override
  String get partner => 'Partener';

  @override
  String get partnerMode => 'Mod partener';

  @override
  String get password => 'Parolă';

  @override
  String get passwordTooShort =>
      'Parola trebuie să aibă cel puțin 6 caractere.';

  @override
  String get perfect => 'Perfect!';

  @override
  String get personaFriend => 'Prieten local';

  @override
  String get personaGuide => 'Ghid turistic';

  @override
  String get personaTeacher => 'Profesor de engleză';

  @override
  String get playAgain => 'Joacă din nou';

  @override
  String playbackFailed(String error) {
    return 'Redare eșuată: $error';
  }

  @override
  String get playing => 'Redare...';

  @override
  String get posAdjective => 'Adjectiv';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posConjunction => 'Conjuncție';

  @override
  String get posInterjection => 'Interjecție';

  @override
  String get posNoun => 'Substantiv';

  @override
  String get posPreposition => 'Prepoziție';

  @override
  String get posPronoun => 'Pronume';

  @override
  String get posVerb => 'Verb';

  @override
  String get practiceModeTitle => 'Exersează';

  @override
  String get practiceWordsOnly => 'Exersează doar cuvinte';

  @override
  String progress(int current, int total) {
    return 'Progres: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'Vezi cele mai recente $count elemente create';
  }

  @override
  String recognitionFailed(String error) {
    return 'Recunoaștere vocală eșuată: $error';
  }

  @override
  String get recognized => 'Recunoaștere completă';

  @override
  String get recognizedText => 'Pronunție recunoscută:';

  @override
  String get recordDeleted => 'Înregistrare ștearsă cu succes';

  @override
  String get refresh => 'Reîmprospătare';

  @override
  String get reset => 'Resetează';

  @override
  String get resetPracticeHistory => 'Resetează istoricul de exerciții';

  @override
  String get retry => 'Încearcă din nou?';

  @override
  String get reviewAll => 'Revizuiește tot';

  @override
  String reviewCount(int count) {
    return 'Recapitulat de $count ori';
  }

  @override
  String get reviewModeTitle => 'Revizuire';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'Terț';

  @override
  String get roleUser => 'Utilizator';

  @override
  String get save => 'Salvare';

  @override
  String get saveData => 'Salvare';

  @override
  String saveFailed(String error) {
    return 'Salvare eșuată: $error';
  }

  @override
  String get saveTranslationsFromSearch =>
      'Vă rugăm să salvați traducerile din modul de căutare';

  @override
  String get saved => 'Salvat';

  @override
  String get saving => 'Salvare...';

  @override
  String score(String score) {
    return 'Acuratețe: $score%';
  }

  @override
  String get scoreLabel => 'Scor';

  @override
  String get search => 'Căutare';

  @override
  String get searchConditions => 'Condiții de căutare';

  @override
  String get searchSentenceHint => 'Caută propoziție...';

  @override
  String get searchWordHint => 'Caută cuvânt...';

  @override
  String get sectionSentence => 'Secțiunea de propoziții';

  @override
  String get sectionSentences => 'Fraze';

  @override
  String get sectionWord => 'Secțiune de cuvinte';

  @override
  String get sectionWords => 'Cuvinte';

  @override
  String get selectExistingSubject => 'Selectați titlu existent';

  @override
  String get selectMaterialPrompt => 'Vă rugăm selectați material de studiu';

  @override
  String get selectMaterialSet => 'Selectați setul de materiale de învățare';

  @override
  String get selectPOS => 'Selectează partea de vorbire';

  @override
  String get selectParticipants => 'Selectează participanți';

  @override
  String get selectSentenceType => 'Selectează tipul de propoziție';

  @override
  String get selectStudyMaterial => 'Selectare Material';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'Sentință';

  @override
  String get signUp => 'Înregistrare';

  @override
  String get similarTextFound => 'Text similar găsit';

  @override
  String get skip => 'Omite';

  @override
  String get source => 'Sursă:';

  @override
  String get sourceLanguage => 'Limbă Sursă';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'Vorbește acum!';

  @override
  String get speaker => 'Vorbitor';

  @override
  String get speakerSelect => 'Selectează vorbitorul';

  @override
  String get speakingPractice => 'Practică Vorbire';

  @override
  String get startChat => 'Începe conversația';

  @override
  String get startPractice => 'Începe Practica';

  @override
  String get startTutorial => 'Start Tur';

  @override
  String get startWarning => 'Avertisment';

  @override
  String get startsWith => 'Începe cu';

  @override
  String get statusCheckEmail =>
      'Verifică-ți emailul pentru a finaliza autentificarea.';

  @override
  String statusDownloading(Object name) {
    return 'Se descarcă: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'Importare eșuată: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name a fost importat cu succes';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'Autentificare anulată.';

  @override
  String statusLoginFailed(Object error) {
    return 'Autentificare eșuată: $error';
  }

  @override
  String get statusLoginSuccess => 'Autentificare reușită.';

  @override
  String get statusLogoutSuccess => 'Deconectare reușită.';

  @override
  String statusSignUpFailed(Object error) {
    return 'Înregistrare eșuată: $error';
  }

  @override
  String get statusSigningUp => 'Se înregistrează...';

  @override
  String get stopPractice => 'Oprește';

  @override
  String get studyComplete => 'Studiat';

  @override
  String studyRecords(int count) {
    return 'Înregistrări ($count)';
  }

  @override
  String get styleFormal => 'Formal';

  @override
  String get styleInformal => 'Informal';

  @override
  String get stylePolite => 'Politicos';

  @override
  String get styleSlang => 'Argou/Slang';

  @override
  String get subject => 'Subiect:';

  @override
  String get swapLanguages => 'Schimbă limbile';

  @override
  String get switchToAi => 'Trece la modul AI';

  @override
  String get switchToPartner => 'Trece la modul partener';

  @override
  String get syncingData => 'Se sincronizează datele...';

  @override
  String get tabConversation => 'Conversație';

  @override
  String tabReview(int count) {
    return 'Recapitulare ($count)';
  }

  @override
  String get tabSentence => 'propoziție';

  @override
  String get tabSpeaking => 'Vorbire';

  @override
  String tabStudyMaterial(int count) {
    return 'Material ($count)';
  }

  @override
  String get tabWord => 'cuvânt';

  @override
  String get tagFormal => 'Formal';

  @override
  String get tagSelection => 'Selectarea etichetelor';

  @override
  String get targetLanguage => 'Limbă Țintă';

  @override
  String get targetLanguageFilter => 'Filtru Limbă:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc =>
      'Timpul de gândire înainte de a dezvălui răspunsul corect.';

  @override
  String get thinkingTimeInterval => 'Întârziere de redare';

  @override
  String get timeUp => 'Timpul a expirat!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Etichetă titlu (culegere)';

  @override
  String get tooltipDecrease => 'Scădere';

  @override
  String get tooltipIncrease => 'Creștere';

  @override
  String get tooltipSearch => 'Căutare';

  @override
  String get tooltipSpeaking => 'Vorbire';

  @override
  String get tooltipStudyReview => 'Studiu+Revizuire';

  @override
  String totalRecords(int count) {
    return 'Total $count înregistrări (vezi tot)';
  }

  @override
  String get translate => 'Traducere';

  @override
  String get translating => 'Traducere...';

  @override
  String get translation => 'Traducere';

  @override
  String get translationComplete => 'Traducere completă (necesită salvare)';

  @override
  String translationFailed(String error) {
    return 'Traducere eșuată: $error';
  }

  @override
  String get translationLimitExceeded => 'Limită de traducere depășită';

  @override
  String get translationLimitMessage =>
      'Ai folosit toate traducerile gratuite zilnice (5).\\n\\nVrei să vizionezi un anunț pentru a reîncărca imediat 5?';

  @override
  String get translationLoaded => 'Traducere salvată încărcată';

  @override
  String get translationRefilled =>
      'Numărul de traduceri a fost reîncărcat cu 5!';

  @override
  String get translationResultHint =>
      'Rezultatul traducerii - poate fi modificat';

  @override
  String get tryAgain => 'Încearcă din nou';

  @override
  String get tutorialAiChatDesc =>
      'Exersează conversații reale cu personaje AI.';

  @override
  String get tutorialAiChatTitle => 'Chat AI';

  @override
  String get tutorialContextDesc =>
      'Adăugați context (ex. Dimineața) pentru a distinge propoziții similare.';

  @override
  String get tutorialContextTitle => 'Etichetă context';

  @override
  String get tutorialLangSettingsDesc =>
      'Setează limba sursă și limba țintă pentru traducere.';

  @override
  String get tutorialLangSettingsTitle => 'Setări de limbă';

  @override
  String get tutorialM1ToggleDesc =>
      'Comută între modurile cuvânt și propoziție aici.';

  @override
  String get tutorialM1ToggleTitle => 'Mod cuvânt/propoziție';

  @override
  String get tutorialM2DropdownDesc => 'Selectați materiale de studiu.';

  @override
  String get tutorialM2ImportDesc =>
      'Importați fișier JSON din folderul dispozitivului.';

  @override
  String get tutorialM2ListDesc =>
      'Verifică cardurile și întoarce-le. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Listă Studiu';

  @override
  String get tutorialM2SearchDesc =>
      'Caută și găsește rapid cuvinte și propoziții salvate.';

  @override
  String get tutorialM2SelectDesc =>
      'Alege materiale sau \'Recapitulare Tot\'.';

  @override
  String get tutorialM2SelectTitle => 'Selectare & Filtru';

  @override
  String get tutorialM3IntervalDesc => 'Reglează timpul de așteptare';

  @override
  String get tutorialM3IntervalTitle => 'Setează intervalul';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Alege un set pentru practică.';

  @override
  String get tutorialM3SelectTitle => 'Selectare Material';

  @override
  String get tutorialM3StartDesc => 'Apasă play pentru a începe.';

  @override
  String get tutorialM3StartTitle => 'Start';

  @override
  String get tutorialM3WordsDesc =>
      'Dacă este bifat, vei exersa doar cuvintele salvate.';

  @override
  String get tutorialM3WordsTitle => 'Exerciții cu cuvinte';

  @override
  String get tutorialMicDesc => 'Apasă microfonul pentru intrare vocală.';

  @override
  String get tutorialMicTitle => 'Intrare Vocală';

  @override
  String get tutorialSaveDesc => 'Salvează traducerea în înregistrări.';

  @override
  String get tutorialSaveTitle => 'Salvare';

  @override
  String get tutorialSwapDesc => 'Îmi schimb limba cu limba pe care o învăț.';

  @override
  String get tutorialTabDesc => 'Aici puteți selecta modul de învățare dorit.';

  @override
  String get tutorialTapToContinue => 'Atingeți pentru a continua';

  @override
  String get tutorialTransDesc => 'Apasă aici pentru a traduce textul.';

  @override
  String get tutorialTransTitle => 'Traducere';

  @override
  String get typeExclamation => 'Exclamativă';

  @override
  String get typeImperative => 'Imperativă';

  @override
  String get typeQuestion => 'Întrebare';

  @override
  String get typeStatement => 'Afirmativă';

  @override
  String get usageLimitTitle => 'Limita atinsă';

  @override
  String get useExistingText => 'Folosește Existent';

  @override
  String get viewOnlineGuide => 'Vezi ghidul online';

  @override
  String get voluntaryTranslations => 'Traduceri voluntare';

  @override
  String get watchAdAndRefill => 'Vezi un anunț și reîncarcă (+5)';

  @override
  String get word => 'Cuvânt';

  @override
  String get wordDefenseDesc =>
      'Spune cuvintele pentru a apăra baza înainte ca inamicii să ajungă.';

  @override
  String get wordDefenseTitle => 'Apărarea cuvintelor';

  @override
  String get wordModeLabel => 'Mod cuvânt';

  @override
  String get yourPronunciation => 'Pronunția ta';

  @override
  String get ttsUnsupportedNatively =>
      'Dispozitivul nu acceptă redarea vocală pentru această limbă în setările implicite.';

  @override
  String get welcomeTitle => 'Bun venit la Talkie!';

  @override
  String get welcomeDesc =>
      'Talkie suportă peste 80 de limbi și este un instrument inteligent de traducere pentru călători. Îmbunătățiți-vă abilitățile de vorbire cu AI Chat!';

  @override
  String get welcomeButton => 'Începe';
}
