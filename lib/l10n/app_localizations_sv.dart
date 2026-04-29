// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get accuracy => 'Noggrannhet';

  @override
  String get adLoading => 'Laddar annons. Försök igen om en stund.';

  @override
  String get add => 'Lägg till';

  @override
  String get addNew => 'Lägg till ny';

  @override
  String get addNewSubject => 'Lägg till nytt namn';

  @override
  String get addTagHint => 'Lägg till tagg...';

  @override
  String get alreadyHaveAccount => 'Har du redan ett konto?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'Autospela';

  @override
  String get basic => 'Grundläggande';

  @override
  String get basicDefault => 'Grundläggande';

  @override
  String get basicMaterialRepository =>
      'Grundläggande databas för meningar/ord';

  @override
  String get basicSentenceRepository => 'Grundläggande meningslista';

  @override
  String get basicSentences => 'Grundläggande meningsförråd';

  @override
  String get basicWordRepository => 'Grundläggande ordlista';

  @override
  String get basicWords => 'Grundläggande ordlista';

  @override
  String get cancel => 'Avbryt';

  @override
  String get caseObject => 'Objekt';

  @override
  String get casePossessive => 'Possessiv';

  @override
  String get casePossessivePronoun => 'Possessivt pronomen';

  @override
  String get caseReflexive => 'Reflexivt';

  @override
  String get caseSubject => 'Subjekt';

  @override
  String get checking => 'Kontrollerar...';

  @override
  String get clearAll => 'Rensa allt';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get confirmDelete => 'Är du säker på att du vill ta bort denna post?';

  @override
  String get contextTagHint =>
      'Skriv en beskrivning för att lättare skilja dem åt senare';

  @override
  String get contextTagLabel =>
      'Kontext/Situation (valfritt) - T.ex. Morgonhälsning, Formellt språk';

  @override
  String get copiedToClipboard => 'Kopierat till urklipp!';

  @override
  String get copy => 'Kopiera';

  @override
  String get correctAnswer => 'Rätt Svar';

  @override
  String get createNew => 'Skapa Ny';

  @override
  String get currentLocation => 'Nuvarande plats';

  @override
  String get currentMaterialLabel => 'Vald samling:';

  @override
  String get delete => 'Ta bort';

  @override
  String deleteFailed(String error) {
    return 'Borttagning misslyckades: $error';
  }

  @override
  String get deleteRecord => 'Ta bort post';

  @override
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => 'Har du inget konto?';

  @override
  String get email => 'E-post';

  @override
  String get emailAlreadyInUse =>
      'E-postadressen är redan registrerad. Logga in eller använd Återställ lösenord.';

  @override
  String get enterNameHint => 'Ange ett namn';

  @override
  String get enterNewSubjectName => 'Ange nytt namn';

  @override
  String get enterSentenceHint => 'Skriv en mening...';

  @override
  String get enterTextHint => 'Ange texten som ska översättas';

  @override
  String get enterTextToTranslate => 'Skriv text att översätta';

  @override
  String get enterWordHint => 'Skriv ett ord...';

  @override
  String get error => 'Fel';

  @override
  String get errorHateSpeech =>
      'Innehåller hatpropaganda och kan inte översättas.';

  @override
  String get errorOtherSafety =>
      'Översättningen nekades av AI:s säkerhetspolicy.';

  @override
  String get errorQuotaExceeded => '서버 사용량이 많아 번역이 지연되고 있습니다. 잠시 후 다시 시도해 주세요.';

  @override
  String get errorSafetyPolicy => 'AI 안전 정책으로 인해 번역이 제한되었습니다.';

  @override
  String get errorProfanity => 'Innehåller svordomar och kan inte översättas.';

  @override
  String get errorSelectCategory => 'Välj ett ord eller en mening först!';

  @override
  String get errorSexualContent =>
      'Innehåller sexuellt innehåll och kan inte översättas.';

  @override
  String get errors => 'Fel:';

  @override
  String get extractedText => 'Hittad text';

  @override
  String get female => 'Kvinna';

  @override
  String get file => 'Fil:';

  @override
  String get filterAll => 'Alla';

  @override
  String get flip => 'Vänd';

  @override
  String get formComparative => 'Komparativ';

  @override
  String get formInfinitive => 'Infinitiv/Grundform';

  @override
  String get formPast => 'Förfluten tid';

  @override
  String get formPastParticiple => 'Perfektparticip';

  @override
  String get formPlural => 'Plural';

  @override
  String get formPositive => 'Positiv';

  @override
  String get formPresent => 'Presens';

  @override
  String get formPresentParticiple => 'Presensparticip (-ing)';

  @override
  String get formSingular => 'Singular';

  @override
  String get formSuperlative => 'Superlativ';

  @override
  String get formThirdPersonSingular => 'Tredje person singular';

  @override
  String get gameModeDesc => 'Välj ett spelläge att öva på';

  @override
  String get gameModeTitle => 'Spelläge';

  @override
  String get gameOver => 'Spelet är slut';

  @override
  String get gender => 'Kön';

  @override
  String get generalTags => 'Allmänna taggar';

  @override
  String get getMaterials => 'Hämta material';

  @override
  String get good => 'Bra';

  @override
  String get googleContinue => 'Fortsätt med Google';

  @override
  String get helpJsonDesc => 'För import i Läge 3, skapa JSON:';

  @override
  String get helpJsonTypeSentence => 'Mening (Sentence)';

  @override
  String get helpJsonTypeWord => 'Ord (Word)';

  @override
  String get helpMode1Desc =>
      'Börja språkinlärningen på det mest intuitiva sättet med en premium 3D-mikrofon och en stor tangentbordsikon.';

  @override
  String get helpMode1Details =>
      '• Språkinställningar: Kontrollera ditt språk och språket du lär dig med språkknappen högst upp på startskärmen, och ändra inlärningsspråket.\n• Enkel inmatning: Mata in direkt via den stora mikrofonen och textfönstret i mitten.\n• Kontrollera inställningarna: När du är klar med inmatningen trycker du på den blå bockmarkeringen till höger. Fönstret med detaljerade inställningar visas.\n• Detaljerade inställningar: I dialogrutan som visas kan du ange materialboken, kommentarer (anteckningar) och taggar som ska sparas.\n• Översätt nu: När du har slutfört inställningarna trycker du på den gröna översättningsknappen så utförs översättningen omedelbart av artificiell intelligens.\n• Automatisk sökning: Identifierar och visar liknande befintliga översättningar i realtid under inmatningen.\n• Lyssna och spara: Lyssna på uttalet med högtalarikonen längst ner i översättningsresultatet och lägg till det i inlärningslistan genom \'Spara data\'.';

  @override
  String get helpMode2Desc =>
      'Repetera sparade meningar med dold översättning.';

  @override
  String get helpMode2Details =>
      '• Välj material: Använd menyn (⋮) uppe till höger för att välja \'Välj studiematerial\' eller \'Online materialarkiv\'\n• Vänd kort: Kontrollera översättningen med \'Visa/Dölj\'\n• Lyssna: Spela upp uttal med högtalarikonen\n• Färdig med inlärning: Markera som färdig med en bock (V)\n• Radera: Ta bort poster genom att trycka länge (Long Click) på kortet\n• Sök och filtrera: Stöd för sökfält (smartsökning i realtid) och taggar, filter för begynnelsebokstav';

  @override
  String get helpMode3Desc =>
      'Öva ditt uttal genom att lyssna på och upprepa meningar (skuggning).';

  @override
  String get helpMode3Details =>
      '• Välj: Välj paket\n• Intervall: [-] [+] väntetid (3s-60s)\n• Start/Stopp: Kontrollera session\n• Tala: Lyssna och upprepa\n• Poäng: Noggrannhet (0-100)\n• Försök: Knapp om röst ej hittas';

  @override
  String get helpNote =>
      'Skriv fritt ner ordets betydelse, exempelmeningar, situationer etc.';

  @override
  String get helpNotebook =>
      'Välj mappen där du vill spara de översatta resultaten.';

  @override
  String get helpTabJson => 'JSON-format';

  @override
  String get helpTabModes => 'Lägen';

  @override
  String get helpTabQuickStart => 'Snabbstart';

  @override
  String get helpTabTour => 'Tur';

  @override
  String get helpTag => 'Ange sökord för att senare kategorisera eller söka.';

  @override
  String get helpTitle => 'Hjälp & Guide';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'Dölj';

  @override
  String get hintNoteExample => 'Ex: Kontext, homonymer etc.';

  @override
  String get hintTagExample => 'Ex: Affärer, Resor...';

  @override
  String get homeTab => 'Översätt';

  @override
  String importAdded(int count) {
    return 'Tillagd: $count';
  }

  @override
  String get importComplete => 'Import Klar';

  @override
  String get importDuplicateTitleError =>
      'En resurs med samma namn finns redan. Försök igen efter att ha ändrat namnet.';

  @override
  String importErrorMessage(String error) {
    return 'Kunde inte importera fil:\\n$error';
  }

  @override
  String get importFailed => 'Import Misslyckades';

  @override
  String importFile(String fileName) {
    return 'Fil: $fileName';
  }

  @override
  String importFolderSuccess(num files, num entries) {
    return '$files filer, $entries poster importerade.';
  }

  @override
  String get importJsonFile => 'Importera JSON';

  @override
  String get importJsonFilePrompt => 'Vänligen importera JSON fil';

  @override
  String importSkipped(int count) {
    return 'Hoppade över: $count';
  }

  @override
  String get importSourceFile => 'Enkel JSON-fil';

  @override
  String get importSourceFolder => 'Mapp (språkspecifik biblioteksstruktur)';

  @override
  String get importSourceTitle => 'Välj importkälla';

  @override
  String get importSourceZip => 'ZIP-fil (komprimerad mapp)';

  @override
  String importTotal(int count) {
    return 'Totalt: $count';
  }

  @override
  String get importing => 'Importerar...';

  @override
  String get inputContent => 'Innehåll att översätta';

  @override
  String get inputLanguage => 'Inputspråk';

  @override
  String get inputModeTitle => 'Inmatning';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervall: ${seconds}s';
  }

  @override
  String get invalidEmail => 'Ange en giltig e-postadress.';

  @override
  String get kakaoContinue => 'Fortsätt med Kakao';

  @override
  String get labelDetails => 'Detaljerade inställningar';

  @override
  String get labelFilterMaterial => 'Material';

  @override
  String get labelFilterTag => 'Taggar';

  @override
  String get labelLangCode => 'Språkkod (t.ex. en-US, ko-KR)';

  @override
  String get labelNote => 'Anteckning';

  @override
  String get labelPOS => 'Ordkategori';

  @override
  String get labelSentence => 'Mening';

  @override
  String get labelSentenceCollection => 'Meningssamling';

  @override
  String get labelSentenceType => 'Menings typ';

  @override
  String get labelShowMemorized => 'Klar';

  @override
  String get labelType => 'Typ:';

  @override
  String get labelWord => 'Ord';

  @override
  String get labelWordbook => 'Ordlista';

  @override
  String get language => 'Språk';

  @override
  String get languageSettings => 'Språkinställningar';

  @override
  String get languageSettingsTitle => 'Språkinställningar';

  @override
  String get libTitleFirstMeeting => 'Första mötet';

  @override
  String get libTitleGreetings1 => 'Hälsningar 1';

  @override
  String get libTitleNouns1 => 'Substantiv 1';

  @override
  String get libTitleVerbs1 => 'Verb 1';

  @override
  String get listen => 'Lyssna';

  @override
  String get listening => 'Lyssnar...';

  @override
  String get location => 'Plats';

  @override
  String get login => 'Logga in';

  @override
  String get logout => 'Logga ut';

  @override
  String get logoutConfirmMessage => 'Vill du logga ut från den här enheten?';

  @override
  String get logoutConfirmTitle => 'Logga ut';

  @override
  String get male => 'Man';

  @override
  String get manual => 'Manuell inmatning';

  @override
  String get markAsStudied => 'Markera som Studerad';

  @override
  String get materialInfo => 'Materialinfo';

  @override
  String get menuDeviceImport => 'Importera material från enheten';

  @override
  String get menuHelp => 'Hjälp';

  @override
  String get menuLanguageSettings => 'Språkinställningar';

  @override
  String get menuOnlineLibrary => 'Onlinebibliotek';

  @override
  String get menuSelectMaterialSet => 'Välj ett studiematerial';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'Användarhandledning';

  @override
  String get menuWebDownload => 'Användarmanual';

  @override
  String get metadataDialogTitle => 'Detaljerad kategorisering';

  @override
  String get metadataFormType => 'Grammatisk form';

  @override
  String get metadataRootWord => 'Grundform (Root Word)';

  @override
  String get micButtonTooltip => 'Starta röstigenkänning';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Vald samling: $name';
  }

  @override
  String get mode2Title => 'Repetition';

  @override
  String get mode3Next => 'Nästa';

  @override
  String get mode3Start => 'Starta';

  @override
  String get mode3Stop => 'Stopp';

  @override
  String get mode3TryAgain => 'Försök igen';

  @override
  String get mySentenceCollection => 'Min frasbok';

  @override
  String get myWordbook => 'Min ordlista';

  @override
  String get neutral => 'Neutral';

  @override
  String get newNotebookTitle => 'Namn på ny anteckningsbok';

  @override
  String get newSubjectName => 'Nytt ämnesnamn/meningssamling';

  @override
  String get next => 'Nästa';

  @override
  String get noDataForLanguage =>
      'Ingen läromedel för det valda språket finns i den lokala databasen. Ladda ner material eller välj ett annat språk.';

  @override
  String get noMaterialsInCategory =>
      'Det finns inga resurser i den här kategorin.';

  @override
  String get noRecords => 'Inga poster för valt språk';

  @override
  String get noStudyMaterial => 'Inget studiematerial.';

  @override
  String get noTextToPlay => 'Ingen text att spela';

  @override
  String get noTranslationToSave => 'Ingen översättning att spara';

  @override
  String get noVoiceDetected => 'Ingen röst upptäckt';

  @override
  String get notSelected => '- Inget valt -';

  @override
  String get noteGuidance =>
      'Där du anger ytterligare information för en mer exakt översättning';

  @override
  String get onlineLibraryCheckInternet =>
      'Kontrollera din internetanslutning eller försök igen senare.';

  @override
  String get onlineLibraryLoadFailed => 'Det gick inte att läsa in resurserna.';

  @override
  String get onlineLibraryNoMaterials => 'Inga resurser tillgängliga.';

  @override
  String get openSettings => 'Öppna inställningar';

  @override
  String get password => 'Lösenord';

  @override
  String get passwordTooShort => 'Lösenordet måste vara minst 6 tecken.';

  @override
  String get perfect => 'Perfekt!';

  @override
  String get pickGallery => 'Välj från galleri';

  @override
  String get playAgain => 'Spela igen';

  @override
  String playbackFailed(String error) {
    return 'Uppspelning misslyckades: $error';
  }

  @override
  String get playing => 'Spelar...';

  @override
  String get posAdjective => 'Adjektiv';

  @override
  String get posAdverb => 'Adverb';

  @override
  String get posArticle => 'Artikel';

  @override
  String get posConjunction => 'Konjunktion';

  @override
  String get posInterjection => 'Interjektion';

  @override
  String get posNoun => 'Substantiv';

  @override
  String get posParticle => 'Partikel';

  @override
  String get posPreposition => 'Preposition';

  @override
  String get posPronoun => 'Pronomen';

  @override
  String get posVerb => 'Verb';

  @override
  String get practiceModeTitle => 'Övning';

  @override
  String get practiceWordsOnly => 'Öva bara ord';

  @override
  String get processing => 'Bearbetar...';

  @override
  String progress(int current, int total) {
    return 'Framsteg: $current / $total';
  }

  @override
  String get quickStartStep1Desc =>
      'Gå till Meny > Språkinställningar och välj först ditt språk och inlärningsspråk.';

  @override
  String get quickStartStep1Title => '1. Ställ in språk';

  @override
  String get quickStartStep2Desc =>
      'Skapa dina egna studiekort i följande ordning: Inmatning (mikrofon/tangentbord) -> Översättning -> Spara.';

  @override
  String get quickStartStep2Title => '2. Grundläggande flöde';

  @override
  String get quickStartStep3Desc =>
      'Review translated words and sentences in your study list, and practice speaking directly in the pronunciation practice tab.';

  @override
  String get quickStartStep3Title => '3. Använd lägen';

  @override
  String recentNItems(int count) {
    return 'Visa de $count senast skapade';
  }

  @override
  String recognitionFailed(String error) {
    return 'Taligenkänning misslyckades: $error';
  }

  @override
  String get recognized => 'Igenkänning klar';

  @override
  String get recognizedText => 'Igenkänd text:';

  @override
  String get recordDeleted => 'Post borttagen';

  @override
  String get refresh => 'Uppdatera';

  @override
  String get requestTranslation => 'Begär översättning';

  @override
  String get reset => 'Återställ';

  @override
  String get resetPracticeHistory => 'Återställ övningshistorik';

  @override
  String get retry => 'Försök igen?';

  @override
  String get reviewAll => 'Repetera allt';

  @override
  String reviewCount(int count) {
    return 'Repeterad $count gånger';
  }

  @override
  String get reviewModeTitle => 'Repetition';

  @override
  String get save => 'Spara';

  @override
  String get saveAsSentence => 'Spara som mening';

  @override
  String get saveAsWord => 'Spara som ord';

  @override
  String get saveData => 'Spara';

  @override
  String saveFailed(String error) {
    return 'Spara misslyckades: $error';
  }

  @override
  String get saveToHistory => 'Spara i skanningshistorik';

  @override
  String get saveTranslationsFromSearch =>
      'Vänligen spara översättningar från sökläge';

  @override
  String get saved => 'Sparad';

  @override
  String get originalText => '원본 텍스트';

  @override
  String get saving => 'Sparar...';

  @override
  String get scanInstructions => 'Välj en bild att skanna';

  @override
  String get scanNoMatch =>
      '사진에서 설정된 학습 언어와 일치하는 텍스트를 찾을 수 없습니다. 언어 설정을 확인해 보세요.';

  @override
  String get scanNotSupported =>
      'Skanning stöds inte för detta språk. OCR stöder för närvarande endast latinska, kinesiska, devanagari (t.ex. hindi), japanska och koreanska tecken.';

  @override
  String get scanLabel => 'Skanna';

  @override
  String score(String score) {
    return 'Noggrannhet: $score%';
  }

  @override
  String get scoreLabel => 'Poäng';

  @override
  String get search => 'Sök';

  @override
  String get searchConditions => 'Sökvillkor';

  @override
  String get searchSentenceHint => 'Sök mening...';

  @override
  String get searchWordHint => 'Sök ord...';

  @override
  String get sectionSentence => 'Meningsavsnitt';

  @override
  String get sectionSentences => 'Meningar';

  @override
  String get sectionWord => 'Ordavsnitt';

  @override
  String get sectionWords => 'Ord';

  @override
  String get selectExistingSubject => 'Välj befintligt namn';

  @override
  String get selectMaterialPrompt => 'Vänligen välj studiematerial';

  @override
  String get selectMaterialSet => 'Välj läromedel';

  @override
  String get selectPOS => 'Välj ordklass';

  @override
  String get selectStudyMaterial => 'Välj Material';

  @override
  String get sentence => 'Mening';

  @override
  String get signUp => 'Registrera dig';

  @override
  String get simplifiedGuidance =>
      'Konvertera vardagliga konversationer till ett främmande språk på ett ögonblick! Talkie kommer att registrera ditt språkliv.';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get startTutorial => 'Starta Tur';

  @override
  String get startsWith => 'Börjar med';

  @override
  String get statusCheckEmail =>
      'Vänligen verifiera din e-postadress för att slutföra autentiseringen.';

  @override
  String statusDownloading(String name) {
    return 'Laddar ner: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return 'Importen misslyckades: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name importerades';
  }

  @override
  String statusLoginFailed(String error) {
    return 'Inloggning misslyckades: $error';
  }

  @override
  String get statusLoginSuccess => 'Inloggning lyckades.';

  @override
  String get statusLogoutSuccess => 'Du har loggats ut.';

  @override
  String statusRequestFailed(String error) {
    return 'Översättningsförfrågan misslyckades: $error';
  }

  @override
  String get statusRequestSuccess => 'Översättningsförfrågan har slutförts.';

  @override
  String get stopPractice => 'Stoppa';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'Det valda materialet stöder inte det nuvarande inlärningsspråket ($targetLang) och kan inte sparas lokalt. Vill du begära en översättning?';
  }

  @override
  String get studyLangNotFoundTitle => 'Språket stöds inte för inlärning';

  @override
  String get styleFormal => 'Formalitet';

  @override
  String get styleInformal => 'Informell';

  @override
  String get stylePolite => 'Hövlig';

  @override
  String get styleSlang => 'Slang';

  @override
  String get swapLanguages => 'Byt språk';

  @override
  String get syncingData => 'Synkroniserar data...';

  @override
  String tabReview(int count) {
    return 'Repetition ($count)';
  }

  @override
  String get tabSentence => 'döma';

  @override
  String get tabSpeaking => 'Tala';

  @override
  String tabStudyMaterial(int count) {
    return 'Material ($count)';
  }

  @override
  String get tabWord => 'ord';

  @override
  String get tagFormal => 'Formellt språk';

  @override
  String get tagSelection => 'Välj tagg';

  @override
  String get targetLanguage => 'Målspråk';

  @override
  String get targetLanguageFilter => 'Målspråk Filter:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'Tiden att tänka efter innan svaret avslöjas.';

  @override
  String get thinkingTimeInterval => 'Tänketid';

  @override
  String get timeUp => 'Tiden är ute!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'Rubriktagg (Samling)';

  @override
  String get tooltipDecrease => 'Minska';

  @override
  String get tooltipIncrease => 'Öka';

  @override
  String get tooltipSearch => 'Sök';

  @override
  String get tooltipSettingsConfirm => 'Bekräfta inställningar';

  @override
  String get tooltipSpeaking => 'Tal';

  @override
  String get tooltipStudyReview => 'Studie+Repetition';

  @override
  String totalRecords(int count) {
    return 'Totalt $count poster (visa alla)';
  }

  @override
  String get translate => 'Översätt';

  @override
  String get translateNow => 'Översätt nu';

  @override
  String get translating => 'Översätter...';

  @override
  String get translation => 'Översättning';

  @override
  String get translationComplete => 'Översättning klar (spara krävs)';

  @override
  String translationFailed(String error) {
    return 'Översättning misslyckades: $error';
  }

  @override
  String get translationLanguage => 'Översättningsspråk';

  @override
  String get translationLimitExceeded =>
      'Översättningsgränsen har överskridits';

  @override
  String get translationLimitMessage =>
      'Du har använt alla dina dagliga kostnadsfria översättningar (5).\n\nVill du se en annons för att omedelbart fylla på med 5 till?';

  @override
  String get translationLoaded => 'Sparad översättning laddad';

  @override
  String get translationRefilled => 'Du har fyllt på med 5 översättningar!';

  @override
  String get translationResult => 'Översättningsresultat';

  @override
  String get translationResultHint => 'Översättningsresultat - kan redigeras';

  @override
  String get tryAgain => 'Försök igen';

  @override
  String get ttsInstallGuide =>
      'Installera språkdata under Android-inställningar > Google TTS.';

  @override
  String get ttsMissing =>
      'Den här språkets röstmotor är inte installerad på enheten.';

  @override
  String get ttsUnsupportedNatively =>
      'Den här enheten har inte stöd för röstutmatning för det här språket i sina standardinställningar.';

  @override
  String get tutorialContextDesc =>
      'Lägg till kontext (t.ex. Morgon) för att skilja liknande meningar åt.';

  @override
  String get tutorialContextTitle => 'Kontexttagg';

  @override
  String get tutorialLangSettingsDesc =>
      'Ställ in originalspråket och målspråket för översättning.';

  @override
  String get tutorialLangSettingsTitle => 'Språkinställningar';

  @override
  String get tutorialM1ToggleDesc => 'Växla mellan ord- och meningsläge här.';

  @override
  String get tutorialM1ToggleTitle => 'Ord-/meningsläge';

  @override
  String get tutorialM2DropdownDesc => 'Välj studiematerial.';

  @override
  String get tutorialM2ImportDesc => 'Importera JSON-fil från enhetsmapp.';

  @override
  String get tutorialM2ListDesc =>
      'Kolla kort och vänd dem. (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'Studielista';

  @override
  String get tutorialM2SearchDesc =>
      'Sök efter sparade ord och meningar för att snabbt hitta dem.';

  @override
  String get tutorialM2SelectDesc => 'Välj material eller \'Repetera Alla\'.';

  @override
  String get tutorialM2SelectTitle => 'Välj & Filter';

  @override
  String get tutorialM3IntervalDesc => 'Justera väntetid mellan meningar.';

  @override
  String get tutorialM3IntervalTitle => 'Intervall';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'Välj set för talövning.';

  @override
  String get tutorialM3SelectTitle => 'Välj Material';

  @override
  String get tutorialM3StartDesc => 'Tryck play för att börja.';

  @override
  String get tutorialM3StartTitle => 'Starta';

  @override
  String get tutorialM3WordsDesc => 'Markera för att bara öva på sparade ord.';

  @override
  String get tutorialM3WordsTitle => 'Öva ord';

  @override
  String get tutorialMicDesc => 'Tryck på mikrofonen för röstinmatning.';

  @override
  String get tutorialMicTitle => 'Röstinmatning';

  @override
  String get tutorialSaveDesc => 'Spara din översättning.';

  @override
  String get tutorialSaveTitle => 'Spara';

  @override
  String get tutorialSwapDesc =>
      'Jag byter ut mitt språk mot det språk jag lär mig.';

  @override
  String get tutorialTabDesc => 'Här kan du välja önskat inlärningsläge.';

  @override
  String get tutorialTapToContinue => 'Tryck för att fortsätta';

  @override
  String get tutorialTransDesc => 'Tryck här för att översätta text.';

  @override
  String get tutorialTransTitle => 'Översätt';

  @override
  String get typeExclamation => 'Utropsmening';

  @override
  String get typeIdiom => 'Idiom';

  @override
  String get typeImperative => 'Imperativ';

  @override
  String get typeProverb => 'Ordspråk';

  @override
  String get typeQuestion => 'Fråga';

  @override
  String get typeStatement => 'Påstående';

  @override
  String get usageLimitTitle => 'Användningsgräns nådd';

  @override
  String get useExistingText => 'Använd Befintlig';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => 'Visa onlineguide';

  @override
  String get voluntaryTranslations => 'Frivilliga översättningar';

  @override
  String get watchAdAndRefill => 'Titta på annons och fyll på (+5)';

  @override
  String get welcomeButton => 'Kom igång';

  @override
  String get welcomeDesc =>
      'Välkommen till Talkie! Vi stöder alla 80+ språk i världen med 100 % integritet och erbjuder en perfekt inlärningsupplevelse med ny premium 3D-design och optimerad prestanda.';

  @override
  String get welcomeTitle => 'Välkommen till Talkie!';

  @override
  String get word => 'Ord';

  @override
  String get wordDefenseDesc =>
      'Försvara basen genom att säga ordet innan fienden anländer.';

  @override
  String get wordDefenseTitle => 'Ordförsvar';

  @override
  String get wordModeLabel => 'Ord-läge';

  @override
  String get yourPronunciation => 'Ditt uttal';
}
