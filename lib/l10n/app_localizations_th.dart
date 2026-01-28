// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return 'ทบทวน ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return 'สื่อการเรียนรู้ ($count)';
  }

  @override
  String get mode2Title => 'ทบทวน';

  @override
  String get search => 'ค้นหา';

  @override
  String get translate => 'แปลภาษา';

  @override
  String get listen => 'ฟัง';

  @override
  String get saveData => 'บันทึกข้อมูล';

  @override
  String get saved => 'บันทึกแล้ว';

  @override
  String get delete => 'ลบ';

  @override
  String get materialInfo => 'ข้อมูลเนื้อหา';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get confirm => 'ตกลง';

  @override
  String get refresh => 'รีเฟรช';

  @override
  String studyRecords(int count) {
    return 'บันทึกการเรียนรู้ ($count)';
  }

  @override
  String get targetLanguageFilter => 'ตัวกรองภาษาเป้าหมาย:';

  @override
  String get noRecords => 'ไม่มีบันทึกสำหรับภาษาที่เลือก';

  @override
  String get saveTranslationsFromSearch => 'บันทึกคำแปลจากโหมดค้นหา';

  @override
  String get flip => 'พลิก';

  @override
  String get hide => 'ซ่อน';

  @override
  String get deleteRecord => 'ลบบันทึก';

  @override
  String get confirmDelete => 'คุณแน่ใจหรือไม่ว่าต้องการลบบันทึกนี้?';

  @override
  String get recordDeleted => 'ลบบันทึกเรียบร้อยแล้ว';

  @override
  String deleteFailed(String error) {
    return 'การลบล้มเหลว: $error';
  }

  @override
  String get importJsonFile => 'นำเข้าไฟล์ JSON';

  @override
  String get importing => 'กำลังนำเข้า...';

  @override
  String get importComplete => 'นำเข้าเสร็จสมบูรณ์';

  @override
  String get importFailed => 'การนำเข้าล้มเหลว';

  @override
  String importFile(String fileName) {
    return 'ไฟล์: $fileName';
  }

  @override
  String importTotal(int count) {
    return 'ทั้งหมด: $count รายการ';
  }

  @override
  String importAdded(int count) {
    return 'เพิ่มแล้ว: $count รายการ';
  }

  @override
  String importSkipped(int count) {
    return 'ข้าม: $count รายการ';
  }

  @override
  String get errors => 'ข้อผิดพลาด:';

  @override
  String get error => 'ข้อผิดพลาด';

  @override
  String importErrorMessage(String error) {
    return 'ไม่สามารถนำเข้าไฟล์ได้:\\n$error';
  }

  @override
  String get selectStudyMaterial => 'เลือกสื่อการเรียนรู้';

  @override
  String get subject => 'หัวข้อ:';

  @override
  String get source => 'ที่มา:';

  @override
  String get file => 'ไฟล์:';

  @override
  String progress(int current, int total) {
    return 'ความคืบหน้า: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'กรุณานำเข้าไฟล์ JSON';

  @override
  String get selectMaterialPrompt => 'กรุณาเลือกสื่อการเรียนรู้';

  @override
  String get studyComplete => 'เรียนแล้ว';

  @override
  String get markAsStudied => 'ทำเครื่องหมายว่าเรียนแล้ว';

  @override
  String get listening => 'กำลังฟัง...';

  @override
  String get recognized => 'จดจำเสร็จสมบูรณ์';

  @override
  String recognitionFailed(String error) {
    return 'การจดจำเสียงล้มเหลว: $error';
  }

  @override
  String get checking => 'กำลังตรวจสอบ...';

  @override
  String get translating => 'กำลังแปล...';

  @override
  String get translationComplete => 'แปลเสร็จสมบูรณ์ (ต้องบันทึก)';

  @override
  String get translationLoaded => 'โหลดคำแปลที่บันทึกไว้';

  @override
  String translationFailed(String error) {
    return 'การแปลล้มเหลว: $error';
  }

  @override
  String get enterTextToTranslate => 'กรุณาป้อนข้อความเพื่อแปล';

  @override
  String get saving => 'ไกำลังบันทึก...';

  @override
  String get noTranslationToSave => 'ไม่มีคำแปลให้บันทึก';

  @override
  String saveFailed(String error) {
    return 'การบันทึกล้มเหลว: $error';
  }

  @override
  String get playing => 'กำลังเล่น...';

  @override
  String get noTextToPlay => 'ไม่มีข้อความให้เล่น';

  @override
  String playbackFailed(String error) {
    return 'การเล่นล้มเหลว: $error';
  }

  @override
  String get sourceLanguage => 'ภาษาต้นทาง';

  @override
  String get targetLanguage => 'ภาษาเป้าหมาย';

  @override
  String get similarTextFound => 'พบข้อความที่คล้ายกัน';

  @override
  String get useExistingText => 'ใช้ที่มีอยู่';

  @override
  String get createNew => 'สร้างรายการใหม่';

  @override
  String reviewCount(int count) {
    return 'ทบทวน $count ครั้ง';
  }

  @override
  String get tabSpeaking => 'การพูด';

  @override
  String get speakingPractice => 'ฝึกพูด';

  @override
  String intervalSeconds(int seconds) {
    return 'ระยะห่าง: $secondsวิ';
  }

  @override
  String get yourPronunciation => 'การออกเสียงของคุณ';

  @override
  String get correctAnswer => 'คำตอบที่ถูกต้อง';

  @override
  String score(String score) {
    return 'ความแม่นยำ: $score%';
  }

  @override
  String get perfect => 'ยอดเยี่ยม!';

  @override
  String get good => 'ดี';

  @override
  String get tryAgain => 'ลองอีกครั้ง';

  @override
  String get startPractice => 'เริ่มฝึก';

  @override
  String get stopPractice => 'หยุดฝึก';

  @override
  String get helpTitle => 'ช่วยเหลือ & คู่มือ';

  @override
  String get helpTabModes => 'โหมด';

  @override
  String get helpTabJson => 'รูปแบบ JSON';

  @override
  String get helpTabTour => 'ทัวร์';

  @override
  String get helpMode1Desc => 'จดจำเสียง แปลเป็นภาษาเป้าหมาย และฟังผลลัพธ์';

  @override
  String get helpMode1Details =>
      '• เสียงเข้า: แตะไอคอนไมค์เพื่อเริ่ม/หยุด\n• ข้อความเข้า: พิมพ์โดยตรงเพื่อแปล\n• ค้นหาอัตโนมัติ: ตรวจจับประโยคที่มีอยู่\n• แปล: แตะปุ่มเพื่อแปลทันที\n• ฟัง: ไอคอนลำโพงสำหรับ TTS\n• บันทึก: เพิ่มลงในประวัติ\n• ล้าง: รีเซ็ตข้อมูลทั้งหมด';

  @override
  String get helpMode2Desc => 'ทบทวนประโยคที่บันทึกไว้พร้อมซ่อนคำแปลอัตโนมัติ';

  @override
  String get helpMode2Details =>
      '• เลือกสื่อ: เลือกชุดหรือ \'ทบทวนทั้งหมด\'\n• พลิกการ์ด: ใช้ \'แสดง/ซ่อน\' เพื่อดูคำแปล\n• ฟัง: เล่น TTS สำหรับประโยคนั้น\n• ทำเครื่องหมาย: ติ๊ก (V) สำหรับรายการที่เสร็จแล้ว\n• ลบ: กดค้างที่การ์ดเพื่อลบ\n• ตัวกรอง: ดูทั้งหมดหรือกรองตามสื่อ';

  @override
  String get helpMode3Desc => 'ฝึกพูดโดยการฟังและพูดตาม (Shadowing)';

  @override
  String get helpMode3Details =>
      '• เลือกสื่อ: เลือกแพ็คเกจการเรียนรู้\n• ระยะห่าง: [-] [+] ปรับเวลารอ (3วิ-60วิ)\n• เริ่ม/หยุด: ควบคุมเซสชัน\n• พูด: ฟังเสียงและพูดตาม\n• ผลตอบรับ: คะแนนความแม่นยำ (0-100)\n• ลองใหม่: ใช้ปุ่มลองใหม่หากไม่พบเสียง';

  @override
  String get helpJsonDesc =>
      'เพื่อนำเข้าสื่อการเรียนรู้ในโหมด 3 กรุณาสร้างไฟล์ JSON ตามโครงสร้างนี้:';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get startTutorial => 'เริ่มทัวร์';

  @override
  String get tutorialMicTitle => 'เสียงเข้า';

  @override
  String get tutorialMicDesc => 'แตะปุ่มไมค์เพื่อเริ่มเสียงเข้า';

  @override
  String get tutorialTabDesc =>
      'คุณสามารถเลือกโหมดการเรียนรู้ที่ต้องการได้ที่นี่';

  @override
  String get tutorialTapToContinue => 'แตะเพื่อดำเนินการต่อ';

  @override
  String get tutorialTransTitle => 'แปลภาษา';

  @override
  String get tutorialTransDesc => 'แตะที่นี่เพื่อแปลข้อความของคุณ';

  @override
  String get tutorialSaveTitle => 'บันทึก';

  @override
  String get tutorialSaveDesc => 'บันทึกคำแปลของคุณลงในบันทึกการเรียนรู้';

  @override
  String get tutorialM2SelectTitle => 'เลือก & กรอง';

  @override
  String get tutorialM2SelectDesc =>
      'เลือกสื่อการเรียนรู้หรือสลับไปที่ \'ทบทวนทั้งหมด\'';

  @override
  String get tutorialM2ListTitle => 'รายการเรียนรู้';

  @override
  String get tutorialM2ListDesc =>
      'ตรวจสอบการ์ดที่บันทึกไว้และพลิกดูคำตอบ (Long-press to delete)';

  @override
  String get tutorialM3SelectTitle => 'เลือกสื่อ';

  @override
  String get tutorialM3SelectDesc => 'เลือกชุดสื่อสำหรับการฝึกพูด';

  @override
  String get tutorialM3IntervalTitle => 'ระยะห่าง';

  @override
  String get tutorialM3IntervalDesc => 'ปรับเวลารอระหว่างประโยค';

  @override
  String get tutorialM3StartTitle => 'เริ่มฝึก';

  @override
  String get tutorialM3StartDesc => 'แตะเล่นเพื่อเริ่มฟังและพูดตาม';

  @override
  String get startWarning => 'คำเตือน';

  @override
  String get noVoiceDetected => 'ไม่พบเสียง';

  @override
  String get tooltipSearch => 'ค้นหา';

  @override
  String get tooltipStudyReview => 'เรียน+ทบทวน';

  @override
  String get tooltipSpeaking => 'พูด';

  @override
  String get tooltipDecrease => 'ลด';

  @override
  String get tooltipIncrease => 'เพิ่ม';

  @override
  String get languageSettings => 'การตั้งค่าภาษา';

  @override
  String get tutorialM2DropdownDesc => 'เลือกเนื้อหาการเรียน';

  @override
  String get tutorialM2ImportDesc => 'นำเข้าไฟล์ JSON จากโฟลเดอร์อุปกรณ์';

  @override
  String get tutorialLangSettingsTitle => 'Language Settings';

  @override
  String get tutorialLangSettingsDesc =>
      'Configure source and target languages for translation.';

  @override
  String get copy => 'Copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard!';

  @override
  String get tutorialContextTitle => 'แท็กบริบท';

  @override
  String get tutorialContextDesc =>
      'เพิ่มบริบท (เช่น ตอนเช้า) เพื่อแยกแยะประโยคที่คล้ายกัน';

  @override
  String get thinkingTimeInterval => 'Thinking Time Interval';

  @override
  String get thinkingTimeDesc => 'Time to think before the answer is revealed.';

  @override
  String get autoPlay => 'Auto-Play';

  @override
  String get timeUp => 'Time Up!';

  @override
  String get gameModeTitle => 'Game Mode';

  @override
  String get gameModeDesc => 'Choose your practice mode';

  @override
  String get wordDefenseTitle => 'Word Defense';

  @override
  String get wordDefenseDesc =>
      'Defend your base by speaking words correctly before enemies reach you.';

  @override
  String get dialogueQuestTitle => 'Dialogue Quest';

  @override
  String get dialogueQuestDesc =>
      'Roleplay in scenarios. Choose the right response and speak it aloud.';

  @override
  String get labelType => 'Type:';

  @override
  String get labelWord => 'Word';

  @override
  String get labelSentence => 'Sentence';

  @override
  String get contextTagLabel =>
      'Context/Situation (Optional) - Ex: Morning greeting, polite form';

  @override
  String get contextTagHint =>
      'Describe situation for easier classification later';

  @override
  String get translationLimitExceeded => 'Translation Limit Exceeded';

  @override
  String get translationLimitMessage =>
      'You have used all your free daily translations (5). Watch an ad to refill 5 immediately?';

  @override
  String get watchAdAndRefill => 'Watch Ad & Refill (+5)';

  @override
  String get translationRefilled => 'Translations refilled by 5!';

  @override
  String get adLoading => 'Loading ad, please try again in a moment.';

  @override
  String get reviewAll => 'Review All';

  @override
  String totalRecords(int count) {
    return 'Total $count records (View All)';
  }

  @override
  String get filterAll => 'All';

  @override
  String get practiceWordsOnly => 'Practice Words Only';

  @override
  String get resetPracticeHistory => 'Reset Practice History';

  @override
  String get retry => 'Retry?';

  @override
  String get noStudyMaterial => 'No study material found.';

  @override
  String get gameOver => 'Game Over';

  @override
  String get playAgain => 'Play Again';

  @override
  String get speakNow => 'Speak now!';

  @override
  String get scoreLabel => 'Score';

  @override
  String get viewOnlineGuide => 'View Online User Guide';

  @override
  String get getMaterials => 'Get Materials';

  @override
  String get swapLanguages => 'Swap Languages';

  @override
  String get next => 'Next';

  @override
  String get wordModeLabel => 'Word Mode';

  @override
  String get accuracy => 'Accuracy';

  @override
  String get basicDefault => 'Basic (Default)';

  @override
  String get basic => 'Basic';

  @override
  String get tutorialM3WordsTitle => 'Practice Words';

  @override
  String get tutorialM3WordsDesc =>
      'Check this to practice only your saved words.';

  @override
  String get enterTextHint => 'Enter text to translate';

  @override
  String get micButtonTooltip => 'Start Listening';

  @override
  String get menuHelp => 'Help';

  @override
  String get menuWebDownload => 'Get Material from Web';

  @override
  String get menuDeviceImport => 'Import from Device';

  @override
  String get menuSettings => 'Settings';

  @override
  String get basicWords => 'Basic Word Repository';

  @override
  String get basicSentences => 'Basic Sentence Repository';

  @override
  String get selectMaterialSet => '학습 자료집 선택 (TODO: Translate)';

  @override
  String get sectionWords => '단어 (TODO: Translate)';

  @override
  String get sectionSentences => '문장 (TODO: Translate)';

  @override
  String get languageSettingsTitle => 'Language Settings';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get mode3Start => 'Start';

  @override
  String get mode3Stop => 'Stop';

  @override
  String get mode3Next => 'Next';

  @override
  String get mode3TryAgain => 'Try Again';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialSwapDesc => 'ฉันสลับใช้ภาษาที่ฉันกำลังเรียนอยู่';

  @override
  String get recognizedText => 'Recognized Text:';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get menuSelectMaterialSet => 'เลือกสื่อการเรียน';

  @override
  String get sectionWord => 'ส่วนของคำ';

  @override
  String get sectionSentence => 'ส่วนประโยค';

  @override
  String get tabWord => 'คำ';

  @override
  String get tabSentence => 'ประโยค';

  @override
  String get errorProfanity => '비속어가 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorHateSpeech => '혐오 표현이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorSexualContent =>
      '선정적인 내용이 포함되어 있어 번역할 수 없습니다. (TODO: Translate)';

  @override
  String get errorOtherSafety => 'AI 안전 정책에 의해 번역이 거부되었습니다. (TODO: Translate)';

  @override
  String get clearAll => '모두 지우기 (TODO: Translate)';

  @override
  String get disambiguationTitle => '의미 선택 (TODO: Translate)';

  @override
  String get disambiguationPrompt => '어떤 의미로 번역하시겠습니까? (TODO: Translate)';

  @override
  String get skip => '건너뛰기 (TODO: Translate)';

  @override
  String get inputModeTitle => 'Input';

  @override
  String get reviewModeTitle => 'Review';

  @override
  String get practiceModeTitle => 'Practice';

  @override
  String get chatHistoryTitle => 'ประวัติการสนทนา';

  @override
  String get chatNewChat => 'เริ่มแชทใหม่';

  @override
  String get chatChoosePersona => 'Choose a Persona';

  @override
  String get chatTypeHint => 'Type a message...';

  @override
  String chatFailed(Object error) {
    return '채팅 실패: $error';
  }

  @override
  String get chatNoConversations => 'No conversations yet';

  @override
  String get chatStartNewPrompt => 'Start a new chat to practice!';

  @override
  String chatFromConversation(Object speaker) {
    return '대화 발췌 ($speaker)';
  }

  @override
  String get personaTeacher => 'English Teacher';

  @override
  String get personaGuide => 'Travel Guide';

  @override
  String get personaFriend => 'Local Friend';

  @override
  String get chatUntitled => '제목 없는 대화';

  @override
  String get chatAiChat => 'แชท AI';

  @override
  String get helpModeChatDesc => 'AI 페르소나와 대화하며 실전 회화를 연습하고 유용한 문장을 저장하세요.';

  @override
  String get helpModeChatDetails =>
      '• 채팅 시작: 상단 메뉴의 말풍선 아이콘 클릭\n• 페르소나 선택: 선생님, 가이드, 친구 중 선택\n• 대화 및 저장: AI 응답은 자동 번역됩니다. 메시지를 클릭하여 복습 모드로 저장하세요\n• 2개 국어 표시: 모든 메시지에 대해 모국어와 학습 언어를 함께 표시합니다\n• 듣기 기능 (TTS): 스피커 아이콘을 눌러 각 언어의 발음을 들어보세요\n• 자동 제목: 대화 주제에 따라 AI가 제목을 추천합니다\n• 이력 관리: 과거 대화 내용을 언제든 다시 확인할 수 있습니다';

  @override
  String get tutorialAiChatTitle => 'AI Chat';

  @override
  String get tutorialAiChatDesc =>
      'Practice real conversation with AI personas here.';

  @override
  String get me => 'ฉัน';

  @override
  String get helpDialogueImportDesc => '완성된 대화문 세트를 JSON 파일로 한 번에 가져올 수 있습니다.';

  @override
  String get helpDialogueImportDetails =>
      '• JSON 구조: `entries` 대신 `dialogues` 배열을 사용합니다.\n• 자동 생성: 대화 제목, 페르소나, 메시지 순서가 자동으로 구성됩니다.\n• 확인 위치: 가져온 대화는 AI 채팅 모드의 \'대화 기록\' 탭에서 확인할 수 있습니다.';

  @override
  String mode1SelectedMaterial(Object name) {
    return '현재 선택된 자료집: $name';
  }

  @override
  String get basicWordRepository => 'คลังคำศัพท์พื้นฐาน';

  @override
  String get basicSentenceRepository => 'คลังประโยคพื้นฐาน';

  @override
  String get chatEndTitle => 'End & Save Chat';

  @override
  String get chatEndMessage =>
      'Do you want to end this conversation? You can set a title for it.';

  @override
  String get chatSaveAndExit => 'บันทึกและออก';

  @override
  String get errorSelectCategory => 'Please select word or sentence first!';

  @override
  String get tutorialM1ToggleTitle => 'Word/Sentence Mode';

  @override
  String get tutorialM1ToggleDesc =>
      'Switch between Word and Sentence mode here. Words are saved with larger text.';
}
