// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get helpTitle => 'Ndihmë & Udhëzime';

  @override
  String get helpTabModes => 'Përshkrimi i Modit';

  @override
  String get helpTabJson => 'Formati JSON';

  @override
  String get helpTabTour => 'Bëni një shëtitje';

  @override
  String get helpMode1Desc =>
      'Njihni zërin për të përkthyer dhe dëgjoni rezultatin.';

  @override
  String get helpMode1Details =>
      '• Cilësimet e gjuhës: Ndryshoni gjuhën duke shtypur ikonat lart/poshtë\n• Ndërroni Fjalë/Fjali: Ndërroni modalitetin\n• Hyrja zanore: Shtypni ikonën e mikrofonit për të filluar/ndaluar dëgjimin\n• Hyrja e tekstit: Shkruani drejtpërdrejt për të përkthyer\n• Kërkimi automatik: Zbuloni fjali ekzistuese të ngjashme\n• Përkthimi: Përktheni menjëherë duke shtypur butonin e përkthimit\n• Dëgjimi: Luaj me TTS përmes ikonës së altoparlantit\n• Ruajtja: Shto një rekord me \'Ruaj të dhënat\'\n• Fshirja: Rivendosni hyrjen';

  @override
  String get helpMode2Desc =>
      'Rishikoni fjalitë e ruajtura dhe kontrolloni nëse i mbani mend me funksionin e fshehjes automatike.';

  @override
  String get helpMode2Details =>
      '• Zgjidhni materialin: Zgjidhni një libër burim specifik ose \'Rishikim të plotë\'\n• Kthejeni kartën: Kontrolloni përkthimin me \'Shfaq/Fshih\' (kontrolli automatik i mësimit)\n• Dëgjimi: Luaj TTS të fjalive\n• Mësimi i përfunduar: Përfundoni mësimin me një shenjë tik (V)\n• Fshirja: Fshini regjistrimet duke shtypur gjatë kartën\n• Kushtet e kërkimit: Filtro sipas etiketave, artikujve të fundit ose shkronjave fillestare';

  @override
  String get helpMode3Desc =>
      'Ushtroni shqiptimin duke dëgjuar dhe duke përsëritur fjalitë (Hijezimi).';

  @override
  String get helpMode3Details =>
      '• Zgjidhni materialin: Zgjidhni librin e burimeve për të studiuar\n• Vendosni intervalin: Rregulloni kohën e pritjes midis fjalive me butonat [-] [+](3 sekonda deri në 60 sekonda)\n• Fillimi/Ndalo: Kontrolloni seancën e hijezimit\n• Të folurit: Dëgjoni zërin dhe përsëriteni\n• Reagimet: Shfaqni rezultatin e saktësisë (0-100) dhe ngjyrat\n• Kushtet e kërkimit: Filtro objektivat e praktikës sipas etiketës, artikujve të fundit ose shkronjave fillestare';

  @override
  String get helpModeChatDesc =>
      'Ushtroni bisedat e jetës reale duke biseduar me një personazh AI.';

  @override
  String get helpModeChatDetails =>
      '• Biseda AI: Ushtroni bisedën duke folur në gjuhën tuaj\n• Multi-Personazh: Ndryshoni gjininë/gjuhën/emrin e palës tjetër me menunë mbi flluskën e të folurit\n• Shto partner: Shto një bashkëbisedues të ri (i panjohur) me butonin +\n• GPS: Sitcom i bazuar në vendndodhjen aktuale\n• Ruajtja automatike: Përkthimi dhe ruajtja automatike e përmbajtjes së bisedës';

  @override
  String get helpJsonDesc =>
      'Për të importuar materialet e studimit për t\'u përdorur në Modalitetin 3 si një skedar JSON, ndiqni formatin e mëposhtëm:';

  @override
  String get helpDialogueImportDesc =>
      'Importoni një grup të tërë dialogësh si një skedar JSON.';

  @override
  String get helpDialogueImportDetails =>
      '• Struktura JSON: Përdorni një varg `dialogues` në vend të `entries`\n• Rikuperimi automatik: Titulli i dialogut, personazhi dhe rendi i mesazheve restaurohen.\n• Vendndodhja: Dialogët e importuar shfaqen në skedën \'Histori\' të modalitetit të bisedës AI.';

  @override
  String get helpTourDesc =>
      '**Rrethi i theksuar** do t\'ju udhëzojë për funksionet kryesore.\n(Për shembull: Ju mund të fshini një kartë duke shtypur gjatë kartën e treguar nga **rrethi i theksuar**.)';

  @override
  String get partnerMode => 'Modaliteti i partnerit';

  @override
  String get manual => 'Hyrje manuale';

  @override
  String get speaker => 'Folësi';

  @override
  String get switchToAi => 'Kalo në Modalitetin AI';

  @override
  String get switchToPartner => 'Kalo në Modalitetin e Partnerit';

  @override
  String get currentLocation => 'Vendndodhja aktuale';

  @override
  String get location => 'Vendndodhja';

  @override
  String get partner => 'Partner';

  @override
  String get me => 'Unë';

  @override
  String get currentMaterialLabel => 'Libri burim aktual i zgjedhur:';

  @override
  String get basicMaterialRepository => 'Depo bazë e fjalive/fjalëve';

  @override
  String get word => 'Fjalë';

  @override
  String get sentence => 'Fjali';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Rishikim ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Material studimi ($count)';
  }

  @override
  String get mode2Title => 'Rishikim';

  @override
  String get search => 'Kërko';

  @override
  String get translate => 'Përkthe';

  @override
  String get listen => 'Dëgjo';

  @override
  String get saveData => 'Ruaj të dhënat';

  @override
  String get saved => 'U ruajt me sukses';

  @override
  String get delete => 'Fshi';

  @override
  String get materialInfo => 'Informacione materiale';

  @override
  String get cancel => 'Anulo';

  @override
  String get confirm => 'Konfirmo';

  @override
  String get refresh => 'Rifresko';

  @override
  String studyRecords(int count) {
    return 'Regjistrime studimi ($count)';
  }

  @override
  String get targetLanguageFilter => 'Filtri i gjuhës së synuar:';

  @override
  String get noRecords => 'Nuk ka regjistrime studimi për gjuhën e zgjedhur';

  @override
  String get saveTranslationsFromSearch =>
      'Provoje të ruash përkthimet nga modaliteti i kërkimit';

  @override
  String get flip => 'Shfaq';

  @override
  String get hide => 'Fshih';

  @override
  String get deleteRecord => 'Fshi regjistrimin';

  @override
  String get confirmDelete =>
      'A jeni i sigurt që dëshironi ta fshini këtë regjistrim studimi?';

  @override
  String get recordDeleted => 'Regjistrimi u fshi';

  @override
  String deleteFailed(String error) {
    return 'Fshirja dështoi: $error';
  }

  @override
  String get importJsonFile => 'Importo skedarin JSON';

  @override
  String get importing => 'Duke importuar...';

  @override
  String get importComplete => 'Importimi u përfundua';

  @override
  String get importFailed => 'Importimi dështoi';

  @override
  String importFile(String fileName) {
    return 'Skedari: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Totali: $count';
  }

  @override
  String importAdded(int count) {
    return 'U shtua: $count';
  }

  @override
  String importSkipped(int count) {
    return 'U anashkalua: $count';
  }

  @override
  String get errors => 'Gabime:';

  @override
  String get error => 'Gabim';

  @override
  String importErrorMessage(String error) {
    return 'Importimi i skedarit dështoi:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Zgjidh materialin e studimit';

  @override
  String get subject => 'Subjekti:';

  @override
  String get source => 'Burimi:';

  @override
  String get file => 'Skedari:';

  @override
  String progress(int current, int total) {
    return 'Progresi: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Ju lutemi importoni një skedar JSON';

  @override
  String get selectMaterialPrompt => 'Ju lutemi zgjidhni materialin e studimit';

  @override
  String get studyComplete => 'Studimi u përfundua';

  @override
  String get markAsStudied => 'Shënoje si të studiuar';

  @override
  String get listening => 'Duke dëgjuar...';

  @override
  String get recognized => 'U njoh';

  @override
  String recognitionFailed(String error) {
    return 'Njohja e zërit dështoi: $error';
  }

  @override
  String get checking => 'Duke kontrolluar...';

  @override
  String get translating => 'Duke përkthyer...';

  @override
  String get translationComplete => 'Përkthimi u përfundua (duhet të ruhet)';

  @override
  String get translationLoaded => 'Përkthimi i ruajtur u ngarkua';

  @override
  String translationFailed(String error) {
    return 'Përkthimi dështoi: $error';
  }

  @override
  String get enterTextToTranslate => 'Vendosni tekstin për ta përkthyer';

  @override
  String get saving => 'Duke ruajtur...';

  @override
  String get noTranslationToSave => 'Nuk ka përkthim për të ruajtur';

  @override
  String saveFailed(String error) {
    return 'Ruajtja dështoi: $error';
  }

  @override
  String get playing => 'Duke luajtur...';

  @override
  String get noTextToPlay => 'Nuk ka tekst për të luajtur';

  @override
  String playbackFailed(String error) {
    return 'Luajtja dështoi: $error';
  }

  @override
  String get sourceLanguage => 'Gjuha burimore';

  @override
  String get targetLanguage => 'Gjuha e synuar';

  @override
  String get similarTextFound => 'U gjet tekst i ngjashëm';

  @override
  String get useExistingText => 'Përdorni tekstin ekzistues';

  @override
  String get createNew => 'Vazhdo me një fjali të re';

  @override
  String reviewCount(int count) {
    return 'Rishikuar $count herë';
  }

  @override
  String get tabSpeaking => 'Të folurit';

  @override
  String get speakingPractice => 'Ushtrim i të folurit';

  @override
  String intervalSeconds(int seconds) {
    return 'Intervali: $seconds sekonda';
  }

  @override
  String get yourPronunciation => 'Shqiptimi juaj';

  @override
  String get correctAnswer => 'Përgjigje e saktë';

  @override
  String score(String score) {
    return 'Saktësia: $score%';
  }

  @override
  String get perfect => 'E përkryer!';

  @override
  String get good => 'Mirë';

  @override
  String get tryAgain => 'Provoje përsëri';

  @override
  String get startPractice => 'Fillo praktikën';

  @override
  String get stopPractice => 'Ndalo praktikën';

  @override
  String get startTutorial => 'Fillo udhëzuesin';

  @override
  String get tutorialMicTitle => 'Hyrja zanore';

  @override
  String get tutorialMicDesc =>
      'Mund të shtypni butonin e mikrofonit për të vendosur me zë.';

  @override
  String get tutorialTabDesc =>
      'Këtu mund të zgjidhni modalitetin e dëshiruar të studimit.';

  @override
  String get tutorialTapToContinue => 'Shtypni ekranin për të vazhduar';

  @override
  String get tutorialTransTitle => 'Përktheje';

  @override
  String get tutorialTransDesc => 'Përktheni tekstin e vendosur.';

  @override
  String get tutorialSaveTitle => 'Ruaje';

  @override
  String get tutorialSaveDesc =>
      'Ruajeni rezultatin e përkthyer në regjistrin e studimit.';

  @override
  String get tutorialM2SelectTitle => 'Zgjidhni Materialin';

  @override
  String get tutorialM2SelectDesc =>
      'Shtypni ikonën e librit burim (📚) në shiritin e aplikacionit të sipërm për të zgjedhur materialin për të studiuar.';

  @override
  String get tutorialM2ListTitle => 'Lista e Studimit';

  @override
  String get tutorialM2ListDesc =>
      'Ju mund ta fshini këtë kartë duke e shtypur gjatë (Shtypni Gjatë). Kontrolloni dhe ktheni fjalinë e ruajtur.';

  @override
  String get tutorialM3SelectTitle => 'Zgjidhni Materialin';

  @override
  String get tutorialM3SelectDesc =>
      'Shtypni ikonën e librit burim (📚) në shiritin e aplikacionit të sipërm për të zgjedhur materialin për të ushtruar.';

  @override
  String get tutorialM3IntervalTitle => 'Vendosni Intervalin';

  @override
  String get tutorialM3IntervalDesc =>
      'Rregulloni kohën e pritjes midis fjalive.';

  @override
  String get tutorialM3StartTitle => 'Fillo Praktikën';

  @override
  String get tutorialM3StartDesc =>
      'Shtypni butonin e luajtjes për të dëgjuar zërin e folësit amtar dhe përsëriteni.';

  @override
  String get startWarning => 'Paralajmërim';

  @override
  String get noVoiceDetected => 'Nuk u zbulua asnjë zë';

  @override
  String get tooltipSearch => 'Kërko';

  @override
  String get tooltipStudyReview => 'Studim+Rishikim';

  @override
  String get tooltipSpeaking => 'Të folurit';

  @override
  String get tooltipDecrease => 'Zvogëlo';

  @override
  String get tooltipIncrease => 'Rrit';

  @override
  String get languageSettings => 'Cilësimet e gjuhës';

  @override
  String get tutorialM2DropdownDesc =>
      'Mund të zgjidhni materialin për të studiuar përmes menysë së sipërme.';

  @override
  String get tutorialM2ImportDesc =>
      'Importoni një skedar JSON nga dosja e pajisjes tuaj.';

  @override
  String get tutorialLangSettingsTitle => 'Cilësimet e gjuhës';

  @override
  String get tutorialLangSettingsDesc =>
      'Vendosni gjuhën burimore dhe gjuhën e synuar për të përkthyer.';

  @override
  String get copy => 'Kopjo';

  @override
  String get copiedToClipboard => 'U kopjua në kujtesën e shkurtër!';

  @override
  String get tutorialContextTitle => 'Etiketa e situatës/kontekstit';

  @override
  String get tutorialContextDesc =>
      'Edhe nëse është e njëjta fjali, mund ta ruani veçmas duke shkruar situatën (p.sh. mëngjes, mbrëmje).';

  @override
  String get thinkingTimeInterval => 'Intervali i kohës së mendimit';

  @override
  String get thinkingTimeDesc =>
      'Koha për të menduar përpara se të zbulohet përgjigja.';

  @override
  String get autoPlay => 'Luaj automatikisht';

  @override
  String get timeUp => 'Koha ka mbaruar!';

  @override
  String get gameModeTitle => 'Modaliteti i lojës';

  @override
  String get gameModeDesc => 'Zgjidhni modalitetin e lojës për të praktikuar';

  @override
  String get wordDefenseTitle => 'Mbrojtja e fjalëve';

  @override
  String get wordDefenseDesc =>
      'Mbroni bazën duke thënë fjalët përpara se të mbërrijnë armiqtë.';

  @override
  String get dialogueQuestTitle => 'Kërkimi i dialogut';

  @override
  String get dialogueQuestDesc =>
      'Ushtroni bisedën përmes sitcom. Zgjidhni dhe thoni përgjigjen e duhur.';

  @override
  String get labelType => 'Lloji:';

  @override
  String get labelWord => 'Fjalë';

  @override
  String get labelSentence => 'Fjali';

  @override
  String get contextTagLabel =>
      'Konteksti/Situata (opsionale) - P.sh.: Përshëndetje e mëngjesit, forma zyrtare';

  @override
  String get contextTagHint =>
      'Shkruani situatën në mënyrë që të jetë e lehtë për t\'u dalluar më vonë';

  @override
  String get usageLimitTitle => 'Arritja e kufirit';

  @override
  String get translationLimitExceeded => 'Kufiri i përkthimit tejkalohet';

  @override
  String get translationLimitMessage =>
      'Ju keni përdorur të gjitha përkthimet falas ditore (5 herë).\\n\\nA dëshironi të shikoni një reklamë dhe të rimbushni 5 herë menjëherë?';

  @override
  String get watchAdAndRefill => 'Shikoni reklamën dhe rimbushni (+5 herë)';

  @override
  String get translationRefilled => 'Numri i përkthimeve u rimbush 5 herë!';

  @override
  String get adLoading =>
      'Po ngarkohet reklama. Ju lutemi provoni përsëri pas pak.';

  @override
  String get reviewAll => 'Rishikim i plotë';

  @override
  String totalRecords(int count) {
    return 'Gjithsej $count regjistrime (shiko të gjitha)';
  }

  @override
  String get filterAll => 'Të gjitha';

  @override
  String get practiceWordsOnly => 'Ushtroni vetëm fjalët';

  @override
  String get resetPracticeHistory => 'Rivendosni historikun e praktikës';

  @override
  String get retry => 'Provo përsëri?';

  @override
  String get noStudyMaterial => 'Nuk ka material studimi.';

  @override
  String get gameOver => 'Loja ka mbaruar';

  @override
  String get playAgain => 'Luaj përsëri';

  @override
  String get speakNow => 'Foli tani!';

  @override
  String get scoreLabel => 'Rezultati';

  @override
  String get viewOnlineGuide => 'Shikoni Udhëzuesin Online';

  @override
  String get getMaterials => 'Merrni Materiale';

  @override
  String get swapLanguages => 'Shkëmbeni gjuhët';

  @override
  String get next => 'Tjetër';

  @override
  String get wordModeLabel => 'Modaliteti i fjalës';

  @override
  String get accuracy => 'Saktësia';

  @override
  String get basicDefault => 'Bazë';

  @override
  String get basic => 'Bazë';

  @override
  String get tutorialM3WordsTitle => 'Praktikë e fjalëve';

  @override
  String get tutorialM3WordsDesc =>
      'Nëse kontrollohet, ushtroni vetëm fjalët e ruajtura.';

  @override
  String get enterTextHint => 'Vendosni tekstin për të përkthyer';

  @override
  String get micButtonTooltip => 'Filloni njohjen e zërit';

  @override
  String get menuHelp => 'Ndihmë';

  @override
  String get menuWebDownload => 'Faqja kryesore';

  @override
  String get menuDeviceImport => 'Importo material nga pajisja';

  @override
  String get menuSettings => 'Cilësimet e gjuhës';

  @override
  String get basicWords => 'Depo bazë e fjalëve';

  @override
  String get basicSentences => 'Depo bazë e fjalive';

  @override
  String get selectMaterialSet => 'Zgjidhni librin e materialeve të studimit';

  @override
  String get sectionWords => 'Fjalët';

  @override
  String get sectionSentences => 'Fjalitë';

  @override
  String get languageSettingsTitle => 'Cilësimet e gjuhës';

  @override
  String get sourceLanguageLabel => 'Gjuha ime (Burimi)';

  @override
  String get targetLanguageLabel => 'Gjuha e studimit (Synimi)';

  @override
  String get mode3Start => 'Fillo';

  @override
  String get mode3Stop => 'Ndalo';

  @override
  String get mode3Next => 'Tjetër';

  @override
  String get mode3TryAgain => 'Provoje përsëri';

  @override
  String get tutorialM3ResetTitle => 'Rivendos regjistrimin';

  @override
  String get tutorialSwapDesc =>
      'Shkëmbeni gjuhën time dhe gjuhën e studimit me njëra-tjetrën.';

  @override
  String get recognizedText => 'Shqiptimi i njohur:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Rivendosni progresin dhe rezultatin e saktësisë për të filluar nga e para.';

  @override
  String get menuSelectMaterialSet =>
      'Zgjidhni librin e materialeve të studimit';

  @override
  String get sectionWord => 'Seksioni i fjalëve';

  @override
  String get sectionSentence => 'Seksioni i fjalive';

  @override
  String get tabWord => 'Fjalë';

  @override
  String get tabSentence => 'Fjali';

  @override
  String get errorProfanity =>
      'Përkthimi nuk mund të bëhet sepse përmban fjalë të pista.';

  @override
  String get errorHateSpeech =>
      'Përkthimi nuk mund të bëhet sepse përmban gjuhë urrejtjeje.';

  @override
  String get errorSexualContent =>
      'Përkthimi nuk mund të bëhet sepse përmban përmbajtje seksuale.';

  @override
  String get errorOtherSafety =>
      'Përkthimi u refuzua nga politika e sigurisë së AI.';

  @override
  String get clearAll => 'Pastroji të gjitha';

  @override
  String get disambiguationTitle => 'Zgjidh kuptimin';

  @override
  String get disambiguationPrompt => 'Si do të donit ta përktheni atë?';

  @override
  String get skip => 'Anashkalo';

  @override
  String get inputModeTitle => 'Hyrje';

  @override
  String get reviewModeTitle => 'Rishikim';

  @override
  String get practiceModeTitle => 'Ushtrim i shqiptimit';

  @override
  String get chatHistoryTitle => 'Historia e bisedës';

  @override
  String get chatNew => 'Bisedë e re';

  @override
  String get chatNewChat => 'Bisedë e re';

  @override
  String get chatChoosePersona => 'Zgjidhni personazhin';

  @override
  String get chatTypeHint => 'Shkruaj një mesazh...';

  @override
  String chatFailed(Object error) {
    return 'Biseda dështoi: $error';
  }

  @override
  String get chatNoConversations => 'Ende nuk ka biseda';

  @override
  String get chatStartNewPrompt => 'Fillo një bisedë të re për të praktikuar!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Ekstrakt nga biseda ($speaker)';
  }

  @override
  String get personaTeacher => 'Mësues i anglishtes';

  @override
  String get personaGuide => 'Guida turistike';

  @override
  String get personaFriend => 'Shok vendas';

  @override
  String get chatUntitled => 'Bisedë pa titull';

  @override
  String get chatAiChat => 'Bisedë AI';

  @override
  String get tutorialAiChatTitle => 'Bisedë AI';

  @override
  String get tutorialAiChatDesc =>
      'Ushtroni bisedat e jetës reale me personazhet AI.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Libri burim aktual i zgjedhur: $name';
  }

  @override
  String get basicWordRepository => 'Depo bazë e fjalëve';

  @override
  String get basicSentenceRepository => 'Depo bazë e fjalive';

  @override
  String get chatEndTitle => 'Përfundo dhe ruaj bisedën';

  @override
  String get chatEndMessage =>
      'A jeni i sigurt që dëshironi ta përfundoni bisedën?';

  @override
  String get chatSaveAndExit => 'Ruaj dhe dil';

  @override
  String get errorSelectCategory =>
      'Ju lutemi zgjidhni së pari një fjalë ose fjali!';

  @override
  String get tutorialM1ToggleTitle => 'Modaliteti i Fjalës/Fjalive';

  @override
  String get tutorialM1ToggleDesc =>
      'Ndërroni modalitetet e fjalëve dhe fjalive këtu.';

  @override
  String get metadataDialogTitle => 'Klasifikimi i detajuar';

  @override
  String get tagFormal => 'Formale';

  @override
  String get selectPOS => 'Zgjidh pjesën e ligjëratës';

  @override
  String get selectSentenceType => 'Zgjidh llojin e fjalisë';

  @override
  String get metadataRootWord => 'Fjala rrënjë (Root Word)';

  @override
  String get posNoun => 'Emër';

  @override
  String get posVerb => 'Folje';

  @override
  String get posAdjective => 'Mbiemër';

  @override
  String get posAdverb => 'Ndajfolje';

  @override
  String get posPronoun => 'Përemër';

  @override
  String get posPreposition => 'Parafjalë';

  @override
  String get posConjunction => 'Lidhëz';

  @override
  String get posInterjection => 'Pasthirrmë';

  @override
  String get typeStatement => 'Deklaratë';

  @override
  String get typeQuestion => 'Pyetje';

  @override
  String get typeExclamation => 'Thirrje';

  @override
  String get typeImperative => 'Urdhërore';

  @override
  String get labelNote => 'Shënim';

  @override
  String get labelShowMemorized => 'Mbaruar';

  @override
  String get tagSelection => 'Zgjedhja e etiketës';

  @override
  String get metadataFormType => 'Forma gramatikore';

  @override
  String get formInfinitive => 'Forma bazë/E tashme';

  @override
  String get formPast => 'E shkuar';

  @override
  String get formPastParticiple => 'Pjesorja e shkuar';

  @override
  String get formPresentParticiple => 'Pjesorja e tashme (-ing)';

  @override
  String get formPresent => 'E tashme';

  @override
  String get formThirdPersonSingular => 'Veta e tretë njëjës';

  @override
  String get formPlural => 'Shumës';

  @override
  String get formSingular => 'Njëjës';

  @override
  String get caseSubject => 'Rasnore';

  @override
  String get caseObject => 'Kallëzore';

  @override
  String get casePossessive => 'Gjinore';

  @override
  String get casePossessivePronoun => 'Përemër pronor';

  @override
  String get caseReflexive => 'Përemër vetor';

  @override
  String get formPositive => 'Formë pohore';

  @override
  String get formComparative => 'Krahasore';

  @override
  String get formSuperlative => 'Mbiore';

  @override
  String get searchConditions => 'Kushtet e kërkimit';

  @override
  String recentNItems(int count) {
    return 'Shiko $count artikujt e krijuar së fundmi';
  }

  @override
  String get startsWith => 'Shkronja fillestare';

  @override
  String get reset => 'Rivendos';

  @override
  String get participantRename => 'Riemëro pjesëmarrësin';

  @override
  String get labelName => 'Emri';

  @override
  String get gender => 'Gjinia';

  @override
  String get language => 'Gjuha';

  @override
  String get male => 'Mashkull';

  @override
  String get female => 'Femër';

  @override
  String get neutral => 'Asnjëanës';

  @override
  String get chatAllConversations => 'Të gjitha bisedat';

  @override
  String get confirmDeleteConversation =>
      'A jeni i sigurt që dëshironi ta fshini këtë bisedë?\nBisedat e fshira nuk mund të rikthehen.';
}
