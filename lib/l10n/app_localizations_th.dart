// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get accuracy => 'ความถูกต้อง';

  @override
  String get ttsMissing =>
      'ไม่มีเอ็นจินเสียงสำหรับภาษาดังกล่าวติดตั้งในอุปกรณ์ของคุณ';

  @override
  String get ttsInstallGuide =>
      'โปรดติดตั้งข้อมูลภาษาที่ การตั้งค่า Android > Google TTS';

  @override
  String get adLoading => 'กำลังโหลดโฆษณา โปรดลองอีกครั้งในภายหลัง';

  @override
  String get addNewSubject => 'เพิ่มชื่อใหม่';

  @override
  String get addParticipant => 'เพิ่มผู้เข้าร่วม';

  @override
  String get addTagHint => 'เพิ่มแท็ก...';

  @override
  String get alreadyHaveAccount => 'มีบัญชีอยู่แล้ว?';

  @override
  String get appTitle => 'Talkie';

  @override
  String get autoPlay => 'เล่นอัตโนมัติ';

  @override
  String get basic => 'พื้นฐาน';

  @override
  String get basicDefault => 'พื้นฐาน';

  @override
  String get basicMaterialRepository => 'คลังประโยค/คำศัพท์พื้นฐาน';

  @override
  String get basicSentenceRepository => 'คลังประโยคพื้นฐาน';

  @override
  String get basicSentences => 'คลังประโยคพื้นฐาน';

  @override
  String get basicWordRepository => 'คลังคำศัพท์พื้นฐาน';

  @override
  String get basicWords => 'คลังคำศัพท์พื้นฐาน';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get caseObject => 'กรรม';

  @override
  String get casePossessive => 'แสดงความเป็นเจ้าของ';

  @override
  String get casePossessivePronoun => 'สรรพนามแสดงความเป็นเจ้าของ';

  @override
  String get caseReflexive => 'สะท้อน';

  @override
  String get caseSubject => 'ประธาน';

  @override
  String get chatAiChat => 'แชท';

  @override
  String get chatAllConversations => 'การสนทนาทั้งหมด';

  @override
  String get chatChoosePersona => 'เลือกบุคลิก';

  @override
  String get chatEndMessage => 'คุณต้องการสิ้นสุดการสนทนาหรือไม่';

  @override
  String get chatEndTitle => 'สิ้นสุดและบันทึกการสนทนา';

  @override
  String chatFailed(Object error) {
    return 'การแชทล้มเหลว: $error';
  }

  @override
  String chatFromConversation(Object speaker) {
    return 'คัดลอกจากการสนทนา ($speaker)';
  }

  @override
  String get chatHistoryTitle => 'ประวัติการสนทนา';

  @override
  String get chatNew => 'การสนทนาใหม่';

  @override
  String get chatNewChat => 'เริ่มแชทใหม่';

  @override
  String get chatNoConversations => 'ยังไม่มีการสนทนา';

  @override
  String get chatSaveAndExit => 'บันทึกและออก';

  @override
  String get chatStartNewPrompt => 'ลองเริ่มการสนทนาใหม่เพื่อฝึกฝน!';

  @override
  String get chatTypeHint => 'พิมพ์ข้อความ...';

  @override
  String get chatUntitled => 'การสนทนาที่ไม่มีชื่อ';

  @override
  String get checking => 'กำลังตรวจสอบ...';

  @override
  String get clearAll => 'ล้างทั้งหมด';

  @override
  String get confirm => 'ตกลง';

  @override
  String get confirmDelete => 'คุณแน่ใจหรือไม่ว่าต้องการลบบันทึกนี้?';

  @override
  String get confirmDeleteConversation =>
      'คุณต้องการลบการสนทนานี้หรือไม่\nการสนทนาที่ถูกลบจะไม่สามารถกู้คืนได้';

  @override
  String get confirmDeleteParticipant => 'คุณต้องการลบผู้เข้าร่วมนี้หรือไม่';

  @override
  String get contextTagHint => 'ระบุสถานการณ์เพื่อให้ง่ายต่อการแยกแยะในภายหลัง';

  @override
  String get contextTagLabel =>
      'บริบท/สถานการณ์ (ไม่บังคับ) - เช่น ทักทายตอนเช้า, คำสุภาพ';

  @override
  String get copiedToClipboard => 'คัดลอกไปยังคลิปบอร์ดแล้ว!';

  @override
  String get copy => 'คัดลอก';

  @override
  String get correctAnswer => 'คำตอบที่ถูกต้อง';

  @override
  String get createNew => 'สร้างรายการใหม่';

  @override
  String get currentLocation => 'ตำแหน่งปัจจุบัน';

  @override
  String get currentMaterialLabel => 'ชุดข้อมูลที่เลือกปัจจุบัน:';

  @override
  String get delete => 'ลบ';

  @override
  String deleteFailed(String error) {
    return 'การลบล้มเหลว: $error';
  }

  @override
  String get deleteRecord => 'ลบบันทึก';

  @override
  String get dialogueQuestDesc =>
      'ฝึกสนทนาผ่านสถานการณ์ เลือกคำตอบที่เหมาะสมและพูด';

  @override
  String get dialogueQuestTitle => 'เควสบทสนทนา';

  @override
  String get disambiguationPrompt => 'คุณต้องการให้แปลเป็นความหมายใด';

  @override
  String get disambiguationTitle => 'เลือกความหมาย';

  @override
  String get dontHaveAccount => 'ยังไม่มีบัญชี?';

  @override
  String get editParticipant => 'แก้ไขผู้เข้าร่วม';

  @override
  String get email => 'อีเมล';

  @override
  String get emailAlreadyInUse =>
      'อีเมลนี้ถูกใช้ไปแล้ว โปรดเข้าสู่ระบบหรือรีเซ็ตรหัสผ่าน';

  @override
  String get enterNewSubjectName => 'ใส่ชื่อใหม่';

  @override
  String get enterSentenceHint => 'พิมพ์ประโยค...';

  @override
  String get enterTextHint => 'ป้อนข้อความที่จะแปล';

  @override
  String get enterTextToTranslate => 'กรุณาป้อนข้อความเพื่อแปล';

  @override
  String get enterWordHint => 'พิมพ์คำ...';

  @override
  String get error => 'ข้อผิดพลาด';

  @override
  String get errorHateSpeech =>
      'ไม่สามารถแปลได้เนื่องจากมีคำพูดแสดงความเกลียดชัง';

  @override
  String get errorOtherSafety => 'การแปลถูกปฏิเสธโดยนโยบายความปลอดภัย AI';

  @override
  String get errorProfanity => 'ไม่สามารถแปลได้เนื่องจากมีคำหยาบคาย';

  @override
  String get errorSelectCategory => 'โปรดเลือกคำศัพท์หรือประโยคก่อน!';

  @override
  String get errorSexualContent =>
      'ไม่สามารถแปลได้เนื่องจากมีเนื้อหาที่ไม่เหมาะสม';

  @override
  String get errors => 'ข้อผิดพลาด:';

  @override
  String get female => 'หญิง';

  @override
  String get file => 'ไฟล์:';

  @override
  String get filterAll => 'ทั้งหมด';

  @override
  String get flip => 'พลิก';

  @override
  String get formComparative => 'ขั้นกว่า';

  @override
  String get formInfinitive => 'Infinitive/ปัจจุบัน';

  @override
  String get formPast => 'อดีต';

  @override
  String get formPastParticiple => 'กริยารูปอดีต';

  @override
  String get formPlural => 'พหูพจน์';

  @override
  String get formPositive => 'ขั้นปกติ';

  @override
  String get formPresent => 'ปัจจุบัน';

  @override
  String get formPresentParticiple => 'Present Participle (ing)';

  @override
  String get formSingular => 'เอกพจน์';

  @override
  String get formSuperlative => 'ขั้นสูงสุด';

  @override
  String get formThirdPersonSingular => 'เอกพจน์บุรุษที่ 3';

  @override
  String get gameModeDesc => 'เลือกโหมดเกมเพื่อฝึกฝน';

  @override
  String get gameModeTitle => 'โหมดเกม';

  @override
  String get gameOver => 'จบเกม';

  @override
  String get gender => 'เพศ';

  @override
  String get generalTags => 'แท็กทั่วไป';

  @override
  String get getMaterials => 'รับข้อมูล';

  @override
  String get good => 'ดี';

  @override
  String get googleContinue => 'ดำเนินการต่อด้วย Google';

  @override
  String get helpDialogueImportDesc => 'นำเข้าชุดบทสนทนาทั้งหมดเป็นไฟล์ JSON';

  @override
  String get helpDialogueImportDetails =>
      '• JSON Structure: Uses `dialogues` array instead of `entries`.\n• Auto-Restoration: Conversation title, persona, and message order are recovered.\n• Location: Imported chats appear in the AI Chat mode\'s \'History\' tab.';

  @override
  String get helpJsonDesc =>
      'เพื่อนำเข้าสื่อการเรียนรู้ในโหมด 3 กรุณาสร้างไฟล์ JSON ตามโครงสร้างนี้:';

  @override
  String get helpJsonTypeDialogue => 'บทสนทนา';

  @override
  String get helpJsonTypeSentence => 'ประโยค';

  @override
  String get helpJsonTypeWord => 'คำศัพท์';

  @override
  String get helpMode1Desc => 'จดจำเสียง แปลเป็นภาษาเป้าหมาย และฟังผลลัพธ์';

  @override
  String get helpMode1Details =>
      '• เสียงเข้า: แตะไอคอนไมค์เพื่อเริ่ม/หยุด\n• ข้อความเข้า: พิมพ์โดยตรงเพื่อแปล\n• ค้นหาอัตโนมัติ: ตรวจจับประโยคที่มีอยู่\n• แปล: แตะปุ่มเพื่อแปลทันที\n• ฟัง: ไอคอนลำโพงสำหรับ TTS\n• บันทึก: เพิ่มลงในประวัติ\n• ล้าง: รีเซ็ตข้อมูลทั้งหมด';

  @override
  String get helpMode2Desc => 'ทบทวนประโยคที่บันทึกไว้พร้อมซ่อนคำแปลอัตโนมัติ';

  @override
  String get helpMode2Details =>
      '• เลือกชุดเอกสาร: ใช้ \'เลือกชุดเอกสาร\' หรือ \'คลังเอกสารออนไลน์\' ในเมนู (⋮) ด้านบนขวา\n• พลิกการ์ด: ตรวจสอบคำแปลด้วย \'แสดง/ซ่อน\'\n• ฟัง: เล่นการออกเสียงด้วยไอคอนลำโพง\n• เรียนรู้เสร็จสิ้น: ทำเครื่องหมายถูก (V) เพื่อดำเนินการเรียนรู้ให้เสร็จสิ้น\n• ลบ: กดการ์ดค้างไว้ (แตะค้าง) เพื่อลบบันทึก\n• ค้นหาและกรอง: รองรับแถบค้นหา (การค้นหาอัจฉริยะแบบเรียลไทม์) และตัวกรองแท็ก, ตัวอักษรเริ่มต้น';

  @override
  String get helpMode3Desc => 'ฝึกการออกเสียงโดยฟังและพูดตามประโยค (Shadowing)';

  @override
  String get helpMode3Details =>
      '• เลือกสื่อ: เลือกแพ็คเกจการเรียนรู้\n• ระยะห่าง: [-] [+] ปรับเวลารอ (3วิ-60วิ)\n• เริ่ม/หยุด: ควบคุมเซสชัน\n• พูด: ฟังเสียงและพูดตาม\n• ผลตอบรับ: คะแนนความแม่นยำ (0-100)\n• ลองใหม่: ใช้ปุ่มลองใหม่หากไม่พบเสียง';

  @override
  String get helpModeChatDesc => 'ฝึกสนทนาจริงกับ AI Persona';

  @override
  String get helpModeChatDetails =>
      '• แชท AI: ฝึกสนทนาจริงกับบุคลิกต่างๆ\n• การจัดการผู้เข้าร่วม: ตั้งค่าภาษาของคุณและภาษาของ AI เพื่อหลีกเลี่ยงความไม่สอดคล้องกันของภาษา\n• สถานการณ์ GPS: สร้างสถานการณ์การสนทนาที่เป็นธรรมชาติโดยอิงจากตำแหน่งปัจจุบันของคุณ\n• การเก็บบันทึก: การสนทนาทั้งหมดจะถูกจัดเก็บอย่างปลอดภัยตาม ID และจะยังคงอยู่แม้ว่าคุณจะเปลี่ยนชื่อ';

  @override
  String get helpTabJson => 'รูปแบบ JSON';

  @override
  String get helpTabModes => 'โหมด';

  @override
  String get helpTabTour => 'ทัวร์';

  @override
  String get helpTitle => 'ช่วยเหลือ & คู่มือ';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'ซ่อน';

  @override
  String importAdded(int count) {
    return 'เพิ่มแล้ว: $count รายการ';
  }

  @override
  String get importComplete => 'นำเข้าเสร็จสมบูรณ์';

  @override
  String get importDuplicateTitleError =>
      'มีข้อมูลชื่อเดียวกันอยู่แล้ว โปรดเปลี่ยนชื่อแล้วลองอีกครั้ง';

  @override
  String importErrorMessage(String error) {
    return 'ไม่สามารถนำเข้าไฟล์ได้:\\n$error';
  }

  @override
  String get importFailed => 'การนำเข้าล้มเหลว';

  @override
  String importFile(String fileName) {
    return 'ไฟล์: $fileName';
  }

  @override
  String get importJsonFile => 'นำเข้าไฟล์ JSON';

  @override
  String get importJsonFilePrompt => 'กรุณานำเข้าไฟล์ JSON';

  @override
  String importSkipped(int count) {
    return 'ข้าม: $count รายการ';
  }

  @override
  String importTotal(int count) {
    return 'ทั้งหมด: $count รายการ';
  }

  @override
  String get importing => 'กำลังนำเข้า...';

  @override
  String get inputModeTitle => 'ป้อนข้อมูล';

  @override
  String intervalSeconds(int seconds) {
    return 'ระยะห่าง: $secondsวิ';
  }

  @override
  String get invalidEmail => 'โปรดป้อนอีเมลที่ถูกต้อง';

  @override
  String get kakaoContinue => 'ดำเนินการต่อด้วย Kakao';

  @override
  String get labelLangCode => 'รหัสภาษา (เช่น en-US, ko-KR)';

  @override
  String get labelName => 'ชื่อ';

  @override
  String get labelNote => 'หมายเหตุ';

  @override
  String get labelPOS => 'ชนิดของคำ';

  @override
  String get labelRole => 'บทบาท';

  @override
  String get labelSentence => 'ประโยค';

  @override
  String get labelSentenceCollection => 'ชุดประโยค';

  @override
  String get labelSentenceType => 'ชนิดของประโยค';

  @override
  String get labelShowMemorized => 'สิ่งที่ทำเสร็จแล้ว';

  @override
  String get labelType => 'ประเภท:';

  @override
  String get labelWord => 'คำศัพท์';

  @override
  String get labelWordbook => 'ชุดคำศัพท์';

  @override
  String get language => 'ภาษา';

  @override
  String get languageSettings => 'การตั้งค่าภาษา';

  @override
  String get languageSettingsTitle => 'การตั้งค่าภาษา';

  @override
  String get libTitleFirstMeeting => 'การพบกันครั้งแรก';

  @override
  String get libTitleGreetings1 => 'คำทักทาย 1';

  @override
  String get libTitleNouns1 => 'คำนาม 1';

  @override
  String get libTitleVerbs1 => 'คำกริยา 1';

  @override
  String get listen => 'ฟัง';

  @override
  String get listening => 'กำลังฟัง...';

  @override
  String get loadingParticipants => 'กำลังโหลดผู้เข้าร่วม...';

  @override
  String get location => 'ตำแหน่ง';

  @override
  String get login => 'เข้าสู่ระบบ';

  @override
  String get logout => 'ออกจากระบบ';

  @override
  String get logoutConfirmMessage => 'คุณต้องการออกจากระบบบนอุปกรณ์นี้หรือไม่';

  @override
  String get logoutConfirmTitle => 'ออกจากระบบ';

  @override
  String get male => 'ชาย';

  @override
  String get manageParticipants => 'จัดการผู้เข้าร่วม';

  @override
  String get manual => 'ป้อนด้วยตนเอง';

  @override
  String get markAsStudied => 'ทำเครื่องหมายว่าเรียนแล้ว';

  @override
  String get materialInfo => 'ข้อมูลเนื้อหา';

  @override
  String get me => 'ฉัน';

  @override
  String get menuDeviceImport => 'นำเข้าข้อมูลจากอุปกรณ์';

  @override
  String get menuHelp => 'ช่วยเหลือ';

  @override
  String get menuLanguageSettings => 'การตั้งค่าภาษา';

  @override
  String get menuOnlineLibrary => 'คลังข้อมูลออนไลน์';

  @override
  String get menuSelectMaterialSet => 'เลือกสื่อการเรียน';

  @override
  String get menuSettings => 'Settings';

  @override
  String get menuTutorial => 'คู่มือการใช้งาน';

  @override
  String get menuWebDownload => 'คู่มือการใช้งาน';

  @override
  String get metadataDialogTitle => 'หมวดหมู่โดยละเอียด';

  @override
  String get metadataFormType => 'รูปแบบไวยากรณ์';

  @override
  String get metadataRootWord => 'รากศัพท์ (Root Word)';

  @override
  String get micButtonTooltip => 'เริ่มการรู้จำเสียง';

  @override
  String mode1SelectedMaterial(Object name) {
    return 'ชุดข้อมูลที่เลือกปัจจุบัน: $name';
  }

  @override
  String get mode2Title => 'ทบทวน';

  @override
  String get mode3Next => 'ถัดไป';

  @override
  String get mode3Start => 'เริ่ม';

  @override
  String get mode3Stop => 'จบ';

  @override
  String get mode3TryAgain => 'ลองอีกครั้ง';

  @override
  String get mySentenceCollection => 'คลังประโยคของฉัน';

  @override
  String get myWordbook => 'คลังคำศัพท์ของฉัน';

  @override
  String get neutral => 'เป็นกลาง';

  @override
  String get newSubjectName => 'ชื่อชุดคำศัพท์/วลีใหม่';

  @override
  String get next => 'ถัดไป';

  @override
  String get noDialogueHistory => 'ไม่มีประวัติการสนทนา';

  @override
  String get noInternetWarningMic =>
      'ไม่มีการเชื่อมต่ออินเทอร์เน็ต การรู้จำเสียงอาจไม่สามารถใช้งานได้ในโหมดออฟไลน์';

  @override
  String get noInternetWarningTranslate =>
      'ไม่มีการเชื่อมต่ออินเทอร์เน็ต คุณสมบัติการแปลจะไม่สามารถใช้งานได้ในโหมดออฟไลน์ โปรดใช้โหมดทบทวน';

  @override
  String get noMaterialsInCategory => 'ไม่มีข้อมูลในหมวดหมู่นี้';

  @override
  String get noParticipantsFound => 'ไม่พบผู้เข้าร่วมที่ลงทะเบียน';

  @override
  String get noRecords => 'ไม่มีบันทึกสำหรับภาษาที่เลือก';

  @override
  String get noStudyMaterial => 'ไม่มีสื่อการเรียนรู้';

  @override
  String get noTextToPlay => 'ไม่มีข้อความให้เล่น';

  @override
  String get noTranslationToSave => 'ไม่มีคำแปลให้บันทึก';

  @override
  String get noVoiceDetected => 'ไม่พบเสียง';

  @override
  String get notSelected => '- ไม่ได้เลือก -';

  @override
  String get onlineLibraryCheckInternet =>
      'โปรดตรวจสอบการเชื่อมต่ออินเทอร์เน็ตของคุณหรือลองอีกครั้งในภายหลัง';

  @override
  String get onlineLibraryLoadFailed => 'ไม่สามารถโหลดข้อมูลได้';

  @override
  String get onlineLibraryNoMaterials => 'ไม่มีข้อมูล';

  @override
  String get participantDeleted => 'ลบผู้เข้าร่วมแล้ว';

  @override
  String get participantRename => 'เปลี่ยนชื่อผู้เข้าร่วม';

  @override
  String get partner => 'คู่หู';

  @override
  String get partnerMode => 'โหมดคู่หู';

  @override
  String get password => 'รหัสผ่าน';

  @override
  String get passwordTooShort => 'รหัสผ่านต้องมีความยาวอย่างน้อย 6 ตัวอักษร';

  @override
  String get perfect => 'ยอดเยี่ยม!';

  @override
  String get personaFriend => 'เพื่อนท้องถิ่น';

  @override
  String get personaGuide => 'ไกด์นำเที่ยว';

  @override
  String get personaTeacher => 'ครูสอนภาษาอังกฤษ';

  @override
  String get playAgain => 'เล่นอีกครั้ง';

  @override
  String playbackFailed(String error) {
    return 'การเล่นล้มเหลว: $error';
  }

  @override
  String get playing => 'กำลังเล่น...';

  @override
  String get posAdjective => 'คำคุณศัพท์';

  @override
  String get posAdverb => 'คำวิเศษณ์';

  @override
  String get posConjunction => 'คำสันธาน';

  @override
  String get posInterjection => 'คำอุทาน';

  @override
  String get posNoun => 'คำนาม';

  @override
  String get posPreposition => 'คำบุพบท/คำลงท้าย';

  @override
  String get posPronoun => 'คำสรรพนาม';

  @override
  String get posVerb => 'คำกริยา';

  @override
  String get practiceModeTitle => 'ฝึกฝน';

  @override
  String get practiceWordsOnly => 'ฝึกเฉพาะคำศัพท์';

  @override
  String progress(int current, int total) {
    return 'ความคืบหน้า: $current / $total';
  }

  @override
  String recentNItems(int count) {
    return 'ดู $count รายการที่สร้างล่าสุด';
  }

  @override
  String recognitionFailed(String error) {
    return 'การจดจำเสียงล้มเหลว: $error';
  }

  @override
  String get recognized => 'จดจำเสร็จสมบูรณ์';

  @override
  String get recognizedText => 'ข้อความที่รู้จัก:';

  @override
  String get recordDeleted => 'ลบบันทึกเรียบร้อยแล้ว';

  @override
  String get refresh => 'รีเฟรช';

  @override
  String get reset => 'รีเซ็ต';

  @override
  String get resetPracticeHistory => 'รีเซ็ตประวัติการฝึก';

  @override
  String get retry => 'ลองอีกครั้ง?';

  @override
  String get reviewAll => 'ทบทวนทั้งหมด';

  @override
  String reviewCount(int count) {
    return 'ทบทวน $count ครั้ง';
  }

  @override
  String get reviewModeTitle => 'ทบทวน';

  @override
  String get roleAi => 'AI';

  @override
  String get roleThirdParty => 'บุคคลที่สาม';

  @override
  String get roleUser => 'ผู้ใช้';

  @override
  String get save => 'บันทึก';

  @override
  String get saveData => 'บันทึกข้อมูล';

  @override
  String saveFailed(String error) {
    return 'การบันทึกล้มเหลว: $error';
  }

  @override
  String get saveTranslationsFromSearch => 'บันทึกคำแปลจากโหมดค้นหา';

  @override
  String get saved => 'บันทึกแล้ว';

  @override
  String get saving => 'ไกำลังบันทึก...';

  @override
  String score(String score) {
    return 'ความแม่นยำ: $score%';
  }

  @override
  String get scoreLabel => 'คะแนน';

  @override
  String get search => 'ค้นหา';

  @override
  String get searchConditions => 'เงื่อนไขการค้นหา';

  @override
  String get searchSentenceHint => 'ค้นหาประโยค...';

  @override
  String get searchWordHint => 'ค้นหาคำศัพท์...';

  @override
  String get sectionSentence => 'ส่วนประโยค';

  @override
  String get sectionSentences => 'ประโยค';

  @override
  String get sectionWord => 'ส่วนของคำ';

  @override
  String get sectionWords => 'คำศัพท์';

  @override
  String get selectExistingSubject => 'เลือกชื่อที่มีอยู่';

  @override
  String get selectMaterialPrompt => 'กรุณาเลือกสื่อการเรียนรู้';

  @override
  String get selectMaterialSet => 'เลือกชุดสื่อการเรียนรู้';

  @override
  String get selectPOS => 'เลือกส่วนของคำพูด';

  @override
  String get selectParticipants => 'เลือกผู้เข้าร่วม';

  @override
  String get selectSentenceType => 'เลือกประเภทประโยค';

  @override
  String get selectStudyMaterial => 'เลือกสื่อการเรียนรู้';

  @override
  String get sendingMessage => '메시지 전송 중...';

  @override
  String get sentence => 'ประโยค';

  @override
  String get signUp => 'สมัครสมาชิก';

  @override
  String get similarTextFound => 'พบข้อความที่คล้ายกัน';

  @override
  String get skip => 'ข้าม';

  @override
  String get source => 'ที่มา:';

  @override
  String get sourceLanguage => 'ภาษาต้นทาง';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get speakNow => 'พูดเลย!';

  @override
  String get speaker => 'ผู้พูด';

  @override
  String get speakerSelect => 'เลือกผู้พูด';

  @override
  String get speakingPractice => 'ฝึกพูด';

  @override
  String get startChat => 'เริ่มการสนทนา';

  @override
  String get startPractice => 'เริ่มฝึก';

  @override
  String get startTutorial => 'เริ่มทัวร์';

  @override
  String get startWarning => 'คำเตือน';

  @override
  String get startsWith => 'ขึ้นต้นด้วย';

  @override
  String get statusCheckEmail =>
      'โปรดยืนยันอีเมลเพื่อดำเนินการยืนยันให้เสร็จสิ้น';

  @override
  String statusDownloading(Object name) {
    return 'กำลังดาวน์โหลด: $name...';
  }

  @override
  String statusImportFailed(Object error) {
    return 'นำเข้าล้มเหลว: $error';
  }

  @override
  String statusImportSuccess(Object name) {
    return '$name นำเข้าสำเร็จ';
  }

  @override
  String get statusLoggingIn => 'Logging in with Google...';

  @override
  String get statusLoginCancelled => 'การเข้าสู่ระบบถูกยกเลิก';

  @override
  String statusLoginFailed(Object error) {
    return 'เข้าสู่ระบบล้มเหลว: $error';
  }

  @override
  String get statusLoginSuccess => 'เข้าสู่ระบบสำเร็จ';

  @override
  String get statusLogoutSuccess => 'ออกจากระบบแล้ว';

  @override
  String statusSignUpFailed(Object error) {
    return 'สมัครสมาชิกไม่สำเร็จ: $error';
  }

  @override
  String get statusSigningUp => 'กำลังสมัครสมาชิก...';

  @override
  String get stopPractice => 'หยุดฝึก';

  @override
  String get studyComplete => 'เรียนแล้ว';

  @override
  String studyRecords(int count) {
    return 'บันทึกการเรียนรู้ ($count)';
  }

  @override
  String get styleFormal => 'คำสุภาพ';

  @override
  String get styleInformal => 'คำไม่เป็นทางการ';

  @override
  String get stylePolite => 'สุภาพ';

  @override
  String get styleSlang => 'สแลง/คำหยาบ';

  @override
  String get subject => 'หัวข้อ:';

  @override
  String get swapLanguages => 'สลับภาษา';

  @override
  String get switchToAi => 'เปลี่ยนเป็นโหมด AI';

  @override
  String get switchToPartner => 'เปลี่ยนเป็นโหมดคู่หู';

  @override
  String get syncingData => 'กำลังซิงค์ข้อมูล...';

  @override
  String get tabConversation => 'การสนทนา';

  @override
  String tabReview(int count) {
    return 'ทบทวน ($count)';
  }

  @override
  String get tabSentence => 'ประโยค';

  @override
  String get tabSpeaking => 'การพูด';

  @override
  String tabStudyMaterial(int count) {
    return 'สื่อการเรียนรู้ ($count)';
  }

  @override
  String get tabWord => 'คำ';

  @override
  String get tagFormal => 'สุภาพ';

  @override
  String get tagSelection => 'การเลือกแท็ก';

  @override
  String get targetLanguage => 'ภาษาเป้าหมาย';

  @override
  String get targetLanguageFilter => 'ตัวกรองภาษาเป้าหมาย:';

  @override
  String get targetLanguageLabel => 'Target Language';

  @override
  String get thinkingTimeDesc => 'เวลาในการคิดก่อนที่จะเปิดเผยคำตอบที่ถูกต้อง';

  @override
  String get thinkingTimeInterval => 'ความล่าช้าในการเล่น';

  @override
  String get timeUp => 'หมดเวลา!';

  @override
  String titleFormat(Object materialName, Object type) {
    return '$type: $materialName';
  }

  @override
  String get titleTagSelection => 'แท็กชื่อเรื่อง (คอลเลกชัน)';

  @override
  String get tooltipDecrease => 'ลด';

  @override
  String get tooltipIncrease => 'เพิ่ม';

  @override
  String get tooltipSearch => 'ค้นหา';

  @override
  String get tooltipSpeaking => 'พูด';

  @override
  String get tooltipStudyReview => 'เรียน+ทบทวน';

  @override
  String totalRecords(int count) {
    return 'บันทึกทั้งหมด $count รายการ (ดูทั้งหมด)';
  }

  @override
  String get translate => 'แปลภาษา';

  @override
  String get translating => 'กำลังแปล...';

  @override
  String get translation => 'คำแปล';

  @override
  String get translationComplete => 'แปลเสร็จสมบูรณ์ (ต้องบันทึก)';

  @override
  String translationFailed(String error) {
    return 'การแปลล้มเหลว: $error';
  }

  @override
  String get translationLimitExceeded => 'เกินขีดจำกัดการแปล';

  @override
  String get translationLimitMessage =>
      'คุณใช้การแปลฟรีรายวัน (5 ครั้ง) หมดแล้ว\n\nต้องการดูโฆษณาเพื่อเติม 5 ครั้งทันทีหรือไม่';

  @override
  String get translationLoaded => 'โหลดคำแปลที่บันทึกไว้';

  @override
  String get translationRefilled => 'เติมจำนวนการแปล 5 ครั้งแล้ว!';

  @override
  String get translationResultHint => 'ผลการแปล - แก้ไขได้';

  @override
  String get tryAgain => 'ลองอีกครั้ง';

  @override
  String get tutorialAiChatDesc => 'ฝึกสนทนาจริงกับบุคลิก AI';

  @override
  String get tutorialAiChatTitle => 'AI แชท';

  @override
  String get tutorialContextDesc =>
      'เพิ่มบริบท (เช่น ตอนเช้า) เพื่อแยกแยะประโยคที่คล้ายกัน';

  @override
  String get tutorialContextTitle => 'แท็กบริบท';

  @override
  String get tutorialLangSettingsDesc =>
      'ตั้งค่าภาษาต้นฉบับและภาษาเป้าหมายสำหรับการแปล';

  @override
  String get tutorialLangSettingsTitle => 'การตั้งค่าภาษา';

  @override
  String get tutorialM1ToggleDesc => 'สลับระหว่างโหมดคำศัพท์และประโยคที่นี่';

  @override
  String get tutorialM1ToggleTitle => 'โหมดคำศัพท์/ประโยค';

  @override
  String get tutorialM2DropdownDesc => 'เลือกเนื้อหาการเรียน';

  @override
  String get tutorialM2ImportDesc => 'นำเข้าไฟล์ JSON จากโฟลเดอร์อุปกรณ์';

  @override
  String get tutorialM2ListDesc =>
      'ตรวจสอบการ์ดที่บันทึกไว้และพลิกดูคำตอบ (Long-press to delete)';

  @override
  String get tutorialM2ListTitle => 'รายการเรียนรู้';

  @override
  String get tutorialM2SearchDesc =>
      'ค้นหาและค้นหาคำศัพท์และประโยคที่บันทึกไว้อย่างรวดเร็ว';

  @override
  String get tutorialM2SelectDesc =>
      'เลือกสื่อการเรียนรู้หรือสลับไปที่ \'ทบทวนทั้งหมด\'';

  @override
  String get tutorialM2SelectTitle => 'เลือก & กรอง';

  @override
  String get tutorialM3IntervalDesc => 'ปรับเวลารอระหว่างประโยค';

  @override
  String get tutorialM3IntervalTitle => 'ระยะห่าง';

  @override
  String get tutorialM3ResetDesc =>
      'Clear your progress and accuracy scores to start fresh.';

  @override
  String get tutorialM3ResetTitle => 'Reset History';

  @override
  String get tutorialM3SelectDesc => 'เลือกชุดสื่อสำหรับการฝึกพูด';

  @override
  String get tutorialM3SelectTitle => 'เลือกสื่อ';

  @override
  String get tutorialM3StartDesc => 'แตะเล่นเพื่อเริ่มฟังและพูดตาม';

  @override
  String get tutorialM3StartTitle => 'เริ่มฝึก';

  @override
  String get tutorialM3WordsDesc =>
      'ทำเครื่องหมายเพื่อฝึกเฉพาะคำศัพท์ที่บันทึกไว้';

  @override
  String get tutorialM3WordsTitle => 'ฝึกคำศัพท์';

  @override
  String get tutorialMicDesc => 'แตะปุ่มไมค์เพื่อเริ่มเสียงเข้า';

  @override
  String get tutorialMicTitle => 'เสียงเข้า';

  @override
  String get tutorialSaveDesc => 'บันทึกคำแปลของคุณลงในบันทึกการเรียนรู้';

  @override
  String get tutorialSaveTitle => 'บันทึก';

  @override
  String get tutorialSwapDesc => 'ฉันสลับใช้ภาษาที่ฉันกำลังเรียนอยู่';

  @override
  String get tutorialTabDesc =>
      'คุณสามารถเลือกโหมดการเรียนรู้ที่ต้องการได้ที่นี่';

  @override
  String get tutorialTapToContinue => 'แตะเพื่อดำเนินการต่อ';

  @override
  String get tutorialTransDesc => 'แตะที่นี่เพื่อแปลข้อความของคุณ';

  @override
  String get tutorialTransTitle => 'แปลภาษา';

  @override
  String get typeExclamation => 'ประโยคอุทาน';

  @override
  String get typeImperative => 'ประโยคคำสั่ง';

  @override
  String get typeQuestion => 'ประโยคคำถาม';

  @override
  String get typeStatement => 'ประโยคบอกเล่า';

  @override
  String get usageLimitTitle => 'ถึงขีดจำกัดการใช้งานแล้ว';

  @override
  String get useExistingText => 'ใช้ที่มีอยู่';

  @override
  String get viewOnlineGuide => 'ดูคู่มือออนไลน์';

  @override
  String get voluntaryTranslations => 'การแปลโดยผู้ใช้';

  @override
  String get watchAdAndRefill => 'ดูโฆษณาเพื่อเติม (+5 ครั้ง)';

  @override
  String get word => 'คำศัพท์';

  @override
  String get wordDefenseDesc =>
      'ป้องกันฐานของคุณโดยพูดคำศัพท์ก่อนที่ศัตรูจะมาถึง';

  @override
  String get wordDefenseTitle => 'ป้องกันคำศัพท์';

  @override
  String get wordModeLabel => 'โหมดคำศัพท์';

  @override
  String get yourPronunciation => 'การออกเสียงของคุณ';

  @override
  String get ttsUnsupportedNatively =>
      'อุปกรณ์นี้ไม่รองรับการอ่านออกเสียงด้วยภาษาที่เลือก';
}
