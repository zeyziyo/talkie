// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get helpTitle => 'Օգնություն և ուղեցույց';

  @override
  String get helpTabModes => 'Ռեժիմների նկարագրություն';

  @override
  String get helpTabJson => 'JSON ձևաչափ';

  @override
  String get helpTabTour => 'Փորձարկել';

  @override
  String get helpMode1Desc =>
      'Ճանաչում է ձայնը և թարգմանում, կարող եք լսել արդյունքը։';

  @override
  String get helpMode1Details =>
      '• Լեզվի կարգավորումներ՝ փոխեք լեզուն վերևի/ներքևի պատկերակներով\n• Բառ/նախադասություն անցում՝ ռեժիմների միջև\n• Ձայնային մուտքագրում՝ սեղմեք խոսափողի պատկերակը լսելը սկսելու/դադարեցնելու համար\n• Տեքստի մուտքագրում՝ թարգմանելու համար մուտքագրեք ուղղակիորեն\n• Ավտոմատ որոնում՝ նման առկա նախադասությունների հայտնաբերում\n• Թարգմանություն՝ անմիջապես թարգմանեք՝ սեղմելով թարգմանել կոճակը\n• Լսել՝ TTS նվագարկում բարձրախոսի պատկերակով\n• Պահպանել՝ ավելացրեք գրառումը «Տվյալների պահպանումով»\n• Մաքրել՝ մուտքագրման սկզբնավորում';

  @override
  String get helpMode2Desc =>
      'Վերանայեք պահպանված նախադասությունները և ստուգեք, թե արդյոք հիշում եք դրանք՝ ավտոմատ թաքցման գործառույթով:';

  @override
  String get helpMode2Details =>
      '• Նյութի ընտրություն՝ ընտրեք որոշակի նյութերի հավաքածու կամ «Ամբողջական վերանայում»\n• Քարտի շրջում՝ ստուգեք թարգմանությունը «Ցույց տալ/թաքցնել»-ով (ավտոմատ ուսուցման ստուգում)\n• Լսել՝ նախադասության TTS նվագարկում\n• Ուսուցումն ավարտված է՝ նշեք որպես ուսուցումն ավարտված՝ ստուգման նշանով (V)\n• Ջնջել՝ երկար սեղմեք քարտը՝ գրառումը ջնջելու համար\n• Որոնման պայմաններ՝ զտեք ըստ թեգերի, վերջին տարրերի, սկսվող տառերի';

  @override
  String get helpMode3Desc =>
      'Լսեք և կրկնեք նախադասությունները (Shadowing) ձեր արտասանությունը մարզելու համար:';

  @override
  String get helpMode3Details =>
      '• Նյութի ընտրություն՝ ընտրեք ուսումնասիրելու նյութերի հավաքածուն\n• Միջակայքի կարգավորում՝ կարգավորեք նախադասությունների միջև սպասման ժամանակը [-] [+] կոճակներով (3 վրկ-ից 60 վրկ)\n• Սկսել/Դադարեցնել՝ վերահսկեք ստվերային նիստը\n• Խոսել՝ լսեք ձայնը և կրկնեք\n• Հետադարձ կապ՝ ճշգրտության միավոր (0-100) և գույնի ցուցադրում\n• Որոնման պայմաններ՝ զտեք մարզումների թիրախը ըստ թեգերի, վերջին տարրերի, սկսվող տառերի';

  @override
  String get helpModeChatDesc =>
      'Մարզեք իրական խոսակցական լեզուն AI անձի հետ զրուցելով:';

  @override
  String get helpModeChatDetails =>
      '• AI զրույց՝ խոսեք ձեր լեզվով՝ խոսակցական լեզուն մարզելու համար\n• Բազմաթիվ անձեր՝ փոխեք մյուս կողմի սեռը/լեզուն/անունը խոսքի փուչիկի վրայի ընտրացանկով\n• Գործընկեր ավելացնել՝ ավելացրեք նոր զրուցակից (Օտարերկրացի) + կոճակով\n• GPS՝ ընթացիկ գտնվելու վայրի վրա հիմնված իրավիճակ\n• Ավտոմատ պահպանում՝ զրույցի բովանդակության ավտոմատ թարգմանություն և պահպանում';

  @override
  String get helpJsonDesc =>
      'Հետևեք հետևյալ ձևաչափին Mode 3-ում օգտագործելու համար ուսումնական նյութերը JSON ֆայլի մեջ ներմուծելու համար.';

  @override
  String get helpDialogueImportDesc =>
      'Ներմուծեք ամբողջական երկխոսության հավաքածուները JSON ֆայլերի միջոցով:';

  @override
  String get helpDialogueImportDetails =>
      '• JSON կառուցվածք՝ օգտագործեք `dialogues` զանգվածը `entries`-ի փոխարեն\n• Ավտոմատ վերականգնում՝ երկխոսության վերնագրերը, անձերը, հաղորդագրությունների կարգը վերականգնվում են:\n• Գտնվելու վայրը՝ ներմուծված զրույցները հայտնվում են AI զրույցի ռեժիմի «Պատմություն» ներդիրում:';

  @override
  String get helpTourDesc =>
      '**Ընդգծված շրջանակը** ուղղորդում է հիմնական գործառույթները:\n(Օրինակ՝ դուք կարող եք ջնջել **ընդգծված շրջանակով** նշված քարտը երկար սեղմելով):';

  @override
  String get partnerMode => 'Գործընկեր ռեժիմ';

  @override
  String get manual => 'Ձեռքով մուտքագրում';

  @override
  String get speaker => 'Բանախոս';

  @override
  String get switchToAi => 'Անցնել AI ռեժիմին';

  @override
  String get switchToPartner => 'Անցնել գործընկեր ռեժիմին';

  @override
  String get currentLocation => 'Ընթացիկ գտնվելու վայր';

  @override
  String get location => 'Գտնվելու վայր';

  @override
  String get partner => 'Գործընկեր';

  @override
  String get me => 'Ես';

  @override
  String get currentMaterialLabel => 'Ընթացիկ ընտրված նյութերի հավաքածու.';

  @override
  String get basicMaterialRepository =>
      'Հիմնական նախադասությունների/բառերի պահեստ';

  @override
  String get word => 'Բառ';

  @override
  String get sentence => 'Նախադասություն';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Վերանայում ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'Ուսումնական նյութեր ($count)';
  }

  @override
  String get mode2Title => 'Վերանայում';

  @override
  String get search => 'Որոնում';

  @override
  String get translate => 'Թարգմանել';

  @override
  String get listen => 'Լսել';

  @override
  String get saveData => 'Տվյալների պահպանում';

  @override
  String get saved => 'Պահպանումն ավարտված է';

  @override
  String get delete => 'Ջնջել';

  @override
  String get materialInfo => 'Նյութի մասին տեղեկություններ';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get confirm => 'Հաստատել';

  @override
  String get refresh => 'Թարմացնել';

  @override
  String studyRecords(int count) {
    return 'Ուսուցման գրառումներ ($count)';
  }

  @override
  String get targetLanguageFilter => 'Թիրախային լեզվի զտիչ.';

  @override
  String get noRecords => 'Ընտրված լեզվի ուսուցման գրառումներ չկան';

  @override
  String get saveTranslationsFromSearch =>
      'Փորձեք պահպանել թարգմանությունները որոնման ռեժիմում';

  @override
  String get flip => 'Ցույց տալ';

  @override
  String get hide => 'Թաքցնել';

  @override
  String get deleteRecord => 'Ջնջել գրառումը';

  @override
  String get confirmDelete =>
      'Համոզվա՞ծ եք, որ ցանկանում եք ջնջել այս ուսուցման գրառումը։';

  @override
  String get recordDeleted => 'Գրառումը ջնջված է';

  @override
  String deleteFailed(String error) {
    return 'Ջնջումը ձախողվեց. $error';
  }

  @override
  String get importJsonFile => 'Ներմուծել JSON ֆայլ';

  @override
  String get importing => 'Ներմուծվում է...';

  @override
  String get importComplete => 'Ներմուծումն ավարտված է';

  @override
  String get importFailed => 'Ներմուծումը ձախողվեց';

  @override
  String importFile(String fileName) {
    return 'Ֆայլ. $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Ընդհանուր. $count';
  }

  @override
  String importAdded(int count) {
    return 'Ավելացված. $count';
  }

  @override
  String importSkipped(int count) {
    return 'Բաց թողնված. $count';
  }

  @override
  String get errors => 'Սխալներ.';

  @override
  String get error => 'Սխալ';

  @override
  String importErrorMessage(String error) {
    return 'Ֆայլի ներմուծումը ձախողվեց.\\n$error';
  }

  @override
  String get selectStudyMaterial => 'Ընտրել ուսումնական նյութեր';

  @override
  String get subject => 'Թեմա.';

  @override
  String get source => 'Աղբյուր.';

  @override
  String get file => 'Ֆայլ.';

  @override
  String progress(int current, int total) {
    return 'Ընթացք. $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'Ներմուծեք JSON ֆայլ';

  @override
  String get selectMaterialPrompt => 'Ընտրեք ուսումնական նյութեր';

  @override
  String get studyComplete => 'Ուսուցումն ավարտված է';

  @override
  String get markAsStudied => 'Նշել որպես ուսումնասիրված';

  @override
  String get listening => 'Լսվում է...';

  @override
  String get recognized => 'Ճանաչումն ավարտված է';

  @override
  String recognitionFailed(String error) {
    return 'Ձայնի ճանաչումը ձախողվեց. $error';
  }

  @override
  String get checking => 'Ստուգվում է...';

  @override
  String get translating => 'Թարգմանվում է...';

  @override
  String get translationComplete =>
      'Թարգմանությունն ավարտված է (պահպանման կարիք կա)';

  @override
  String get translationLoaded => 'Բեռնված է պահպանված թարգմանություն';

  @override
  String translationFailed(String error) {
    return 'Թարգմանությունը ձախողվեց. $error';
  }

  @override
  String get enterTextToTranslate => 'Մուտքագրեք թարգմանելու տեքստը';

  @override
  String get saving => 'Պահպանվում է...';

  @override
  String get noTranslationToSave => 'Պահպանելու թարգմանություն չկա';

  @override
  String saveFailed(String error) {
    return 'Պահպանումը ձախողվեց. $error';
  }

  @override
  String get playing => 'Նվագարկվում է...';

  @override
  String get noTextToPlay => 'Նվագարկելու տեքստ չկա';

  @override
  String playbackFailed(String error) {
    return 'Նվագարկումը ձախողվեց. $error';
  }

  @override
  String get sourceLanguage => 'Սկզբնաղբյուր լեզու';

  @override
  String get targetLanguage => 'Թիրախային լեզու';

  @override
  String get similarTextFound => 'Հայտնաբերվել է նման տեքստ';

  @override
  String get useExistingText => 'Օգտագործել առկա տեքստը';

  @override
  String get createNew => 'Շարունակել որպես նոր նախադասություն';

  @override
  String reviewCount(int count) {
    return 'Վերանայում $count անգամ';
  }

  @override
  String get tabSpeaking => 'Խոսել';

  @override
  String get speakingPractice => 'Խոսելու մարզում';

  @override
  String intervalSeconds(int seconds) {
    return 'Միջակայք. $seconds վրկ';
  }

  @override
  String get yourPronunciation => 'Ձեր արտասանությունը';

  @override
  String get correctAnswer => 'Ճիշտ պատասխան';

  @override
  String score(String score) {
    return 'Ճշգրտություն. $score%';
  }

  @override
  String get perfect => 'Կատարյալ է!';

  @override
  String get good => 'Լավ է';

  @override
  String get tryAgain => 'Փորձեք նորից';

  @override
  String get startPractice => 'Սկսել մարզումը';

  @override
  String get stopPractice => 'Դադարեցնել մարզումը';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'Սկսել ձեռնարկը';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Ձայնային մուտքագրում';

  @override
  String get tutorialMicDesc =>
      'Սեղմեք խոսափողի կոճակը՝ ձայնով մուտքագրելու համար։';

  @override
  String get tutorialTabDesc =>
      'Այստեղ դուք կարող եք ընտրել ցանկալի ուսուցման ռեժիմը։';

  @override
  String get tutorialTapToContinue => 'Հպեք էկրանին շարունակելու համար';

  @override
  String get tutorialTransTitle => 'Թարգմանել';

  @override
  String get tutorialTransDesc => 'Թարգմանեք մուտքագրված տեքստը։';

  @override
  String get tutorialSaveTitle => 'Պահպանել';

  @override
  String get tutorialSaveDesc =>
      'Պահպանեք թարգմանված արդյունքները ուսուցման գրառումներում:';

  @override
  String get tutorialM2SelectTitle => 'Նյութի ընտրություն';

  @override
  String get tutorialM2SelectDesc =>
      'Սեղմեք վերևի հավելվածի գործիքագոտու նյութերի հավաքածուի պատկերակը (📚)՝ ուսումնասիրելու համար նյութ ընտրելու համար։';

  @override
  String get tutorialM2ListTitle => 'Ուսուցման ցուցակ';

  @override
  String get tutorialM2ListDesc =>
      'Երկար սեղմեք (Երկար սեղմում) այս քարտի վրա՝ այն ջնջելու համար։ Ստուգեք պահպանված նախադասությունները և շրջեք այն։';

  @override
  String get tutorialM3SelectTitle => 'Նյութի ընտրություն';

  @override
  String get tutorialM3SelectDesc =>
      'Սեղմեք վերևի հավելվածի գործիքագոտու նյութերի հավաքածուի պատկերակը (📚)՝ մարզվելու համար նյութ ընտրելու համար։';

  @override
  String get tutorialM3IntervalTitle => 'Միջակայքի կարգավորում';

  @override
  String get tutorialM3IntervalDesc =>
      'Կարգավորեք սպասման ժամանակը նախադասությունների միջև:';

  @override
  String get tutorialM3StartTitle => 'Սկսել մարզումը';

  @override
  String get tutorialM3StartDesc =>
      'Սեղմեք նվագարկման կոճակը՝ լսելու մայրենի լեզվով խոսողի ձայնը և կրկնեք։';

  @override
  String get startWarning => 'Զգուշացում';

  @override
  String get noVoiceDetected => 'Ձայն չի հայտնաբերվել';

  @override
  String get tooltipSearch => 'Որոնում';

  @override
  String get tooltipStudyReview => 'Ուսուցում+վերանայում';

  @override
  String get tooltipSpeaking => 'Խոսել';

  @override
  String get tooltipDecrease => 'Նվազեցնել';

  @override
  String get tooltipIncrease => 'Ավելացնել';

  @override
  String get languageSettings => 'Լեզվի կարգավորումներ';

  @override
  String get tutorialM2DropdownDesc =>
      'Դուք կարող եք ընտրել ուսումնասիրելու նյութերը վերևի ընտրացանկի միջոցով:';

  @override
  String get tutorialM2ImportDesc => 'Ներմուծեք JSON ֆայլ ձեր սարքի պանակից։';

  @override
  String get tutorialLangSettingsTitle => 'Լեզվի կարգավորումներ';

  @override
  String get tutorialLangSettingsDesc =>
      'Սահմանեք սկզբնաղբյուր լեզուն և թարգմանելու թիրախային լեզուն։';

  @override
  String get copy => 'Պատճենել';

  @override
  String get copiedToClipboard => 'Պատճենվել է հոսքատախտակին!';

  @override
  String get tutorialContextTitle => 'Իրավիճակ/կոնտեքստ թեգ';

  @override
  String get tutorialContextDesc =>
      'Դուք կարող եք այն առանձին պահպանել՝ գրելով նույնիսկ նույն նախադասության իրավիճակը (օրինակ՝ առավոտ, երեկո)։';

  @override
  String get thinkingTimeInterval => 'Մտածելու ժամանակի միջակայք';

  @override
  String get thinkingTimeDesc =>
      'Ժամանակն է մտածելու, նախքան պատասխանը բացահայտելը:';

  @override
  String get autoPlay => 'Ավտոմատ նվագարկում';

  @override
  String get timeUp => 'Ժամանակը սպառվեց!';

  @override
  String get gameModeTitle => 'Խաղի ռեժիմ';

  @override
  String get gameModeDesc => 'Ընտրեք մարզվելու խաղի ռեժիմը';

  @override
  String get wordDefenseTitle => 'Բառերի պաշտպանություն';

  @override
  String get wordDefenseDesc =>
      'Պաշտպանեք ձեր բազան՝ ասելով բառեր, նախքան թշնամին կժամանի:';

  @override
  String get dialogueQuestTitle => 'Երկխոսության որոնում';

  @override
  String get dialogueQuestDesc =>
      'Մարզեք խոսակցությունները դերային խաղերի միջոցով: Ընտրեք և խոսեք համապատասխան պատասխաններ:';

  @override
  String get labelType => 'Տեսակ.';

  @override
  String get labelWord => 'Բառ';

  @override
  String get labelSentence => 'Նախադասություն';

  @override
  String get contextTagLabel =>
      'Կոնտեքստ/Իրավիճակ (ըստ ցանկության) - Օրինակ՝ առավոտյան ողջույն, պաշտոնական խոսք';

  @override
  String get contextTagHint =>
      'Գրեք իրավիճակը, որպեսզի այն հետագայում հեշտ լինի տարբերել';

  @override
  String get usageLimitTitle => 'Սահմանաչափին հասնելը';

  @override
  String get translationLimitExceeded =>
      'Գերազանցվել է թարգմանության սահմանաչափը';

  @override
  String get translationLimitMessage =>
      'Դուք օգտագործել եք ձեր օրական անվճար թարգմանությունները (5 անգամ):\\n\\nՑանկանու՞մ եք անմիջապես լիցքավորել ևս 5 անգամ՝ դիտելով գովազդ։';

  @override
  String get watchAdAndRefill => 'Դիտել գովազդ և լիցքավորել (+5 անգամ)';

  @override
  String get translationRefilled =>
      'Թարգմանությունների քանակը լիցքավորվել է 5 անգամ!';

  @override
  String get adLoading => 'Գովազդը բեռնվում է: Փորձեք մի փոքր ուշ:';

  @override
  String get reviewAll => 'Ամբողջական վերանայում';

  @override
  String totalRecords(int count) {
    return 'Ընդհանուր $count գրառում (Դիտել ամբողջը)';
  }

  @override
  String get filterAll => 'Բոլորը';

  @override
  String get practiceWordsOnly => 'Մարզել միայն բառերը';

  @override
  String get resetPracticeHistory => 'Վերականգնել մարզումների պատմությունը';

  @override
  String get retry => 'Փորձե՞լ նորից:';

  @override
  String get noStudyMaterial => 'Ուսումնական նյութեր չկան:';

  @override
  String get gameOver => 'Game Over';

  @override
  String get playAgain => 'Նորից խաղալ';

  @override
  String get speakNow => 'Խոսեք հիմա!';

  @override
  String get scoreLabel => 'Միավոր';

  @override
  String get viewOnlineGuide => 'Դիտել առցանց ուղեցույցը';

  @override
  String get getMaterials => 'Ստանալ նյութեր';

  @override
  String get swapLanguages => 'Փոխել լեզուները';

  @override
  String get next => 'Առաջ';

  @override
  String get wordModeLabel => 'Բառի ռեժիմ';

  @override
  String get accuracy => 'Ճշգրտություն';

  @override
  String get basicDefault => 'Հիմնական';

  @override
  String get basic => 'Հիմնական';

  @override
  String get tutorialM3WordsTitle => 'Բառերի մարզում';

  @override
  String get tutorialM3WordsDesc =>
      'Նշեք այս տարբերակը միայն պահպանված բառերը մարզելու համար։';

  @override
  String get enterTextHint => 'Մուտքագրեք թարգմանելու տեքստը';

  @override
  String get micButtonTooltip => 'Սկսել ձայնի ճանաչումը';

  @override
  String get menuHelp => 'Օգնություն';

  @override
  String get menuWebDownload => 'Գլխավոր էջ';

  @override
  String get menuDeviceImport => 'Ներմուծել նյութեր սարքից';

  @override
  String get menuSettings => 'Լեզվի կարգավորումներ';

  @override
  String get basicWords => 'Հիմնական բառերի պահեստ';

  @override
  String get basicSentences => 'Հիմնական նախադասությունների պահեստ';

  @override
  String get selectMaterialSet => 'Ընտրել ուսումնական նյութերի հավաքածու';

  @override
  String get sectionWords => 'Բառեր';

  @override
  String get sectionSentences => 'Նախադասություններ';

  @override
  String get languageSettingsTitle => 'Լեզվի կարգավորումներ';

  @override
  String get sourceLanguageLabel => 'Իմ լեզուն (Source)';

  @override
  String get targetLanguageLabel => 'Ուսումնական լեզուն (Target)';

  @override
  String get mode3Start => 'Սկսել';

  @override
  String get mode3Stop => 'Ավարտել';

  @override
  String get mode3Next => 'Հաջորդ';

  @override
  String get mode3TryAgain => 'Փորձել նորից';

  @override
  String get tutorialM3ResetTitle => 'Վերականգնել պատմությունը';

  @override
  String get tutorialSwapDesc => 'Փոխում է իմ լեզուն և ուսումնական լեզուն:';

  @override
  String get recognizedText => 'Ճանաչված արտասանություն.';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type. $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Վերականգնում է առաջընթացը և ճշգրտության միավորը՝ սկսելու համար սկզբից:';

  @override
  String get menuSelectMaterialSet => 'Ընտրել ուսումնական նյութերի հավաքածու';

  @override
  String get sectionWord => 'Բառի հատված';

  @override
  String get sectionSentence => 'Նախադասության հատված';

  @override
  String get tabWord => 'Բառ';

  @override
  String get tabSentence => 'Նախադասություն';

  @override
  String get errorProfanity =>
      'Այն չի կարող թարգմանվել քանի որ պարունակում է հայհոյանքներ։';

  @override
  String get errorHateSpeech =>
      'Այն չի կարող թարգմանվել, քանի որ պարունակում է ատելության խոսք։';

  @override
  String get errorSexualContent =>
      'Այն չի կարող թարգմանվել, քանի որ պարունակում է սեռական բովանդակություն։';

  @override
  String get errorOtherSafety =>
      'Այս թարգմանությունը մերժվել է AI անվտանգության քաղաքականության պատճառով։';

  @override
  String get clearAll => 'Մաքրել ամբողջը';

  @override
  String get disambiguationTitle => 'Ընտրել նշանակությունը';

  @override
  String get disambiguationPrompt => 'Ո՞ր նշանակությամբ կցանկանայիք թարգմանել։';

  @override
  String get skip => 'Բաց թողնել';

  @override
  String get inputModeTitle => 'Մուտքագրում';

  @override
  String get reviewModeTitle => 'Վերանայում';

  @override
  String get practiceModeTitle => 'Արտասանության մարզում';

  @override
  String get chatHistoryTitle => 'Զրույցի պատմություն';

  @override
  String get chatNew => 'Նոր զրույց';

  @override
  String get chatNewChat => 'Նոր զրույց';

  @override
  String get chatChoosePersona => 'Ընտրել անձ';

  @override
  String get chatTypeHint => 'Մուտքագրեք ձեր հաղորդագրությունը...';

  @override
  String chatFailed(Object error) {
    return 'Զրույցը ձախողվեց. $error';
  }

  @override
  String get chatNoConversations => 'Դեռևս զրույցներ չկան';

  @override
  String get chatStartNewPrompt => 'Սկսեք նոր զրույց մարզվելու համար!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Քաղված զրույցից ($speaker)';
  }

  @override
  String get personaTeacher => 'Անգլերենի ուսուցիչ';

  @override
  String get personaGuide => 'Ճանապարհորդական ուղեցույց';

  @override
  String get personaFriend => 'Տեղացի ընկեր';

  @override
  String get chatUntitled => 'Անանուն զրույց';

  @override
  String get chatAiChat => 'AI Զրույց';

  @override
  String get tutorialAiChatTitle => 'AI Զրույց';

  @override
  String get tutorialAiChatDesc => 'Մարզեք իրական զրույցներ AI անձի հետ:';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Ընթացիկ ընտրված նյութերի հավաքածու. $name';
  }

  @override
  String get basicWordRepository => 'Հիմնական բառերի պահեստ';

  @override
  String get basicSentenceRepository => 'Հիմնական նախադասությունների պահեստ';

  @override
  String get chatEndTitle => 'Ավարտել և պահպանել զրույցը';

  @override
  String get chatEndMessage => 'Համոզվա՞ծ եք, որ ցանկանում եք ավարտել զրույցը։';

  @override
  String get chatSaveAndExit => 'Պահպանել և դուրս գալ';

  @override
  String get errorSelectCategory => 'Նախ ընտրեք բառ կամ նախադասություն!';

  @override
  String get tutorialM1ToggleTitle => 'Բառի/նախադասության ռեժիմ';

  @override
  String get tutorialM1ToggleDesc =>
      'Անցեք բառի և նախադասության ռեժիմների միջև այստեղ:';

  @override
  String get metadataDialogTitle => 'Մանրամասն դասակարգում';

  @override
  String get tagFormal => 'Պաշտոնական խոսք';

  @override
  String get selectPOS => 'Ընտրել խոսքի մաս';

  @override
  String get selectSentenceType => 'Ընտրել նախադասության տեսակ';

  @override
  String get metadataRootWord => 'Արմատային բառ';

  @override
  String get posNoun => 'Գոյական';

  @override
  String get posVerb => 'Բայ';

  @override
  String get posAdjective => 'Ածական';

  @override
  String get posAdverb => 'Մակբայ';

  @override
  String get posPronoun => 'Դերանուն';

  @override
  String get posPreposition => 'Նախդիր/կապ';

  @override
  String get posConjunction => 'Շաղկապ';

  @override
  String get posInterjection => 'Ձայնարկություն';

  @override
  String get typeStatement => 'Պնդողական նախադասություն';

  @override
  String get typeQuestion => 'Հարցական նախադասություն';

  @override
  String get typeExclamation => 'Բացականչական նախադասություն';

  @override
  String get typeImperative => 'Հրամայական նախադասություն';

  @override
  String get labelNote => 'Ծանոթագրություն';

  @override
  String get labelShowMemorized => 'Ավարտված';

  @override
  String get tagSelection => 'Ընտրել թեգ';

  @override
  String get metadataFormType => 'Քերականական ձև';

  @override
  String get formInfinitive => 'Անորոշ/ներկա ժամանակ';

  @override
  String get formPast => 'Անցյալ ժամանակ';

  @override
  String get formPastParticiple => 'Անցյալ դերբայ';

  @override
  String get formPresentParticiple => 'Ներկա դերբայ (ing)';

  @override
  String get formPresent => 'Ներկա ժամանակ';

  @override
  String get formThirdPersonSingular => 'Երրորդ դեմքի եզակի թիվ';

  @override
  String get formPlural => 'Հոգնակի թիվ';

  @override
  String get formSingular => 'Եզակի թիվ';

  @override
  String get caseSubject => 'Ուղղական հոլով';

  @override
  String get caseObject => 'Հայցական հոլով';

  @override
  String get casePossessive => 'Սեռական հոլով';

  @override
  String get casePossessivePronoun => 'Ստացական դերանուն';

  @override
  String get caseReflexive => 'Անդրադարձ դերանուն';

  @override
  String get formPositive => 'Դրական աստիճան';

  @override
  String get formComparative => 'Համեմատական աստիճան';

  @override
  String get formSuperlative => 'Գերադրական աստիճան';

  @override
  String get searchConditions => 'Որոնման պայմաններ';

  @override
  String recentNItems(int count) {
    return 'Դիտել վերջերս ստեղծված $count տարրեր';
  }

  @override
  String get startsWith => 'Սկսվում է տառով';

  @override
  String get reset => 'Վերականգնել';

  @override
  String get participantRename => 'Վերանվանել մասնակցին';

  @override
  String get labelName => 'Անուն';

  @override
  String get gender => 'Սեռ';

  @override
  String get language => 'Լեզու';

  @override
  String get male => 'Արական';

  @override
  String get female => 'Իգական';

  @override
  String get neutral => 'Չեզոք';

  @override
  String get chatAllConversations => 'Բոլոր զրույցները';

  @override
  String get confirmDeleteConversation =>
      'Ցանկանու՞մ եք ջնջել այս զրույցը:\nՋնջված զրույցները հնարավոր չէ վերականգնել:';
}
