// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get helpTitle => 'Yordam & Qo\'llanma';

  @override
  String get helpTabModes => 'Rejimlar haqida ma\'lumot';

  @override
  String get helpTabJson => 'JSON formati';

  @override
  String get helpTabTour => 'Namuna';

  @override
  String get helpMode1Desc =>
      'Nutqni aniqlab tarjima qiling va natijalarni tinglang.';

  @override
  String get helpMode1Details =>
      '• Til sozlamalari: yuqori/pastki belgilarni bosib tilni o\'zgartiring\n• So\'z/gap o\'tish: rejimni almashtirish\n• Ovozli kiritish: mikrofon belgisini bosib tinglashni boshlang/to\'xtating\n• Matn kiritish: to\'g\'ridan-to\'g\'ri kiritib tarjima qiling\n• Avtomatik qidiruv: o\'xshash mavjud jumlalarni aniqlash\n• Tarjima: Tarjima tugmasini bosib darhol tarjima qiling\n• Tinglash: dinamik belgisidan TTS-ni ijro eting\n• Saqlash: \'Ma\'lumotlarni saqlash\' bilan yozuv qo\'shing\n• Tozalash: kirishni qayta o\'rnating';

  @override
  String get helpMode2Desc =>
      'Saqlangan jumlalarni ko\'rib chiqing va avtomatik yashirish funktsiyasi yordamida yodlashganingizni tekshiring.';

  @override
  String get helpMode2Details =>
      '• Ma\'lumotlarni tanlash: ma\'lum ma\'lumotlar to\'plamini yoki \'To\'liq ko\'rib chiqish\'ni tanlang\n• Kartani aylantirish: \'Ko\'rsatish/yashirish\' orqali tarjimani tekshiring (avtomatik o\'rganish tekshiruvi)\n• Tinglash: jumlani TTS orqali ijro eting\n• O\'rganish yakunlandi: belgi (V) bilan o\'rganish yakunlanganligini ko\'rsating\n• O\'chirish: yozuvni o\'chirish uchun kartani uzoq bosing\n• Qidiruv shartlari: teglarga, so\'nggi elementlarga, bosh harflarga qarab filtrlash';

  @override
  String get helpMode3Desc =>
      'Gaplarni tinglang va takrorlang (Shadowing) talaffuzingizni mashq qiling.';

  @override
  String get helpMode3Details =>
      '• Ma\'lumotlarni tanlash: o\'rganmoqchi bo\'lgan ma\'lumotlar to\'plamini tanlang\n• Intervalni sozlash: [-] [+] tugmalari bilan jumlalar orasidagi kutish vaqtini sozlang (3 soniyadan 60 soniyagacha)\n• Boshlash/to\'xtatish: soyalash seansini boshqaring\n• Gapirish: ovozni tinglang va takrorlang\n• Fikr-mulohaza: aniqlik balli (0-100) va rangli displey\n• Qidiruv shartlari: mashq qilish uchun teglarga, so\'nggi elementlarga, bosh harflarga qarab filtrlash';

  @override
  String get helpModeChatDesc =>
      'AI persona bilan suhbatlashib, amaliy suhbatni mashq qiling.';

  @override
  String get helpModeChatDetails =>
      '• AI chat: o\'z tilingizda gapirib, suhbatni mashq qiling\n• Multi-persona: nutq pufagi ustidagi menyu orqali boshqa odamning jinsi/tili/nomini o\'zgartirishingiz mumkin\n• Hamkor qo\'shish: + tugmasi bilan yangi suhbatdosh (Stranger) qo\'shing\n• GPS: joriy joylashuvga asoslangan vaziyatli dramatik sahna\n• Avtomatik saqlash: suhbat mazmunini avtomatik tarjima qilish va saqlash';

  @override
  String get helpJsonDesc =>
      '3-rejimda foydalaniladigan o\'quv materiallarini JSON fayli sifatida import qilish uchun quyidagi formatga rioya qiling:';

  @override
  String get helpDialogueImportDesc =>
      'JSON faylidan butun dialoglar to\'plamini import qiling.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON tuzilishi: `entries` o\'rniga `dialogues` massivini ishlating\n• Avtomatik tiklash: dialog sarlavhasi, persona, xabar tartibi tiklanadi.\n• Joylashuv: Import qilingan dialoglar AI chat rejimining \'Tarix\' yorlig\'ida paydo bo\'ladi.';

  @override
  String get helpTourDesc =>
      '**Ta\'kidlangan doira** asosiy funktsiyalarni ko\'rsatadi.\n(Masalan: **Ta\'kidlangan doira** ko\'rsatgan kartani uzoq bosib o\'chirish mumkin.)';

  @override
  String get partnerMode => 'Hamkor rejimi';

  @override
  String get manual => 'Qo\'lda kiritish';

  @override
  String get speaker => 'Notiq';

  @override
  String get switchToAi => 'AI rejimiga o\'tish';

  @override
  String get switchToPartner => 'Hamkor rejimiga o\'tish';

  @override
  String get currentLocation => 'Joriy joylashuv';

  @override
  String get location => 'Joylashuv';

  @override
  String get partner => 'Hamkor';

  @override
  String get me => 'Men';

  @override
  String get currentMaterialLabel => 'Hozirgi tanlangan materiallar to\'plami:';

  @override
  String get basicMaterialRepository => 'Asosiy jumlalar/so\'zlar ombori';

  @override
  String get word => 'So\'z';

  @override
  String get sentence => 'Gap';

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'Ko\'rib chiqish ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'O\'quv materiallari ($count)';
  }

  @override
  String get mode2Title => 'Ko\'rib chiqish';

  @override
  String get search => 'Qidiruv';

  @override
  String get translate => 'Tarjima';

  @override
  String get listen => 'Tinglash';

  @override
  String get saveData => 'Ma\'lumotlarni saqlash';

  @override
  String get saved => 'Saqlandi';

  @override
  String get delete => 'O\'chirish';

  @override
  String get materialInfo => 'Ma\'lumotlar haqida ma\'lumot';

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get confirm => 'Tasdiqlash';

  @override
  String get refresh => 'Yangilash';

  @override
  String studyRecords(int count) {
    return 'O\'rganish yozuvlari ($count)';
  }

  @override
  String get targetLanguageFilter => 'Maqsadli til filtri:';

  @override
  String get noRecords => 'Tanlangan tilda o\'rganish yozuvlari yo\'q';

  @override
  String get saveTranslationsFromSearch =>
      'Qidiruv rejimida tarjimalarni saqlashga harakat qiling';

  @override
  String get flip => 'Ko\'rsatish';

  @override
  String get hide => 'Yashirish';

  @override
  String get deleteRecord => 'Yozuvni o\'chirish';

  @override
  String get confirmDelete => 'Ushbu o\'rganish yozuvini o\'chirmoqchimisiz?';

  @override
  String get recordDeleted => 'Yozuv o\'chirildi';

  @override
  String deleteFailed(String error) {
    return 'O\'chirishda xatolik: $error';
  }

  @override
  String get importJsonFile => 'JSON faylini import qilish';

  @override
  String get importing => 'Import qilinmoqda...';

  @override
  String get importComplete => 'Import yakunlandi';

  @override
  String get importFailed => 'Importda xatolik';

  @override
  String importFile(String fileName) {
    return 'Fayl: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'Jami: $count dona';
  }

  @override
  String importAdded(int count) {
    return 'Qo\'shildi: $count dona';
  }

  @override
  String importSkipped(int count) {
    return 'O\'tkazib yuborildi: $count dona';
  }

  @override
  String get errors => 'Xatolar:';

  @override
  String get error => 'Xatolik';

  @override
  String importErrorMessage(String error) {
    return 'Faylni import qilishda xatolik:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'O\'quv materiallarini tanlash';

  @override
  String get subject => 'Mavzu:';

  @override
  String get source => 'Manba:';

  @override
  String get file => 'Fayl:';

  @override
  String progress(int current, int total) {
    return 'Jarayon: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'JSON faylini import qiling';

  @override
  String get selectMaterialPrompt => 'O\'quv materiallarini tanlang';

  @override
  String get studyComplete => 'O\'rganish yakunlandi';

  @override
  String get markAsStudied => 'O\'rganilgan deb belgilang';

  @override
  String get listening => 'Tinglanmoqda...';

  @override
  String get recognized => 'Aniqlash yakunlandi';

  @override
  String recognitionFailed(String error) {
    return 'Nutqni aniqlashda xatolik: $error';
  }

  @override
  String get checking => 'Tekshirilmoqda...';

  @override
  String get translating => 'Tarjima qilinmoqda...';

  @override
  String get translationComplete => 'Tarjima yakunlandi (saqlash kerak)';

  @override
  String get translationLoaded => 'Saqlangan tarjima yuklandi';

  @override
  String translationFailed(String error) {
    return 'Tarjimada xatolik: $error';
  }

  @override
  String get enterTextToTranslate => 'Tarjima qilish uchun matnni kiriting';

  @override
  String get saving => 'Saqlanmoqda...';

  @override
  String get noTranslationToSave => 'Saqlash uchun tarjima yo\'q';

  @override
  String saveFailed(String error) {
    return 'Saqlashda xatolik: $error';
  }

  @override
  String get playing => 'Ijro etilmoqda...';

  @override
  String get noTextToPlay => 'Ijro etish uchun matn yo\'q';

  @override
  String playbackFailed(String error) {
    return 'Ijroda xatolik: $error';
  }

  @override
  String get sourceLanguage => 'Asl til';

  @override
  String get targetLanguage => 'Maqsadli til';

  @override
  String get similarTextFound => 'O\'xshash matn topildi';

  @override
  String get useExistingText => 'Mavjud matndan foydalanish';

  @override
  String get createNew => 'Yangi jumla bilan davom etish';

  @override
  String reviewCount(int count) {
    return 'Ko\'rib chiqish $count marta';
  }

  @override
  String get tabSpeaking => 'Gapirish';

  @override
  String get speakingPractice => 'Gapirish mashqi';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: $seconds soniya';
  }

  @override
  String get yourPronunciation => 'Talaffuzingiz';

  @override
  String get correctAnswer => 'To\'g\'ri javob';

  @override
  String score(String score) {
    return 'Aniq: $score%';
  }

  @override
  String get perfect => 'A\'lo!';

  @override
  String get good => 'Yaxshi';

  @override
  String get tryAgain => 'Qaytadan urinib ko\'ring';

  @override
  String get startPractice => 'Mashqni boshlash';

  @override
  String get stopPractice => 'Mashqni to\'xtatish';

  @override
  String get menuOnlineLibrary => 'Online Library';

  @override
  String get startTutorial => 'O\'quv qo\'llanmani boshlash';

  @override
  String get menuTutorial => 'Tutorial';

  @override
  String get tutorialMicTitle => 'Ovozli kiritish';

  @override
  String get tutorialMicDesc =>
      'Mikrofon tugmasini bosib, ovoz bilan kiritishingiz mumkin.';

  @override
  String get tutorialTabDesc =>
      'Bu yerda siz xohlagan o\'quv rejimini tanlashingiz mumkin.';

  @override
  String get tutorialTapToContinue => 'Davom etish uchun ekranni bosing';

  @override
  String get tutorialTransTitle => 'Tarjima qilish';

  @override
  String get tutorialTransDesc => 'Kiritilgan matnni tarjima qiladi.';

  @override
  String get tutorialSaveTitle => 'Saqlash';

  @override
  String get tutorialSaveDesc =>
      'Tarjima qilingan natijani o\'rganish yozuviga saqlang.';

  @override
  String get tutorialM2SelectTitle => 'Ma\'lumotlarni tanlash';

  @override
  String get tutorialM2SelectDesc =>
      'Yuqori ilova panelidagi ma\'lumotlar to\'plami belgisini (📚) bosib, o\'rganmoqchi bo\'lgan ma\'lumotlarni tanlang.';

  @override
  String get tutorialM3SelectDesc =>
      'Yuqori ilova panelidagi ma\'lumotlar to\'plami belgisini (📚) bosib, mashq qilmoqchi bo\'lgan ma\'lumotlarni tanlang.';

  @override
  String get tutorialM2ListTitle => 'O\'rganish ro\'yxati';

  @override
  String get tutorialM2ListDesc =>
      'Ushbu kartani uzoq bosish (Long Click) orqali o\'chirishingiz mumkin. Saqlangan jumlalarni tekshiring va aylantirib ko\'ring.';

  @override
  String get tutorialM3SelectTitle => 'Ma\'lumotlarni tanlash';

  @override
  String get tutorialM3IntervalTitle => 'Intervalni sozlash';

  @override
  String get tutorialM3IntervalDesc =>
      'Jumlalar orasidagi kutish vaqtini sozlang.';

  @override
  String get tutorialM3StartTitle => 'Mashqni boshlash';

  @override
  String get tutorialM3StartDesc =>
      'Ijro etish tugmasini bosib, ona tilida so\'zlovchining ovozini tinglang va takrorlang.';

  @override
  String get startWarning => 'Diqqat';

  @override
  String get noVoiceDetected => 'Ovoz aniqlanmadi';

  @override
  String get tooltipSearch => 'Qidiruv';

  @override
  String get tooltipStudyReview => 'O\'rganish+Ko\'rib chiqish';

  @override
  String get tooltipSpeaking => 'Gapirish';

  @override
  String get tooltipDecrease => 'Kamaytirish';

  @override
  String get tooltipIncrease => 'Ko\'paytirish';

  @override
  String get languageSettings => 'Til sozlamalari';

  @override
  String get tutorialM2DropdownDesc =>
      'Yuqori menyu orqali o\'rganmoqchi bo\'lgan ma\'lumotlarni tanlashingiz mumkin.';

  @override
  String get tutorialM2ImportDesc =>
      'Qurilma papkasidan JSON faylini import qiladi.';

  @override
  String get tutorialLangSettingsTitle => 'Til sozlamalari';

  @override
  String get tutorialLangSettingsDesc =>
      'Tarjima qilinadigan asl tilni va maqsadli tilni o\'rnating.';

  @override
  String get copy => 'Nusxalash';

  @override
  String get copiedToClipboard => 'Buferga nusxalandi!';

  @override
  String get tutorialContextTitle => 'Vaziyat/kontekst teg';

  @override
  String get tutorialContextDesc =>
      'Xuddi shu jumla bo\'lsa ham, vaziyatni (masalan, ertalab, kechqurun) yozsangiz, uni alohida saqlashingiz mumkin.';

  @override
  String get thinkingTimeInterval => 'O\'ylash vaqti oralig\'i';

  @override
  String get thinkingTimeDesc =>
      'To\'g\'ri javob e\'lon qilinishidan oldin o\'ylash vaqti.';

  @override
  String get autoPlay => 'Avtomatik ijro etish';

  @override
  String get timeUp => 'Vaqt tugadi!';

  @override
  String get gameModeTitle => 'O\'yin rejimi';

  @override
  String get gameModeDesc => 'Mashq qilish uchun o\'yin rejimini tanlang';

  @override
  String get wordDefenseTitle => 'So\'z himoyasi';

  @override
  String get wordDefenseDesc =>
      'Dushman kelishidan oldin so\'zni aytib bazani himoya qiling.';

  @override
  String get dialogueQuestTitle => 'Dialog qidiruvi';

  @override
  String get dialogueQuestDesc =>
      'Vaziyatli dramatik sahna orqali suhbatni mashq qiling. Tegishli javobni tanlang va ayting.';

  @override
  String get labelType => 'Turi:';

  @override
  String get labelWord => 'So\'z';

  @override
  String get labelSentence => 'Gap';

  @override
  String get contextTagLabel =>
      'Kontekst/vaziyat (ixtiyoriy) - Masalan: ertalab salomlashish, hurmat';

  @override
  String get contextTagHint =>
      'Keyinchalik ajratish oson bo\'lishi uchun vaziyatni yozing';

  @override
  String get usageLimitTitle => 'Limitga yetish';

  @override
  String get translationLimitExceeded => 'Tarjima limiti oshib ketdi';

  @override
  String get translationLimitMessage =>
      'Kunlik bepul tarjima (5 marta) dan hammasi ishlatildi.\\n\\nReklamani ko\'rib 5 marta zudlik bilan to\'ldirmoqchimisiz?';

  @override
  String get watchAdAndRefill => 'Reklamani ko\'rib to\'ldirish (+5 marta)';

  @override
  String get translationRefilled => 'Tarjima soni 5 marta to\'ldirildi!';

  @override
  String get adLoading =>
      'Reklama yuklanmoqda. Bir ozdan keyin qayta urinib ko\'ring.';

  @override
  String get reviewAll => 'To\'liq ko\'rib chiqish';

  @override
  String totalRecords(int count) {
    return 'Jami $count ta yozuv (to\'liq ko\'rish)';
  }

  @override
  String get filterAll => 'Hammasi';

  @override
  String get practiceWordsOnly => 'Faqat so\'zlarni mashq qilish';

  @override
  String get resetPracticeHistory => 'Mashqlar tarixini tiklash';

  @override
  String get retry => 'Qayta urinib ko\'rish?';

  @override
  String get noStudyMaterial => 'O\'quv materiallari yo\'q.';

  @override
  String get gameOver => 'O\'yin tugadi';

  @override
  String get playAgain => 'Qayta o\'ynash';

  @override
  String get speakNow => 'Hozir gapiring!';

  @override
  String get scoreLabel => 'Ball';

  @override
  String get viewOnlineGuide => 'Onlayn qo\'llanmani ko\'rish';

  @override
  String get getMaterials => 'Ma\'lumotlarni olish';

  @override
  String get swapLanguages => 'Tillarni almashtirish';

  @override
  String get next => 'Keyingi';

  @override
  String get wordModeLabel => 'So\'z rejimi';

  @override
  String get accuracy => 'Aniqlik';

  @override
  String get basicDefault => 'Asosiy';

  @override
  String get basic => 'Asosiy';

  @override
  String get tutorialM3WordsTitle => 'So\'zlarni mashq qilish';

  @override
  String get tutorialM3WordsDesc =>
      'Belgilasangiz, faqat saqlangan so\'zlarni mashq qiling.';

  @override
  String get enterTextHint => 'Tarjima qilish uchun matnni kiriting';

  @override
  String get micButtonTooltip => 'Nutqni aniqlashni boshlash';

  @override
  String get menuHelp => 'Yordam';

  @override
  String get menuWebDownload => 'Veb-sayt';

  @override
  String get menuDeviceImport => 'Qurilmadan ma\'lumotlarni import qilish';

  @override
  String get menuSettings => 'Til sozlamalari';

  @override
  String get basicWords => 'Asosiy so\'zlar ombori';

  @override
  String get basicSentences => 'Asosiy jumlalar ombori';

  @override
  String get selectMaterialSet => 'O\'quv materiallari to\'plamini tanlash';

  @override
  String get sectionWords => 'So\'zlar';

  @override
  String get sectionSentences => 'Jumlalar';

  @override
  String get languageSettingsTitle => 'Til sozlamalari';

  @override
  String get sourceLanguageLabel => 'Mening tilim (Source)';

  @override
  String get targetLanguageLabel => 'O\'rganiladigan til (Target)';

  @override
  String get mode3Start => 'Boshlash';

  @override
  String get mode3Stop => 'To\'xtatish';

  @override
  String get mode3Next => 'Keyingi';

  @override
  String get mode3TryAgain => 'Qayta urinib ko\'ring';

  @override
  String get tutorialM3ResetTitle => 'Tarixni tiklash';

  @override
  String get tutorialSwapDesc =>
      'Mening tilimni va o\'rganiladigan tilni o\'zaro almashtiradi.';

  @override
  String get recognizedText => 'Aniqlangan talaffuz:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Jarayonni va aniqlik ballini tiklab, boshidan boshlang.';

  @override
  String get menuSelectMaterialSet => 'O\'quv materiallari to\'plamini tanlash';

  @override
  String get sectionWord => 'So\'z bo\'limi';

  @override
  String get sectionSentence => 'Gap bo\'limi';

  @override
  String get tabWord => 'So\'z';

  @override
  String get tabSentence => 'Gap';

  @override
  String get errorProfanity =>
      'So\'kinish so\'zlari borligi sababli tarjima qilib bo\'lmaydi.';

  @override
  String get errorHateSpeech =>
      'Nafrat so\'zlari borligi sababli tarjima qilib bo\'lmaydi.';

  @override
  String get errorSexualContent =>
      'Shahvoniy mazmun borligi sababli tarjima qilib bo\'lmaydi.';

  @override
  String get errorOtherSafety =>
      'AI xavfsizlik siyosati tufayli tarjima rad etildi.';

  @override
  String get clearAll => 'Hammasini tozalash';

  @override
  String get disambiguationTitle => 'Ma\'noni tanlash';

  @override
  String get disambiguationPrompt => 'Qaysi ma\'noda tarjima qilmoqchisiz?';

  @override
  String get skip => 'O\'tkazib yuborish';

  @override
  String get inputModeTitle => 'Kiritish';

  @override
  String get reviewModeTitle => 'Ko\'rib chiqish';

  @override
  String get practiceModeTitle => 'Mashq';

  @override
  String get chatHistoryTitle => 'Suhbatlar tarixi';

  @override
  String get chatNew => 'Yangi suhbat';

  @override
  String get chatNewChat => 'Yangi suhbat';

  @override
  String get chatChoosePersona => 'Personani tanlash';

  @override
  String get chatTypeHint => 'Xabar kiriting...';

  @override
  String chatFailed(Object error) {
    return 'Chatda xatolik: $error';
  }

  @override
  String get chatNoConversations => 'Hali suhbatlar yo\'q';

  @override
  String get chatStartNewPrompt =>
      'Mashq qilish uchun yangi suhbatni boshlang!';

  @override
  String chatFromConversation(Object speaker) {
    return 'Suhbatdan iqtibos ($speaker)';
  }

  @override
  String get personaTeacher => 'Ingliz tili o\'qituvchisi';

  @override
  String get personaGuide => 'Sayohat yo\'lboshchisi';

  @override
  String get personaFriend => 'Mahalliy do\'st';

  @override
  String get chatUntitled => 'Sarlavhasiz suhbat';

  @override
  String get chatAiChat => 'Chat';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'AI persona bilan amaliy suhbatni mashq qiling.';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'Hozirda tanlangan ma\'lumotlar to\'plami: $name';
  }

  @override
  String get basicWordRepository => 'Asosiy so\'zlar ombori';

  @override
  String get basicSentenceRepository => 'Asosiy jumlalar ombori';

  @override
  String get chatEndTitle => 'Suhbatni yakunlash va saqlash';

  @override
  String get chatEndMessage => 'Suhbatni yakunlamoqchimisiz?';

  @override
  String get chatSaveAndExit => 'Saqlash va chiqish';

  @override
  String get errorSelectCategory => 'Avval so\'zni yoki gapni tanlang!';

  @override
  String get tutorialM1ToggleTitle => 'So\'z/gap rejimi';

  @override
  String get tutorialM1ToggleDesc =>
      'Bu yerda so\'z va gap rejimlarini almashtiring.';

  @override
  String get metadataDialogTitle => 'Batafsil tasniflash';

  @override
  String get tagFormal => 'Hurmat';

  @override
  String get selectPOS => 'So\'z turkumini tanlash';

  @override
  String get selectSentenceType => 'Gap turini tanlash';

  @override
  String get metadataRootWord => 'Asl so\'z (Root Word)';

  @override
  String get posNoun => 'Otlash';

  @override
  String get posVerb => 'Fe\'l';

  @override
  String get posAdjective => 'Sifat';

  @override
  String get posAdverb => 'Ravish';

  @override
  String get posPronoun => 'Olmos';

  @override
  String get posPreposition => 'Old ko\'makchi/bog\'lovchi';

  @override
  String get posConjunction => 'Bog\'lovchi';

  @override
  String get posInterjection => 'Undov';

  @override
  String get typeStatement => 'Darax gap';

  @override
  String get typeQuestion => 'So\'roq gap';

  @override
  String get typeExclamation => 'Undov gap';

  @override
  String get typeImperative => 'Buyruq gap';

  @override
  String get labelNote => 'Izoh';

  @override
  String get labelShowMemorized => 'Tugatilgan';

  @override
  String get titleTagSelection => 'Sarlavha teglari (kitob)';

  @override
  String get generalTags => 'Umumiy teglar';

  @override
  String get tagSelection => 'Teg tanlash';

  @override
  String get metadataFormType => 'Grammatik shakl';

  @override
  String get formInfinitive => 'Asl/hozirgi shakl';

  @override
  String get formPast => 'O\'tgan shakl';

  @override
  String get formPastParticiple => 'O\'tgan zamon sifatdoshi';

  @override
  String get formPresentParticiple => 'Hozirgi zamon sifatdoshi (ing)';

  @override
  String get formPresent => 'Hozirgi shakl';

  @override
  String get formThirdPersonSingular => '3-shaxs birlik';

  @override
  String get formPlural => 'Ko\'plik';

  @override
  String get formSingular => 'Birlik';

  @override
  String get caseSubject => 'Bosh kelishik';

  @override
  String get caseObject => 'Tushum kelishik';

  @override
  String get casePossessive => 'Qaratqich kelishik';

  @override
  String get casePossessivePronoun => 'Qaratqich olmoshi';

  @override
  String get caseReflexive => 'O\'zlik olmoshi';

  @override
  String get formPositive => 'Oddiy daraja';

  @override
  String get formComparative => 'Qiyosiy daraja';

  @override
  String get formSuperlative => 'Ortirma daraja';

  @override
  String get searchConditions => 'Qidiruv shartlari';

  @override
  String recentNItems(int count) {
    return 'Oxirgi yaratilgan $count tasini ko\'rsatish';
  }

  @override
  String get startsWith => 'Bosh harf';

  @override
  String get reset => 'Tiklash';

  @override
  String get participantRename => 'Ishtirokchining nomini o\'zgartirish';

  @override
  String get labelName => 'Ism';

  @override
  String get gender => 'Jins';

  @override
  String get language => 'Til';

  @override
  String get male => 'Erkak';

  @override
  String get female => 'Ayol';

  @override
  String get neutral => 'neytral';

  @override
  String get chatAllConversations => 'Barcha suhbatlar';

  @override
  String get tabConversation => 'Conversation';

  @override
  String get confirmDeleteConversation =>
      'Bu suhbatni oʻchirishni xohlaysizmi?\nOʻchirilgan suhbatni qayta tiklab boʻlmaydi.';

  @override
  String get notSelected => '- Tanlanmagan -';

  @override
  String get myWordbook => 'Mening so\'zlashgichim';

  @override
  String get mySentenceCollection => 'Mening gaplar to\'plamim';

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
