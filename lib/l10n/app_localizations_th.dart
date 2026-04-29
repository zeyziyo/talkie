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
  String get adLoading => 'กำลังโหลดโฆษณา โปรดลองอีกครั้งในภายหลัง';

  @override
  String get add => 'เพิ่ม';

  @override
  String get addNew => 'เพิ่มใหม่';

  @override
  String get addNewSubject => 'เพิ่มชื่อใหม่';

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
  String get checking => 'กำลังตรวจสอบ...';

  @override
  String get clearAll => 'ล้างทั้งหมด';

  @override
  String get confirm => 'ตกลง';

  @override
  String get confirmDelete => 'คุณแน่ใจหรือไม่ว่าต้องการลบบันทึกนี้?';

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
  String get developerContact => 'Developer Contact: talkie.help@gmail.com';

  @override
  String get dontHaveAccount => 'ยังไม่มีบัญชี?';

  @override
  String get email => 'อีเมล';

  @override
  String get emailAlreadyInUse =>
      'อีเมลนี้ถูกใช้ไปแล้ว โปรดเข้าสู่ระบบหรือรีเซ็ตรหัสผ่าน';

  @override
  String get enterNameHint => 'ป้อนชื่อ';

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
  String get errorQuotaExceeded =>
      '인공지능 서비스의 일일 할당량이 소진되었습니다. 잠시 후 또는 내일 다시 시도해 주세요.';

  @override
  String get errorSafetyPolicy => 'AI 안전 정책으로 인해 번역이 제한되었습니다.';

  @override
  String get copyOriginal => '원본 복사';

  @override
  String get originalCopied => '원본 텍스트가 복사되었습니다.';

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
  String get extractedText => 'ข้อความที่ตรวจพบ';

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
  String get helpJsonDesc =>
      'เพื่อนำเข้าสื่อการเรียนรู้ในโหมด 3 กรุณาสร้างไฟล์ JSON ตามโครงสร้างนี้:';

  @override
  String get helpJsonTypeSentence => 'ประโยค';

  @override
  String get helpJsonTypeWord => 'คำศัพท์';

  @override
  String get helpMode1Desc =>
      'เริ่มต้นเรียนรู้ภาษาด้วยวิธีที่ใช้งานง่ายที่สุดผ่านไมโครโฟน 3D ระดับพรีเมียมและไอคอนแป้นพิมพ์ขนาดใหญ่';

  @override
  String get helpMode1Details =>
      '• การตั้งค่าภาษา: ตรวจสอบภาษาของคุณและภาษาที่คุณกำลังเรียนรู้ และเปลี่ยนภาษาการเรียนรู้ได้ที่ปุ่มภาษาที่ด้านบนของหน้าจอหลัก\n• การป้อนข้อมูลอย่างง่าย: ป้อนข้อมูลทันทีผ่านไมโครโฟนขนาดใหญ่และหน้าต่างข้อความตรงกลาง\n• ตรวจสอบการตั้งค่า: หลังจากป้อนข้อมูลเสร็จแล้ว ให้กดปุ่มตรวจสอบสีน้ำเงินทางด้านขวา หน้าต่างการตั้งค่ารายละเอียดจะปรากฏขึ้น\n• การตั้งค่ารายละเอียด: ในกล่องโต้ตอบที่ปรากฏขึ้น คุณสามารถระบุสมุดข้อมูล คำอธิบายประกอบ (บันทึก) และแท็กที่จะบันทึกได้\n• แปลทันที: หลังจากทำการตั้งค่าเสร็จแล้ว ให้กดปุ่มแปลสีเขียวเพื่อให้ปัญญาประดิษฐ์ทำการแปลทันที\n• การค้นหาอัตโนมัติ: ตรวจจับและแสดงคำแปลที่มีอยู่และคล้ายกันแบบเรียลไทม์ขณะป้อนข้อมูล\n• ฟังและบันทึก: ฟังการออกเสียงด้วยไอคอนลำโพงที่ด้านล่างของผลการแปล และเพิ่มลงในรายการเรียนรู้ของคุณผ่าน \'บันทึกข้อมูล\'';

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
  String get helpNote =>
      'บันทึกความหมาย ตัวอย่าง หรือสถานการณ์ของคำศัพท์ได้อย่างอิสระ';

  @override
  String get helpNotebook => 'เลือกโฟลเดอร์ที่จะบันทึกผลการแปล';

  @override
  String get helpTabJson => 'รูปแบบ JSON';

  @override
  String get helpTabModes => 'โหมด';

  @override
  String get helpTabQuickStart => 'เริ่มต้นอย่างรวดเร็ว';

  @override
  String get helpTabTour => 'ทัวร์';

  @override
  String get helpTag => 'ป้อนคำหลักเพื่อจัดหมวดหมู่หรือค้นหาในภายหลัง';

  @override
  String get helpTitle => 'ช่วยเหลือ & คู่มือ';

  @override
  String get helpTourDesc =>
      'The **Highlight Circle** will guide you through the main features.\\n(e.g., You can delete a record by long-pressing when the **Highlight Circle** points to it.)';

  @override
  String get hide => 'ซ่อน';

  @override
  String get hintNoteExample => 'เช่น บริบท, คำพ้องเสียง';

  @override
  String get hintTagExample => 'เช่น ธุรกิจ, การเดินทาง...';

  @override
  String get homeTab => 'แปล';

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
  String importFolderSuccess(num files, num entries) {
    return 'นำเข้า $files ไฟล์, $entries รายการแล้ว';
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
  String get importSourceFile => 'ไฟล์ JSON เดี่ยว';

  @override
  String get importSourceFolder => 'โฟลเดอร์ (โครงสร้างไลบรารีตามภาษา)';

  @override
  String get importSourceTitle => 'เลือกแหล่งที่มาของการนำเข้า';

  @override
  String get importSourceZip => 'ไฟล์ ZIP (โฟลเดอร์ที่บีบอัด)';

  @override
  String importTotal(int count) {
    return 'ทั้งหมด: $count รายการ';
  }

  @override
  String get importing => 'กำลังนำเข้า...';

  @override
  String get inputContent => 'ข้อความต้นฉบับ';

  @override
  String get inputLanguage => 'ภาษาที่ใช้ป้อน';

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
  String get labelDetails => 'รายละเอียด';

  @override
  String get labelFilterMaterial => 'เอกสารประกอบ';

  @override
  String get labelFilterTag => 'แท็ก';

  @override
  String get labelLangCode => 'รหัสภาษา (เช่น en-US, ko-KR)';

  @override
  String get labelNote => 'หมายเหตุ';

  @override
  String get labelPOS => 'ชนิดของคำ';

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
  String get manual => 'ป้อนด้วยตนเอง';

  @override
  String get markAsStudied => 'ทำเครื่องหมายว่าเรียนแล้ว';

  @override
  String get materialInfo => 'ข้อมูลเนื้อหา';

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
  String get newNotebookTitle => 'ชื่อสมุดบันทึกใหม่';

  @override
  String get newSubjectName => 'ชื่อชุดคำศัพท์/วลีใหม่';

  @override
  String get next => 'ถัดไป';

  @override
  String get noDataForLanguage =>
      'ไม่มีข้อมูลการเรียนรู้ในภาษาที่คุณเลือกในฐานข้อมูลท้องถิ่น กรุณาดาวน์โหลดข้อมูลหรือเลือกภาษาอื่น';

  @override
  String get noMaterialsInCategory => 'ไม่มีข้อมูลในหมวดหมู่นี้';

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
  String get noteGuidance =>
      'ที่สำหรับใส่รายละเอียดเพิ่มเติมเพื่อการแปลที่แม่นยำยิ่งขึ้น';

  @override
  String get onlineLibraryCheckInternet =>
      'โปรดตรวจสอบการเชื่อมต่ออินเทอร์เน็ตของคุณหรือลองอีกครั้งในภายหลัง';

  @override
  String get onlineLibraryLoadFailed => 'ไม่สามารถโหลดข้อมูลได้';

  @override
  String get onlineLibraryNoMaterials => 'ไม่มีข้อมูล';

  @override
  String get openSettings => 'เปิดการตั้งค่า';

  @override
  String get password => 'รหัสผ่าน';

  @override
  String get passwordTooShort => 'รหัสผ่านต้องมีความยาวอย่างน้อย 6 ตัวอักษร';

  @override
  String get perfect => 'ยอดเยี่ยม!';

  @override
  String get pickGallery => 'เลือกจากแกลเลอรี่';

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
  String get posArticle => 'คำนำหน้านาม';

  @override
  String get posConjunction => 'คำสันธาน';

  @override
  String get posInterjection => 'คำอุทาน';

  @override
  String get posNoun => 'คำนาม';

  @override
  String get posParticle => 'อนุภาค/คำเสริม';

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
  String get processing => 'กำลังประมวลผล...';

  @override
  String progress(int current, int total) {
    return 'ความคืบหน้า: $current / $total';
  }

  @override
  String get quickStartStep1Desc =>
      'ไปที่ เมนู > การตั้งค่าภาษา เพื่อระบุภาษาของคุณและภาษาที่คุณต้องการเรียนรู้ก่อน';

  @override
  String get quickStartStep1Title => '1. ตั้งค่าภาษา';

  @override
  String get quickStartStep2Desc =>
      'สร้างบัตรคำศัพท์ของคุณเองตามลำดับ: ป้อนข้อมูล (ไมโครโฟน/คีย์บอร์ด) -> แปล -> บันทึก';

  @override
  String get quickStartStep2Title => '2. ขั้นตอนพื้นฐาน';

  @override
  String get quickStartStep3Desc =>
      'ฝึกฝนด้วยการแชท และฝึกออกเสียงโดยดูข้อความในแท็บฝึกออกเสียง';

  @override
  String get quickStartStep3Title => '3. ใช้โหมดต่างๆ';

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
  String get requestTranslation => 'ขอคำแปล';

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
  String get save => 'บันทึก';

  @override
  String get saveAsSentence => 'บันทึกเป็นประโยค';

  @override
  String get saveAsWord => 'บันทึกเป็นคำ';

  @override
  String get saveData => 'บันทึกข้อมูล';

  @override
  String saveFailed(String error) {
    return 'การบันทึกล้มเหลว: $error';
  }

  @override
  String get saveToHistory => 'บันทึกลงในประวัติการสแกน';

  @override
  String get saveTranslationsFromSearch => 'บันทึกคำแปลจากโหมดค้นหา';

  @override
  String get saved => 'บันทึกแล้ว';

  @override
  String get originalText => '원본 텍스트';

  @override
  String get saving => 'ไกำลังบันทึก...';

  @override
  String get scanInstructions => 'เลือกภาพที่จะสแกน';

  @override
  String get scanNoMatch =>
      '사진에서 설정된 학습 언어와 일치하는 텍스트를 찾을 수 없습니다. 언어 설정을 확인해 보세요.';

  @override
  String get scanNotSupported =>
      'ภาษาปัจจุบันไม่รองรับฟังก์ชันสแกน ขณะนี้ OCR รองรับเฉพาะอักษรละติน จีน เทวนาครี (เช่น ภาษาฮินดี) ญี่ปุ่น และเกาหลี';

  @override
  String get scanLabel => 'สแกน';

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
  String get selectStudyMaterial => 'เลือกสื่อการเรียนรู้';

  @override
  String get sentence => 'ประโยค';

  @override
  String get signUp => 'สมัครสมาชิก';

  @override
  String get simplifiedGuidance =>
      'แปลงบทสนทนาในชีวิตประจำวันเป็นภาษาต่างประเทศได้ในพริบตา! Talkie จะบันทึกชีวิตทางภาษาของคุณ';

  @override
  String get sourceLanguageLabel => 'Source Language';

  @override
  String get startTutorial => 'เริ่มทัวร์';

  @override
  String get startsWith => 'ขึ้นต้นด้วย';

  @override
  String get statusCheckEmail =>
      'โปรดยืนยันอีเมลเพื่อดำเนินการยืนยันให้เสร็จสิ้น';

  @override
  String statusDownloading(String name) {
    return 'กำลังดาวน์โหลด: $name...';
  }

  @override
  String statusImportFailed(String error) {
    return 'นำเข้าล้มเหลว: $error';
  }

  @override
  String statusImportSuccess(String name) {
    return '$name นำเข้าสำเร็จ';
  }

  @override
  String statusLoginFailed(String error) {
    return 'เข้าสู่ระบบล้มเหลว: $error';
  }

  @override
  String get statusLoginSuccess => 'เข้าสู่ระบบสำเร็จ';

  @override
  String get statusLogoutSuccess => 'ออกจากระบบแล้ว';

  @override
  String statusRequestFailed(String error) {
    return 'ส่งคำขอแปลล้มเหลว: $error';
  }

  @override
  String get statusRequestSuccess => 'ส่งคำขอแปลเรียบร้อยแล้ว';

  @override
  String get stopPractice => 'หยุดฝึก';

  @override
  String studyLangNotFoundDesc(String targetLang) {
    return 'เอกสารที่คุณเลือกไม่รองรับภาษาที่ใช้เรียนรู้ ($targetLang) ที่ตั้งค่าไว้ในปัจจุบัน จึงไม่สามารถบันทึกลงในเครื่องได้ คุณต้องการขอคำแปลหรือไม่';
  }

  @override
  String get studyLangNotFoundTitle => 'ไม่รองรับภาษาที่ใช้เรียนรู้';

  @override
  String get styleFormal => 'คำสุภาพ';

  @override
  String get styleInformal => 'คำไม่เป็นทางการ';

  @override
  String get stylePolite => 'สุภาพ';

  @override
  String get styleSlang => 'สแลง/คำหยาบ';

  @override
  String get swapLanguages => 'สลับภาษา';

  @override
  String get syncingData => 'กำลังซิงค์ข้อมูล...';

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
  String get tooltipSettingsConfirm => 'ยืนยันการตั้งค่า';

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
  String get translateNow => 'แปลเลย';

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
  String get translationLanguage => 'ภาษาที่จะแปล';

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
  String get translationResult => 'ผลการแปล';

  @override
  String get translationResultHint => 'ผลการแปล - แก้ไขได้';

  @override
  String get tryAgain => 'ลองอีกครั้ง';

  @override
  String get ttsInstallGuide =>
      'โปรดติดตั้งข้อมูลภาษาที่ การตั้งค่า Android > Google TTS';

  @override
  String get ttsMissing =>
      'ไม่มีเอ็นจินเสียงสำหรับภาษาดังกล่าวติดตั้งในอุปกรณ์ของคุณ';

  @override
  String get ttsUnsupportedNatively =>
      'อุปกรณ์นี้ไม่รองรับการอ่านออกเสียงด้วยภาษาที่เลือก';

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
  String get typeIdiom => 'สำนวน';

  @override
  String get typeImperative => 'ประโยคคำสั่ง';

  @override
  String get typeProverb => 'สุภาษิต/คำพังเพย';

  @override
  String get typeQuestion => 'ประโยคคำถาม';

  @override
  String get typeStatement => 'ประโยคบอกเล่า';

  @override
  String get usageLimitTitle => 'ถึงขีดจำกัดการใช้งานแล้ว';

  @override
  String get useExistingText => 'ใช้ที่มีอยู่';

  @override
  String versionLabel(String version) {
    return 'Version: $version';
  }

  @override
  String get viewOnlineGuide => 'ดูคู่มือออนไลน์';

  @override
  String get voluntaryTranslations => 'การแปลโดยผู้ใช้';

  @override
  String get watchAdAndRefill => 'ดูโฆษณาเพื่อเติม (+5 ครั้ง)';

  @override
  String get welcomeButton => 'เริ่มต้น';

  @override
  String get welcomeDesc =>
      'ยินดีต้อนรับสู่ Talkie! รองรับมากกว่า 80 ภาษาทั่วโลกอย่างสมบูรณ์แบบ พร้อมดีไซน์ 3D ระดับพรีเมียมใหม่ล่าสุดและประสิทธิภาพที่ปรับปรุงให้เหมาะสมเพื่อประสบการณ์การเรียนรู้ที่สมบูรณ์แบบ';

  @override
  String get welcomeTitle => 'ยินดีต้อนรับสู่ Talkie!';

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
}
