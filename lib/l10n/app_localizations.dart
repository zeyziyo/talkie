import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_as.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bo.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_cy.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_eu.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_my.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_or.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_te.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tl.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_uz.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';
import 'app_localizations_zu.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('as'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bn'),
    Locale('bo'),
    Locale('bs'),
    Locale('ca'),
    Locale('cs'),
    Locale('cy'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('et'),
    Locale('eu'),
    Locale('fa'),
    Locale('fi'),
    Locale('fil'),
    Locale('fr'),
    Locale('gl'),
    Locale('gu'),
    Locale('he'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ky'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('my'),
    Locale('nb'),
    Locale('ne'),
    Locale('nl'),
    Locale('no'),
    Locale('or'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('te'),
    Locale('th'),
    Locale('tl'),
    Locale('tr'),
    Locale('uk'),
    Locale('ur'),
    Locale('uz'),
    Locale('vi'),
    Locale('zh'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW'),
    Locale('zu')
  ];

  /// Default name for basic vocabulary material
  ///
  /// In ko, this message translates to:
  /// **'기본 단어 저장소'**
  String get basicWords;

  /// No description provided for @inputLanguage.
  ///
  /// In ko, this message translates to:
  /// **'입력 언어'**
  String get inputLanguage;

  /// No description provided for @translationLanguage.
  ///
  /// In ko, this message translates to:
  /// **'번역 언어'**
  String get translationLanguage;

  /// No description provided for @simplifiedGuidance.
  ///
  /// In ko, this message translates to:
  /// **'\'언어 설정\' 메뉴에서 \'내 언어\'와 \'학습 언어\'를 지정한 다음 사용해주세요.'**
  String get simplifiedGuidance;

  /// No description provided for @noDataForLanguage.
  ///
  /// In ko, this message translates to:
  /// **'선택하신 언어의 학습 자료가 로컬 DB에 없습니다. 자료를 다운로드하거나 다른 언어를 선택해 주세요.'**
  String get noDataForLanguage;

  /// No description provided for @versionLabel.
  ///
  /// In ko, this message translates to:
  /// **'버전: {version}'**
  String versionLabel(String version);

  /// No description provided for @developerContact.
  ///
  /// In ko, this message translates to:
  /// **'문의: talkie.help@gmail.com'**
  String get developerContact;

  /// Cancel button
  ///
  /// In ko, this message translates to:
  /// **'취소'**
  String get cancel;

  /// No description provided for @accuracy.
  ///
  /// In ko, this message translates to:
  /// **'정확도'**
  String get accuracy;

  /// No description provided for @ttsMissing.
  ///
  /// In ko, this message translates to:
  /// **'이 언어의 음성 엔진이 기기에 설치되어 있지 않습니다.'**
  String get ttsMissing;

  /// No description provided for @ttsInstallGuide.
  ///
  /// In ko, this message translates to:
  /// **'안드로이드 설정 > Google TTS에서 해당 언어 데이터를 설치해 주세요.'**
  String get ttsInstallGuide;

  /// No description provided for @adLoading.
  ///
  /// In ko, this message translates to:
  /// **'광고를 불러오는 중입니다. 잠시 후 다시 시도해주세요.'**
  String get adLoading;

  /// No description provided for @addNewSubject.
  ///
  /// In ko, this message translates to:
  /// **'새 제목 추가'**
  String get addNewSubject;

  /// No description provided for @addParticipant.
  ///
  /// In ko, this message translates to:
  /// **'참가자 추가'**
  String get addParticipant;

  /// No description provided for @addTagHint.
  ///
  /// In ko, this message translates to:
  /// **'태그 추가...'**
  String get addTagHint;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In ko, this message translates to:
  /// **'이미 계정이 있으신가요?'**
  String get alreadyHaveAccount;

  /// Application title
  ///
  /// In ko, this message translates to:
  /// **'Talkie'**
  String get appTitle;

  /// No description provided for @autoPlay.
  ///
  /// In ko, this message translates to:
  /// **'자동 재생'**
  String get autoPlay;

  /// No description provided for @basic.
  ///
  /// In ko, this message translates to:
  /// **'기본'**
  String get basic;

  /// No description provided for @basicDefault.
  ///
  /// In ko, this message translates to:
  /// **'기본'**
  String get basicDefault;

  /// Name for default basic repository
  ///
  /// In ko, this message translates to:
  /// **'기본 문장/단어 저장소'**
  String get basicMaterialRepository;

  /// No description provided for @basicSentenceRepository.
  ///
  /// In ko, this message translates to:
  /// **'기본 문장 저장소'**
  String get basicSentenceRepository;

  /// Default name for basic sentences material
  ///
  /// In ko, this message translates to:
  /// **'기본 문장 저장소'**
  String get basicSentences;

  /// No description provided for @basicWordRepository.
  ///
  /// In ko, this message translates to:
  /// **'기본 단어 저장소'**
  String get basicWordRepository;

  /// No description provided for @caseObject.
  ///
  /// In ko, this message translates to:
  /// **'목적격'**
  String get caseObject;

  /// No description provided for @casePossessive.
  ///
  /// In ko, this message translates to:
  /// **'소유격'**
  String get casePossessive;

  /// No description provided for @casePossessivePronoun.
  ///
  /// In ko, this message translates to:
  /// **'소유대명사'**
  String get casePossessivePronoun;

  /// No description provided for @caseReflexive.
  ///
  /// In ko, this message translates to:
  /// **'재귀대명사'**
  String get caseReflexive;

  /// No description provided for @caseSubject.
  ///
  /// In ko, this message translates to:
  /// **'주격'**
  String get caseSubject;

  /// No description provided for @chatAiChat.
  ///
  /// In ko, this message translates to:
  /// **'채팅'**
  String get chatAiChat;

  /// No description provided for @chatAllConversations.
  ///
  /// In ko, this message translates to:
  /// **'전체 대화'**
  String get chatAllConversations;

  /// No description provided for @chatChoosePersona.
  ///
  /// In ko, this message translates to:
  /// **'페르소나 선택'**
  String get chatChoosePersona;

  /// No description provided for @chatEndMessage.
  ///
  /// In ko, this message translates to:
  /// **'대화를 종료하시겠습니까?'**
  String get chatEndMessage;

  /// No description provided for @chatEndTitle.
  ///
  /// In ko, this message translates to:
  /// **'대화 종료 및 저장'**
  String get chatEndTitle;

  /// No description provided for @chatFailed.
  ///
  /// In ko, this message translates to:
  /// **'채팅 실패: {error}'**
  String chatFailed(Object error);

  /// No description provided for @chatFromConversation.
  ///
  /// In ko, this message translates to:
  /// **'대화 발췌 ({speaker})'**
  String chatFromConversation(Object speaker);

  /// No description provided for @chatHistoryTitle.
  ///
  /// In ko, this message translates to:
  /// **'대화 기록'**
  String get chatHistoryTitle;

  /// No description provided for @chatNew.
  ///
  /// In ko, this message translates to:
  /// **'새 대화'**
  String get chatNew;

  /// No description provided for @chatNewChat.
  ///
  /// In ko, this message translates to:
  /// **'새 대화'**
  String get chatNewChat;

  /// No description provided for @chatNoConversations.
  ///
  /// In ko, this message translates to:
  /// **'아직 대화가 없습니다'**
  String get chatNoConversations;

  /// No description provided for @chatSearchHint.
  ///
  /// In ko, this message translates to:
  /// **'대화 제목으로 검색...'**
  String get chatSearchHint;

  /// No description provided for @chatNoteSearchHint.
  ///
  /// In ko, this message translates to:
  /// **'주석으로 검색...'**
  String get chatNoteSearchHint;

  /// No description provided for @chatSaveAndExit.
  ///
  /// In ko, this message translates to:
  /// **'저장 후 종료'**
  String get chatSaveAndExit;

  /// No description provided for @chatStartNewPrompt.
  ///
  /// In ko, this message translates to:
  /// **'연습을 위해 새 대화를 시작해보세요!'**
  String get chatStartNewPrompt;

  /// No description provided for @chatTypeHint.
  ///
  /// In ko, this message translates to:
  /// **'메시지를 입력하세요...'**
  String get chatTypeHint;

  /// No description provided for @chatUntitled.
  ///
  /// In ko, this message translates to:
  /// **'제목 없는 대화'**
  String get chatUntitled;

  /// Checking for duplicates
  ///
  /// In ko, this message translates to:
  /// **'확인 중...'**
  String get checking;

  /// No description provided for @clearAll.
  ///
  /// In ko, this message translates to:
  /// **'모두 지우기'**
  String get clearAll;

  /// Confirm/OK button
  ///
  /// In ko, this message translates to:
  /// **'확인'**
  String get confirm;

  /// Delete confirmation message
  ///
  /// In ko, this message translates to:
  /// **'이 학습 기록을 삭제하시겠습니까?'**
  String get confirmDelete;

  /// No description provided for @confirmDeleteConversation.
  ///
  /// In ko, this message translates to:
  /// **'이 대화를 삭제하시겠습니까?\n삭제된 대화는 복구할 수 없습니다.'**
  String get confirmDeleteConversation;

  /// No description provided for @confirmDeleteParticipant.
  ///
  /// In ko, this message translates to:
  /// **'이 참가자를 삭제하시겠습니까?'**
  String get confirmDeleteParticipant;

  /// No description provided for @contextTagHint.
  ///
  /// In ko, this message translates to:
  /// **'나중에 구분하기 쉽도록 상황을 적어주세요'**
  String get contextTagHint;

  /// No description provided for @contextTagLabel.
  ///
  /// In ko, this message translates to:
  /// **'문맥/상황 (선택사항) - 예: 아침인사, 존댓말'**
  String get contextTagLabel;

  /// No description provided for @copiedToClipboard.
  ///
  /// In ko, this message translates to:
  /// **'클립보드에 복사되었습니다!'**
  String get copiedToClipboard;

  /// No description provided for @copy.
  ///
  /// In ko, this message translates to:
  /// **'복사'**
  String get copy;

  /// No description provided for @correctAnswer.
  ///
  /// In ko, this message translates to:
  /// **'정답'**
  String get correctAnswer;

  /// Create new entry button
  ///
  /// In ko, this message translates to:
  /// **'새 문장으로 진행'**
  String get createNew;

  /// Label for GPS location
  ///
  /// In ko, this message translates to:
  /// **'현재 위치'**
  String get currentLocation;

  /// Banner label for current material
  ///
  /// In ko, this message translates to:
  /// **'현재 선택 자료집:'**
  String get currentMaterialLabel;

  /// Delete button
  ///
  /// In ko, this message translates to:
  /// **'삭제'**
  String get delete;

  /// Delete error message
  ///
  /// In ko, this message translates to:
  /// **'삭제 실패: {error}'**
  String deleteFailed(String error);

  /// Delete record dialog title
  ///
  /// In ko, this message translates to:
  /// **'레코드 삭제'**
  String get deleteRecord;

  /// No description provided for @dialogueQuestDesc.
  ///
  /// In ko, this message translates to:
  /// **'상황극을 통해 대화 연습을 하세요. 적절한 답변을 선택하고 말해보세요.'**
  String get dialogueQuestDesc;

  /// No description provided for @dialogueQuestTitle.
  ///
  /// In ko, this message translates to:
  /// **'대화 퀘스트'**
  String get dialogueQuestTitle;

  /// Prompt for disambiguation dialog
  ///
  /// In ko, this message translates to:
  /// **'어떤 의미로 번역하시겠습니까?'**
  String get disambiguationPrompt;

  /// Title for disambiguation dialog
  ///
  /// In ko, this message translates to:
  /// **'의미 선택'**
  String get disambiguationTitle;

  /// No description provided for @dontHaveAccount.
  ///
  /// In ko, this message translates to:
  /// **'계정이 없으신가요?'**
  String get dontHaveAccount;

  /// No description provided for @editParticipant.
  ///
  /// In ko, this message translates to:
  /// **'참가자 수정'**
  String get editParticipant;

  /// No description provided for @email.
  ///
  /// In ko, this message translates to:
  /// **'이메일'**
  String get email;

  /// No description provided for @emailAlreadyInUse.
  ///
  /// In ko, this message translates to:
  /// **'이미 등록된 이메일입니다. 로그인하거나 비밀번호 찾기를 이용해주세요.'**
  String get emailAlreadyInUse;

  /// No description provided for @enterNewSubjectName.
  ///
  /// In ko, this message translates to:
  /// **'새 제목 입력'**
  String get enterNewSubjectName;

  /// No description provided for @enterSentenceHint.
  ///
  /// In ko, this message translates to:
  /// **'문장을 입력하세요...'**
  String get enterSentenceHint;

  /// No description provided for @enterTextHint.
  ///
  /// In ko, this message translates to:
  /// **'번역할 텍스트를 입력하세요'**
  String get enterTextHint;

  /// Empty input warning
  ///
  /// In ko, this message translates to:
  /// **'번역할 텍스트를 입력하세요'**
  String get enterTextToTranslate;

  /// No description provided for @enterWordHint.
  ///
  /// In ko, this message translates to:
  /// **'단어를 입력하세요...'**
  String get enterWordHint;

  /// Error dialog title
  ///
  /// In ko, this message translates to:
  /// **'오류'**
  String get error;

  /// No description provided for @errorHateSpeech.
  ///
  /// In ko, this message translates to:
  /// **'혐오 표현이 포함되어 있어 번역할 수 없습니다.'**
  String get errorHateSpeech;

  /// No description provided for @errorOtherSafety.
  ///
  /// In ko, this message translates to:
  /// **'AI 안전 정책에 의해 번역이 거부되었습니다.'**
  String get errorOtherSafety;

  /// No description provided for @errorProfanity.
  ///
  /// In ko, this message translates to:
  /// **'비속어가 포함되어 있어 번역할 수 없습니다.'**
  String get errorProfanity;

  /// No description provided for @errorSelectCategory.
  ///
  /// In ko, this message translates to:
  /// **'먼저 단어나 문장을 선택하세요!'**
  String get errorSelectCategory;

  /// No description provided for @errorSexualContent.
  ///
  /// In ko, this message translates to:
  /// **'선정적인 내용이 포함되어 있어 번역할 수 없습니다.'**
  String get errorSexualContent;

  /// Error section label
  ///
  /// In ko, this message translates to:
  /// **'오류:'**
  String get errors;

  /// No description provided for @female.
  ///
  /// In ko, this message translates to:
  /// **'여성'**
  String get female;

  /// File label
  ///
  /// In ko, this message translates to:
  /// **'파일:'**
  String get file;

  /// No description provided for @filterAll.
  ///
  /// In ko, this message translates to:
  /// **'전체'**
  String get filterAll;

  /// Show translation button
  ///
  /// In ko, this message translates to:
  /// **'보이기'**
  String get flip;

  /// No description provided for @formComparative.
  ///
  /// In ko, this message translates to:
  /// **'비교급'**
  String get formComparative;

  /// No description provided for @formInfinitive.
  ///
  /// In ko, this message translates to:
  /// **'원형/현재형'**
  String get formInfinitive;

  /// No description provided for @formPast.
  ///
  /// In ko, this message translates to:
  /// **'과거형'**
  String get formPast;

  /// No description provided for @formPastParticiple.
  ///
  /// In ko, this message translates to:
  /// **'과거분사'**
  String get formPastParticiple;

  /// No description provided for @formPlural.
  ///
  /// In ko, this message translates to:
  /// **'복수형'**
  String get formPlural;

  /// No description provided for @formPositive.
  ///
  /// In ko, this message translates to:
  /// **'원급'**
  String get formPositive;

  /// No description provided for @formPresent.
  ///
  /// In ko, this message translates to:
  /// **'현재형'**
  String get formPresent;

  /// No description provided for @formPresentParticiple.
  ///
  /// In ko, this message translates to:
  /// **'현재분사 (ing)'**
  String get formPresentParticiple;

  /// No description provided for @formSingular.
  ///
  /// In ko, this message translates to:
  /// **'단수형'**
  String get formSingular;

  /// No description provided for @formSuperlative.
  ///
  /// In ko, this message translates to:
  /// **'최상급'**
  String get formSuperlative;

  /// No description provided for @formThirdPersonSingular.
  ///
  /// In ko, this message translates to:
  /// **'3인칭 단수'**
  String get formThirdPersonSingular;

  /// No description provided for @gameModeDesc.
  ///
  /// In ko, this message translates to:
  /// **'연습할 게임 모드를 선택하세요'**
  String get gameModeDesc;

  /// No description provided for @gameModeTitle.
  ///
  /// In ko, this message translates to:
  /// **'게임 모드'**
  String get gameModeTitle;

  /// No description provided for @gameOver.
  ///
  /// In ko, this message translates to:
  /// **'Game Over'**
  String get gameOver;

  /// No description provided for @gender.
  ///
  /// In ko, this message translates to:
  /// **'성별'**
  String get gender;

  /// No description provided for @labelFilterMaterial.
  ///
  /// In ko, this message translates to:
  /// **'자료집'**
  String get labelFilterMaterial;

  /// No description provided for @labelFilterTag.
  ///
  /// In ko, this message translates to:
  /// **'태그'**
  String get labelFilterTag;

  /// No description provided for @generalTags.
  ///
  /// In ko, this message translates to:
  /// **'일반 태그'**
  String get generalTags;

  /// No description provided for @getMaterials.
  ///
  /// In ko, this message translates to:
  /// **'자료 받기'**
  String get getMaterials;

  /// No description provided for @good.
  ///
  /// In ko, this message translates to:
  /// **'좋아요'**
  String get good;

  /// No description provided for @googleContinue.
  ///
  /// In ko, this message translates to:
  /// **'Google로 계속하기'**
  String get googleContinue;

  /// No description provided for @helpDialogueImportDesc.
  ///
  /// In ko, this message translates to:
  /// **'JSON 파일로 전체 대화 세트를 가져옵니다.'**
  String get helpDialogueImportDesc;

  /// No description provided for @helpDialogueImportDetails.
  ///
  /// In ko, this message translates to:
  /// **'• JSON 구조: `entries` 배열 내에 `speaker`를 지정하여 대화 흐름을 구성합니다.\n• 참가자 설정: `participants` 정보를 정확히 입력하면 AI 채팅 모드에서 페르소나와 언어가 자동으로 설정됩니다.\n• 위치: 가져온 대화는 AI 채팅 모드의 \'기록\' 탭에 나타납니다.'**
  String get helpDialogueImportDetails;

  /// No description provided for @helpJsonDesc.
  ///
  /// In ko, this message translates to:
  /// **'학습 자료를 JSON 파일로 대량으로 가져오는 방법입니다.'**
  String get helpJsonDesc;

  /// No description provided for @helpJsonTypeDialogue.
  ///
  /// In ko, this message translates to:
  /// **'대화 (Dialogue)'**
  String get helpJsonTypeDialogue;

  /// No description provided for @helpJsonTypeSentence.
  ///
  /// In ko, this message translates to:
  /// **'문장 (Sentence)'**
  String get helpJsonTypeSentence;

  /// No description provided for @helpJsonTypeWord.
  ///
  /// In ko, this message translates to:
  /// **'단어 (Word)'**
  String get helpJsonTypeWord;

  /// No description provided for @helpMode1Desc.
  ///
  /// In ko, this message translates to:
  /// **'프리미엄 3D 마이크와 대형 키보드 아이콘을 통해 가장 직관적인 방식으로 언어 학습을 시작하세요.'**
  String get helpMode1Desc;

  /// No description provided for @helpMode1Details.
  ///
  /// In ko, this message translates to:
  /// **'• 언어 설정: 홈 화면 상단의 언어 버튼으로 내 언어와 학습 중인 언어를 확인하고 학습 언어를 변경할 수 있습니다.\n• 심플 입력: 중앙의 대형 마이크 및 텍스트 창을 통해 즉시 입력하세요.\n• 설정 확인: 입력이 끝나면 오른쪽의 파란색 체크 버튼을 누르세요. 상세 설정 창이 나타납니다.\n• 상세 설정: 나타난 다이얼로그에서 저장할 자료집, 주석(메모), 태그를 지정할 수 있습니다.\n• 지금 번역하기: 설정을 마친 후 초록색 번역 버튼을 누르면 인공지능이 즉시 번역을 수행합니다.\n• 자동 검색: 입력 중 유사한 기존 번역을 실시간으로 감지하여 보여줍니다.\n• 듣기 및 저장: 번역 결과 하단의 스피커 아이콘으로 발음을 듣고, \'데이터 저장\'을 통해 학습 리스트에 추가하세요.'**
  String get helpMode1Details;

  /// No description provided for @helpMode2Desc.
  ///
  /// In ko, this message translates to:
  /// **'저장된 단어와 문장을 복습하고, 보이기/숨기기 기능으로 암기 여부를 확인하세요.'**
  String get helpMode2Desc;

  /// No description provided for @helpMode2Details.
  ///
  /// In ko, this message translates to:
  /// **'• 자료집 선택: 우측 상단 메뉴(⋮)에서 \'학습 자료집 선택\'이나 \'온라인 자료실\' 이용\n• 카드 뒤집기: \'보이기/숨기기\'로 번역 확인\n• 듣기: 스피커 아이콘으로 발음 재생\n• 학습 완료: 체크 표시(V)로 학습 완료 처리\n• 삭제: 카드를 길게 눌러(Long Click) 기록 삭제\n• 검색 및 필터: 검색바(실시간 스마트 검색)와 태그, 시작 글자 필터 지원'**
  String get helpMode2Details;

  /// No description provided for @helpMode3Desc.
  ///
  /// In ko, this message translates to:
  /// **'문장을 듣고 따라 말하며(Shadowing) 발음을 연습하세요.'**
  String get helpMode3Desc;

  /// No description provided for @helpMode3Details.
  ///
  /// In ko, this message translates to:
  /// **'• 자료집 선택: 우측 상단 메뉴(⋮)에서 \'학습 자료집 선택\' 이용\n• 간격 설정: [-] [+] 버튼으로 문장 간 대기 시간 조정 (3초~60초)\n• 시작/정지: 중앙의 시작/종료 버튼으로 세션 제어\n• 말하기: 원어민 음성을 듣고 큰 소리로 따라하기\n• 피드백: 정확도 점수(0-100) 및 색상 표시\n• 필터 설정: 설정(톱니바퀴) 아이콘에서 태그별 연습 범위 지정'**
  String get helpMode3Details;

  /// No description provided for @helpModeChatDesc.
  ///
  /// In ko, this message translates to:
  /// **'AI 페르소나와 대화하며 실전 회화를 연습하세요.'**
  String get helpModeChatDesc;

  /// No description provided for @helpModeChatDetails.
  ///
  /// In ko, this message translates to:
  /// **'• AI 채팅: 하단 탭 바의 \'채팅\' 메뉴에서 페르소나와 실전 대화 연습\n• 페르소나 설정: 상대방의 성별, 이름, 언어 코드를 자유롭게 지정\n• GPS 상황극: 현재 내 위치를 인식하여 장소에 어울리는 대화 주제 추천\n• 2개 국어: AI의 답변이 번역과 함께 표시되어 학습 효과 극대화\n• 기록 관리: 과거 대화 내역 필터링 및 대화 중 특정 메시지 학습 자료로 저장'**
  String get helpModeChatDetails;

  /// No description provided for @helpTabJson.
  ///
  /// In ko, this message translates to:
  /// **'JSON 형식'**
  String get helpTabJson;

  /// No description provided for @helpTabModes.
  ///
  /// In ko, this message translates to:
  /// **'모드 설명'**
  String get helpTabModes;

  /// No description provided for @helpTabTour.
  ///
  /// In ko, this message translates to:
  /// **'체험하기'**
  String get helpTabTour;

  /// No description provided for @helpTitle.
  ///
  /// In ko, this message translates to:
  /// **'도움말 & 가이드'**
  String get helpTitle;

  /// No description provided for @helpTourDesc.
  ///
  /// In ko, this message translates to:
  /// **'**하이라이트 원**이 주요 기능을 안내합니다.\n(예: **하이라이트 원**이 가리키는 카드를 길게 눌러 삭제할 수 있습니다.)'**
  String get helpTourDesc;

  /// Hide translation button
  ///
  /// In ko, this message translates to:
  /// **'숨기기'**
  String get hide;

  /// Successfully imported count
  ///
  /// In ko, this message translates to:
  /// **'추가: {count}개'**
  String importAdded(int count);

  /// Import success title
  ///
  /// In ko, this message translates to:
  /// **'불러오기 완료'**
  String get importComplete;

  /// No description provided for @importDuplicateTitleError.
  ///
  /// In ko, this message translates to:
  /// **'동일한 제목의 자료가 이미 존재합니다. 제목을 변경한 후 다시 시도해주세요.'**
  String get importDuplicateTitleError;

  /// Import error message
  ///
  /// In ko, this message translates to:
  /// **'파일 불러오기 실패:\\n{error}'**
  String importErrorMessage(String error);

  /// Import error title
  ///
  /// In ko, this message translates to:
  /// **'불러오기 실패'**
  String get importFailed;

  /// Imported file name
  ///
  /// In ko, this message translates to:
  /// **'파일: {fileName}'**
  String importFile(String fileName);

  /// Import JSON button
  ///
  /// In ko, this message translates to:
  /// **'JSON 파일 불러오기'**
  String get importJsonFile;

  /// Empty state prompt
  ///
  /// In ko, this message translates to:
  /// **'JSON 파일을 불러와주세요'**
  String get importJsonFilePrompt;

  /// Skipped import count
  ///
  /// In ko, this message translates to:
  /// **'건너뜀: {count}개'**
  String importSkipped(int count);

  /// Total import count
  ///
  /// In ko, this message translates to:
  /// **'전체: {count}개'**
  String importTotal(int count);

  /// Import in progress
  ///
  /// In ko, this message translates to:
  /// **'자료 가져오는 중...'**
  String get importing;

  /// No description provided for @inputModeTitle.
  ///
  /// In ko, this message translates to:
  /// **'입력'**
  String get inputModeTitle;

  /// No description provided for @intervalSeconds.
  ///
  /// In ko, this message translates to:
  /// **'간격: {seconds}초'**
  String intervalSeconds(int seconds);

  /// No description provided for @invalidEmail.
  ///
  /// In ko, this message translates to:
  /// **'유효한 이메일을 입력하세요.'**
  String get invalidEmail;

  /// No description provided for @kakaoContinue.
  ///
  /// In ko, this message translates to:
  /// **'카카오로 계속하기'**
  String get kakaoContinue;

  /// No description provided for @labelLangCode.
  ///
  /// In ko, this message translates to:
  /// **'언어 코드 (예: en-US, ko-KR)'**
  String get labelLangCode;

  /// No description provided for @labelName.
  ///
  /// In ko, this message translates to:
  /// **'이름'**
  String get labelName;

  /// No description provided for @labelNote.
  ///
  /// In ko, this message translates to:
  /// **'주석 입력'**
  String get labelNote;

  /// No description provided for @labelPOS.
  ///
  /// In ko, this message translates to:
  /// **'품사'**
  String get labelPOS;

  /// No description provided for @labelRole.
  ///
  /// In ko, this message translates to:
  /// **'역할'**
  String get labelRole;

  /// No description provided for @labelSentence.
  ///
  /// In ko, this message translates to:
  /// **'문장'**
  String get labelSentence;

  /// No description provided for @labelSentenceCollection.
  ///
  /// In ko, this message translates to:
  /// **'문장 자료집'**
  String get labelSentenceCollection;

  /// No description provided for @labelSentenceType.
  ///
  /// In ko, this message translates to:
  /// **'문장의 종류'**
  String get labelSentenceType;

  /// No description provided for @labelShowMemorized.
  ///
  /// In ko, this message translates to:
  /// **'끝낸것'**
  String get labelShowMemorized;

  /// No description provided for @labelType.
  ///
  /// In ko, this message translates to:
  /// **'종류:'**
  String get labelType;

  /// No description provided for @labelWord.
  ///
  /// In ko, this message translates to:
  /// **'단어'**
  String get labelWord;

  /// No description provided for @labelWordbook.
  ///
  /// In ko, this message translates to:
  /// **'단어 자료집'**
  String get labelWordbook;

  /// No description provided for @language.
  ///
  /// In ko, this message translates to:
  /// **'언어'**
  String get language;

  /// No description provided for @languageSettings.
  ///
  /// In ko, this message translates to:
  /// **'언어 설정'**
  String get languageSettings;

  /// No description provided for @languageSettingsTitle.
  ///
  /// In ko, this message translates to:
  /// **'언어 설정'**
  String get languageSettingsTitle;

  /// No description provided for @libTitleFirstMeeting.
  ///
  /// In ko, this message translates to:
  /// **'첫 만남'**
  String get libTitleFirstMeeting;

  /// No description provided for @libTitleGreetings1.
  ///
  /// In ko, this message translates to:
  /// **'인사 1'**
  String get libTitleGreetings1;

  /// No description provided for @libTitleNouns1.
  ///
  /// In ko, this message translates to:
  /// **'명사 1'**
  String get libTitleNouns1;

  /// No description provided for @libTitleVerbs1.
  ///
  /// In ko, this message translates to:
  /// **'동사 1'**
  String get libTitleVerbs1;

  /// Listen/TTS button
  ///
  /// In ko, this message translates to:
  /// **'듣기'**
  String get listen;

  /// STT listening status
  ///
  /// In ko, this message translates to:
  /// **'듣는 중...'**
  String get listening;

  /// No description provided for @loadingParticipants.
  ///
  /// In ko, this message translates to:
  /// **'참가자 불러오는 중...'**
  String get loadingParticipants;

  /// Label for location field in chat save dialog
  ///
  /// In ko, this message translates to:
  /// **'위치'**
  String get location;

  /// No description provided for @login.
  ///
  /// In ko, this message translates to:
  /// **'로그인'**
  String get login;

  /// No description provided for @logout.
  ///
  /// In ko, this message translates to:
  /// **'로그아웃'**
  String get logout;

  /// No description provided for @logoutConfirmMessage.
  ///
  /// In ko, this message translates to:
  /// **'현재 기기에서 로그아웃하시겠습니까?'**
  String get logoutConfirmMessage;

  /// No description provided for @logoutConfirmTitle.
  ///
  /// In ko, this message translates to:
  /// **'로그아웃'**
  String get logoutConfirmTitle;

  /// No description provided for @male.
  ///
  /// In ko, this message translates to:
  /// **'남성'**
  String get male;

  /// No description provided for @manageParticipants.
  ///
  /// In ko, this message translates to:
  /// **'참가자 관리'**
  String get manageParticipants;

  /// Label for manual input in Partner Mode
  ///
  /// In ko, this message translates to:
  /// **'수동 입력'**
  String get manual;

  /// Mark study button text
  ///
  /// In ko, this message translates to:
  /// **'학습 표시'**
  String get markAsStudied;

  /// Title for material metadata section
  ///
  /// In ko, this message translates to:
  /// **'자료 정보'**
  String get materialInfo;

  /// Label for self speaker
  ///
  /// In ko, this message translates to:
  /// **'나'**
  String get me;

  /// No description provided for @menuDeviceImport.
  ///
  /// In ko, this message translates to:
  /// **'기기에서 자료 가져오기'**
  String get menuDeviceImport;

  /// No description provided for @menuHelp.
  ///
  /// In ko, this message translates to:
  /// **'도움말'**
  String get menuHelp;

  /// No description provided for @menuLanguageSettings.
  ///
  /// In ko, this message translates to:
  /// **'언어 설정'**
  String get menuLanguageSettings;

  /// No description provided for @menuOnlineLibrary.
  ///
  /// In ko, this message translates to:
  /// **'온라인 자료실'**
  String get menuOnlineLibrary;

  /// No description provided for @menuSelectMaterialSet.
  ///
  /// In ko, this message translates to:
  /// **'학습 자료집 선택'**
  String get menuSelectMaterialSet;

  /// Menu item for language settings
  ///
  /// In ko, this message translates to:
  /// **'언어 설정'**
  String get menuSettings;

  /// No description provided for @menuTutorial.
  ///
  /// In ko, this message translates to:
  /// **'사용법 투어'**
  String get menuTutorial;

  /// No description provided for @menuWebDownload.
  ///
  /// In ko, this message translates to:
  /// **'사용설명서'**
  String get menuWebDownload;

  /// No description provided for @metadataDialogTitle.
  ///
  /// In ko, this message translates to:
  /// **'상세 분류'**
  String get metadataDialogTitle;

  /// No description provided for @metadataFormType.
  ///
  /// In ko, this message translates to:
  /// **'문법 형태'**
  String get metadataFormType;

  /// No description provided for @metadataRootWord.
  ///
  /// In ko, this message translates to:
  /// **'원형 (Root Word)'**
  String get metadataRootWord;

  /// No description provided for @micButtonTooltip.
  ///
  /// In ko, this message translates to:
  /// **'음성 인식 시작'**
  String get micButtonTooltip;

  /// No description provided for @mode1SelectedMaterial.
  ///
  /// In ko, this message translates to:
  /// **'현재 선택된 자료집: {name}'**
  String mode1SelectedMaterial(Object name);

  /// Mode 2 title for help dialog
  ///
  /// In ko, this message translates to:
  /// **'복습'**
  String get mode2Title;

  /// No description provided for @mode3Next.
  ///
  /// In ko, this message translates to:
  /// **'다음'**
  String get mode3Next;

  /// No description provided for @mode3Start.
  ///
  /// In ko, this message translates to:
  /// **'시작'**
  String get mode3Start;

  /// No description provided for @mode3Stop.
  ///
  /// In ko, this message translates to:
  /// **'종료'**
  String get mode3Stop;

  /// No description provided for @mode3TryAgain.
  ///
  /// In ko, this message translates to:
  /// **'재시도'**
  String get mode3TryAgain;

  /// No description provided for @mySentenceCollection.
  ///
  /// In ko, this message translates to:
  /// **'나의 문장집'**
  String get mySentenceCollection;

  /// No description provided for @myWordbook.
  ///
  /// In ko, this message translates to:
  /// **'나의 단어장'**
  String get myWordbook;

  /// No description provided for @neutral.
  ///
  /// In ko, this message translates to:
  /// **'중성'**
  String get neutral;

  /// No description provided for @newSubjectName.
  ///
  /// In ko, this message translates to:
  /// **'새 단어장/문장집 제목'**
  String get newSubjectName;

  /// No description provided for @next.
  ///
  /// In ko, this message translates to:
  /// **'다음'**
  String get next;

  /// No description provided for @noDialogueHistory.
  ///
  /// In ko, this message translates to:
  /// **'대화 내역이 없습니다.'**
  String get noDialogueHistory;

  /// No description provided for @noInternetWarningMic.
  ///
  /// In ko, this message translates to:
  /// **'인터넷 연결이 없습니다. 오프라인 상태에서는 음성 인식이 불가능할 수 있습니다.'**
  String get noInternetWarningMic;

  /// No description provided for @noInternetWarningTranslate.
  ///
  /// In ko, this message translates to:
  /// **'인터넷 연결이 없습니다. 오프라인 상태에서는 번역 기능을 사용할 수 없습니다. 복습 모드를 이용해 주세요.'**
  String get noInternetWarningTranslate;

  /// No description provided for @noMaterialsInCategory.
  ///
  /// In ko, this message translates to:
  /// **'이 카테고리에는 자료가 없습니다.'**
  String get noMaterialsInCategory;

  /// No description provided for @noParticipantsFound.
  ///
  /// In ko, this message translates to:
  /// **'등록된 참가자가 없습니다.'**
  String get noParticipantsFound;

  /// Empty state message
  ///
  /// In ko, this message translates to:
  /// **'선택한 언어의 학습 기록이 없습니다'**
  String get noRecords;

  /// No description provided for @noStudyMaterial.
  ///
  /// In ko, this message translates to:
  /// **'학습 자료가 없습니다.'**
  String get noStudyMaterial;

  /// TTS error - no text
  ///
  /// In ko, this message translates to:
  /// **'재생할 텍스트가 없습니다'**
  String get noTextToPlay;

  /// Save error - no data
  ///
  /// In ko, this message translates to:
  /// **'저장할 번역이 없습니다'**
  String get noTranslationToSave;

  /// No description provided for @noVoiceDetected.
  ///
  /// In ko, this message translates to:
  /// **'목소리가 감지되지 않았어요'**
  String get noVoiceDetected;

  /// No description provided for @notSelected.
  ///
  /// In ko, this message translates to:
  /// **'- 선택 안함 -'**
  String get notSelected;

  /// No description provided for @onlineLibraryCheckInternet.
  ///
  /// In ko, this message translates to:
  /// **'인터넷 연결을 확인하거나 나중에 다시 시도해주세요.'**
  String get onlineLibraryCheckInternet;

  /// No description provided for @onlineLibraryLoadFailed.
  ///
  /// In ko, this message translates to:
  /// **'자료를 불러오는데 실패했습니다.'**
  String get onlineLibraryLoadFailed;

  /// No description provided for @onlineLibraryNoMaterials.
  ///
  /// In ko, this message translates to:
  /// **'자료가 없습니다.'**
  String get onlineLibraryNoMaterials;

  /// No description provided for @participantDeleted.
  ///
  /// In ko, this message translates to:
  /// **'참가자가 삭제되었습니다.'**
  String get participantDeleted;

  /// No description provided for @participantRename.
  ///
  /// In ko, this message translates to:
  /// **'참가자 이름 변경'**
  String get participantRename;

  /// Label for partner speaker
  ///
  /// In ko, this message translates to:
  /// **'파트너'**
  String get partner;

  /// Label for Partner Mode logic
  ///
  /// In ko, this message translates to:
  /// **'파트너 모드'**
  String get partnerMode;

  /// No description provided for @password.
  ///
  /// In ko, this message translates to:
  /// **'비밀번호'**
  String get password;

  /// No description provided for @passwordTooShort.
  ///
  /// In ko, this message translates to:
  /// **'비밀번호는 6자 이상이어야 합니다.'**
  String get passwordTooShort;

  /// No description provided for @perfect.
  ///
  /// In ko, this message translates to:
  /// **'완벽해요!'**
  String get perfect;

  /// No description provided for @personaFriend.
  ///
  /// In ko, this message translates to:
  /// **'현지인 친구'**
  String get personaFriend;

  /// No description provided for @personaGuide.
  ///
  /// In ko, this message translates to:
  /// **'여행 가이드'**
  String get personaGuide;

  /// No description provided for @personaTeacher.
  ///
  /// In ko, this message translates to:
  /// **'영어 선생님'**
  String get personaTeacher;

  /// No description provided for @playAgain.
  ///
  /// In ko, this message translates to:
  /// **'다시 하기'**
  String get playAgain;

  /// TTS error message
  ///
  /// In ko, this message translates to:
  /// **'재생 실패: {error}'**
  String playbackFailed(String error);

  /// TTS playing status
  ///
  /// In ko, this message translates to:
  /// **'재생 중...'**
  String get playing;

  /// No description provided for @posAdjective.
  ///
  /// In ko, this message translates to:
  /// **'형용사'**
  String get posAdjective;

  /// No description provided for @posAdverb.
  ///
  /// In ko, this message translates to:
  /// **'부사'**
  String get posAdverb;

  /// No description provided for @posConjunction.
  ///
  /// In ko, this message translates to:
  /// **'접속사'**
  String get posConjunction;

  /// No description provided for @posInterjection.
  ///
  /// In ko, this message translates to:
  /// **'감탄사'**
  String get posInterjection;

  /// No description provided for @posNoun.
  ///
  /// In ko, this message translates to:
  /// **'명사'**
  String get posNoun;

  /// No description provided for @posPreposition.
  ///
  /// In ko, this message translates to:
  /// **'전치사/조사'**
  String get posPreposition;

  /// No description provided for @posPronoun.
  ///
  /// In ko, this message translates to:
  /// **'대명사'**
  String get posPronoun;

  /// No description provided for @posVerb.
  ///
  /// In ko, this message translates to:
  /// **'동사'**
  String get posVerb;

  /// No description provided for @practiceModeTitle.
  ///
  /// In ko, this message translates to:
  /// **'발음 연습'**
  String get practiceModeTitle;

  /// No description provided for @practiceWordsOnly.
  ///
  /// In ko, this message translates to:
  /// **'단어만 연습'**
  String get practiceWordsOnly;

  /// Progress indicator
  ///
  /// In ko, this message translates to:
  /// **'진행률: {current} / {total}'**
  String progress(int current, int total);

  /// No description provided for @recentNItems.
  ///
  /// In ko, this message translates to:
  /// **'최근 생성된 {count}개 보기'**
  String recentNItems(int count);

  /// STT error message
  ///
  /// In ko, this message translates to:
  /// **'음성 인식 실패: {error}'**
  String recognitionFailed(String error);

  /// STT complete status
  ///
  /// In ko, this message translates to:
  /// **'인식 완료'**
  String get recognized;

  /// No description provided for @recognizedText.
  ///
  /// In ko, this message translates to:
  /// **'인식된 발음:'**
  String get recognizedText;

  /// Delete success message
  ///
  /// In ko, this message translates to:
  /// **'레코드가 삭제되었습니다'**
  String get recordDeleted;

  /// Refresh button
  ///
  /// In ko, this message translates to:
  /// **'새로고침'**
  String get refresh;

  /// No description provided for @reset.
  ///
  /// In ko, this message translates to:
  /// **'초기화'**
  String get reset;

  /// No description provided for @resetPracticeHistory.
  ///
  /// In ko, this message translates to:
  /// **'연습 기록 초기화'**
  String get resetPracticeHistory;

  /// No description provided for @retry.
  ///
  /// In ko, this message translates to:
  /// **'다시 시도?'**
  String get retry;

  /// No description provided for @reviewAll.
  ///
  /// In ko, this message translates to:
  /// **'전체 복습'**
  String get reviewAll;

  /// Review count display
  ///
  /// In ko, this message translates to:
  /// **'복습 {count}회'**
  String reviewCount(int count);

  /// No description provided for @reviewModeTitle.
  ///
  /// In ko, this message translates to:
  /// **'복습'**
  String get reviewModeTitle;

  /// No description provided for @roleAi.
  ///
  /// In ko, this message translates to:
  /// **'AI'**
  String get roleAi;

  /// No description provided for @roleThirdParty.
  ///
  /// In ko, this message translates to:
  /// **'제삼자'**
  String get roleThirdParty;

  /// No description provided for @roleUser.
  ///
  /// In ko, this message translates to:
  /// **'사용자'**
  String get roleUser;

  /// No description provided for @save.
  ///
  /// In ko, this message translates to:
  /// **'저장'**
  String get save;

  /// Save translation button
  ///
  /// In ko, this message translates to:
  /// **'데이터 저장'**
  String get saveData;

  /// Save error message
  ///
  /// In ko, this message translates to:
  /// **'저장 실패: {error}'**
  String saveFailed(String error);

  /// Instruction to save data
  ///
  /// In ko, this message translates to:
  /// **'검색 모드에서 번역을 저장해보세요'**
  String get saveTranslationsFromSearch;

  /// Data saved status
  ///
  /// In ko, this message translates to:
  /// **'저장 완료'**
  String get saved;

  /// Save in progress
  ///
  /// In ko, this message translates to:
  /// **'저장 중...'**
  String get saving;

  /// No description provided for @score.
  ///
  /// In ko, this message translates to:
  /// **'정확도: {score}%'**
  String score(String score);

  /// No description provided for @scoreLabel.
  ///
  /// In ko, this message translates to:
  /// **'점수'**
  String get scoreLabel;

  /// Search mode label
  ///
  /// In ko, this message translates to:
  /// **'검색'**
  String get search;

  /// No description provided for @searchConditions.
  ///
  /// In ko, this message translates to:
  /// **'검색 조건'**
  String get searchConditions;

  /// No description provided for @searchSentenceHint.
  ///
  /// In ko, this message translates to:
  /// **'문장 검색...'**
  String get searchSentenceHint;

  /// No description provided for @searchWordHint.
  ///
  /// In ko, this message translates to:
  /// **'단어 검색...'**
  String get searchWordHint;

  /// No description provided for @sectionSentence.
  ///
  /// In ko, this message translates to:
  /// **'문장 섹션'**
  String get sectionSentence;

  /// Header for sentences section in material selection
  ///
  /// In ko, this message translates to:
  /// **'문장'**
  String get sectionSentences;

  /// No description provided for @sectionWord.
  ///
  /// In ko, this message translates to:
  /// **'단어 섹션'**
  String get sectionWord;

  /// Header for words section in material selection
  ///
  /// In ko, this message translates to:
  /// **'단어'**
  String get sectionWords;

  /// No description provided for @selectExistingSubject.
  ///
  /// In ko, this message translates to:
  /// **'기존 제목 선택'**
  String get selectExistingSubject;

  /// Selection prompt
  ///
  /// In ko, this message translates to:
  /// **'학습 자료를 선택하세요'**
  String get selectMaterialPrompt;

  /// Title for the material selection dialog
  ///
  /// In ko, this message translates to:
  /// **'학습 자료집 선택'**
  String get selectMaterialSet;

  /// No description provided for @selectPOS.
  ///
  /// In ko, this message translates to:
  /// **'품사 선택'**
  String get selectPOS;

  /// No description provided for @selectParticipants.
  ///
  /// In ko, this message translates to:
  /// **'참가자 선택'**
  String get selectParticipants;

  /// No description provided for @selectSentenceType.
  ///
  /// In ko, this message translates to:
  /// **'문장 종류 선택'**
  String get selectSentenceType;

  /// Study material selector label
  ///
  /// In ko, this message translates to:
  /// **'학습 자료 선택'**
  String get selectStudyMaterial;

  /// No description provided for @sendingMessage.
  ///
  /// In ko, this message translates to:
  /// **'메시지 전송 중...'**
  String get sendingMessage;

  /// Toggle option for Sentence
  ///
  /// In ko, this message translates to:
  /// **'문장'**
  String get sentence;

  /// No description provided for @signUp.
  ///
  /// In ko, this message translates to:
  /// **'회원가입'**
  String get signUp;

  /// Duplicate detection title
  ///
  /// In ko, this message translates to:
  /// **'유사한 텍스트 발견'**
  String get similarTextFound;

  /// Skip button
  ///
  /// In ko, this message translates to:
  /// **'건너뛰기'**
  String get skip;

  /// Source label
  ///
  /// In ko, this message translates to:
  /// **'출처:'**
  String get source;

  /// Source language label
  ///
  /// In ko, this message translates to:
  /// **'원본 언어'**
  String get sourceLanguage;

  /// No description provided for @sourceLanguageLabel.
  ///
  /// In ko, this message translates to:
  /// **'내 언어 (Source)'**
  String get sourceLanguageLabel;

  /// No description provided for @speakNow.
  ///
  /// In ko, this message translates to:
  /// **'지금 말하세요!'**
  String get speakNow;

  /// Label for speaker selection
  ///
  /// In ko, this message translates to:
  /// **'화자'**
  String get speaker;

  /// No description provided for @speakerSelect.
  ///
  /// In ko, this message translates to:
  /// **'발화자 선택'**
  String get speakerSelect;

  /// No description provided for @speakingPractice.
  ///
  /// In ko, this message translates to:
  /// **'말하기 연습'**
  String get speakingPractice;

  /// No description provided for @startChat.
  ///
  /// In ko, this message translates to:
  /// **'대화 시작'**
  String get startChat;

  /// No description provided for @startPractice.
  ///
  /// In ko, this message translates to:
  /// **'연습 시작'**
  String get startPractice;

  /// No description provided for @startTutorial.
  ///
  /// In ko, this message translates to:
  /// **'튜토리얼 시작'**
  String get startTutorial;

  /// No description provided for @startWarning.
  ///
  /// In ko, this message translates to:
  /// **'주의'**
  String get startWarning;

  /// No description provided for @startsWith.
  ///
  /// In ko, this message translates to:
  /// **'시작 글자'**
  String get startsWith;

  /// No description provided for @statusCheckEmail.
  ///
  /// In ko, this message translates to:
  /// **'이메일을 확인하여 인증을 완료해주세요.'**
  String get statusCheckEmail;

  /// No description provided for @statusDownloading.
  ///
  /// In ko, this message translates to:
  /// **'다운로드 중: {name}...'**
  String statusDownloading(Object name);

  /// No description provided for @statusImportFailed.
  ///
  /// In ko, this message translates to:
  /// **'가져오기 실패: {error}'**
  String statusImportFailed(Object error);

  /// No description provided for @statusImportSuccess.
  ///
  /// In ko, this message translates to:
  /// **'{name} 가져오기 완료'**
  String statusImportSuccess(Object name);

  /// No description provided for @statusLoggingIn.
  ///
  /// In ko, this message translates to:
  /// **'로그인 중...'**
  String get statusLoggingIn;

  /// No description provided for @statusLoginCancelled.
  ///
  /// In ko, this message translates to:
  /// **'로그인이 취소되었습니다.'**
  String get statusLoginCancelled;

  /// No description provided for @statusLoginFailed.
  ///
  /// In ko, this message translates to:
  /// **'로그인 실패: {error}'**
  String statusLoginFailed(Object error);

  /// No description provided for @statusLoginSuccess.
  ///
  /// In ko, this message translates to:
  /// **'로그인에 성공했습니다.'**
  String get statusLoginSuccess;

  /// No description provided for @statusLogoutSuccess.
  ///
  /// In ko, this message translates to:
  /// **'로그아웃되었습니다.'**
  String get statusLogoutSuccess;

  /// No description provided for @statusSignUpFailed.
  ///
  /// In ko, this message translates to:
  /// **'회원가입 실패: {error}'**
  String statusSignUpFailed(Object error);

  /// No description provided for @statusSigningUp.
  ///
  /// In ko, this message translates to:
  /// **'회원가입 중...'**
  String get statusSigningUp;

  /// No description provided for @stopPractice.
  ///
  /// In ko, this message translates to:
  /// **'연습 중지'**
  String get stopPractice;

  /// Study complete button text
  ///
  /// In ko, this message translates to:
  /// **'학습 완료'**
  String get studyComplete;

  /// Study records title with count
  ///
  /// In ko, this message translates to:
  /// **'학습 기록 ({count})'**
  String studyRecords(int count);

  /// No description provided for @styleFormal.
  ///
  /// In ko, this message translates to:
  /// **'존댓말'**
  String get styleFormal;

  /// No description provided for @styleInformal.
  ///
  /// In ko, this message translates to:
  /// **'반말'**
  String get styleInformal;

  /// No description provided for @stylePolite.
  ///
  /// In ko, this message translates to:
  /// **'정중함'**
  String get stylePolite;

  /// No description provided for @styleSlang.
  ///
  /// In ko, this message translates to:
  /// **'슬랭/속어'**
  String get styleSlang;

  /// Subject label
  ///
  /// In ko, this message translates to:
  /// **'제목:'**
  String get subject;

  /// No description provided for @swapLanguages.
  ///
  /// In ko, this message translates to:
  /// **'언어 전환'**
  String get swapLanguages;

  /// Tooltip for switching to AI mode
  ///
  /// In ko, this message translates to:
  /// **'AI 모드로 전환'**
  String get switchToAi;

  /// Tooltip for switching to Partner mode
  ///
  /// In ko, this message translates to:
  /// **'파트너 모드로 전환'**
  String get switchToPartner;

  /// No description provided for @syncingData.
  ///
  /// In ko, this message translates to:
  /// **'데이터 동기화 중...'**
  String get syncingData;

  /// No description provided for @tabConversation.
  ///
  /// In ko, this message translates to:
  /// **'대화'**
  String get tabConversation;

  /// Review tab label with count
  ///
  /// In ko, this message translates to:
  /// **'복습 ({count})'**
  String tabReview(int count);

  /// No description provided for @tabSentence.
  ///
  /// In ko, this message translates to:
  /// **'문장'**
  String get tabSentence;

  /// No description provided for @tabSpeaking.
  ///
  /// In ko, this message translates to:
  /// **'말하기'**
  String get tabSpeaking;

  /// Study material tab label with count
  ///
  /// In ko, this message translates to:
  /// **'학습 자료 ({count})'**
  String tabStudyMaterial(int count);

  /// No description provided for @tabWord.
  ///
  /// In ko, this message translates to:
  /// **'단어'**
  String get tabWord;

  /// No description provided for @tagFormal.
  ///
  /// In ko, this message translates to:
  /// **'존댓말'**
  String get tagFormal;

  /// No description provided for @tagSelection.
  ///
  /// In ko, this message translates to:
  /// **'태그 입력'**
  String get tagSelection;

  /// Target language label
  ///
  /// In ko, this message translates to:
  /// **'대상 언어'**
  String get targetLanguage;

  /// Language filter label
  ///
  /// In ko, this message translates to:
  /// **'대상 언어 필터:'**
  String get targetLanguageFilter;

  /// No description provided for @targetLanguageLabel.
  ///
  /// In ko, this message translates to:
  /// **'학습 언어 (Target)'**
  String get targetLanguageLabel;

  /// No description provided for @thinkingTimeDesc.
  ///
  /// In ko, this message translates to:
  /// **'정답이 공개되기 전 생각할 시간입니다.'**
  String get thinkingTimeDesc;

  /// No description provided for @thinkingTimeInterval.
  ///
  /// In ko, this message translates to:
  /// **'재생 시차'**
  String get thinkingTimeInterval;

  /// No description provided for @timeUp.
  ///
  /// In ko, this message translates to:
  /// **'시간 초과!'**
  String get timeUp;

  /// No description provided for @titleFormat.
  ///
  /// In ko, this message translates to:
  /// **'{type}: {materialName}'**
  String titleFormat(Object materialName, Object type);

  /// No description provided for @titleTagSelection.
  ///
  /// In ko, this message translates to:
  /// **'제목 태그 (자료집)'**
  String get titleTagSelection;

  /// No description provided for @tooltipDecrease.
  ///
  /// In ko, this message translates to:
  /// **'감소'**
  String get tooltipDecrease;

  /// No description provided for @tooltipIncrease.
  ///
  /// In ko, this message translates to:
  /// **'증가'**
  String get tooltipIncrease;

  /// No description provided for @tooltipSearch.
  ///
  /// In ko, this message translates to:
  /// **'검색'**
  String get tooltipSearch;

  /// No description provided for @tooltipSpeaking.
  ///
  /// In ko, this message translates to:
  /// **'말하기'**
  String get tooltipSpeaking;

  /// No description provided for @tooltipStudyReview.
  ///
  /// In ko, this message translates to:
  /// **'학습+복습'**
  String get tooltipStudyReview;

  /// Total records count
  ///
  /// In ko, this message translates to:
  /// **'총 {count}개의 기록 (전체 보기)'**
  String totalRecords(int count);

  /// Translate button
  ///
  /// In ko, this message translates to:
  /// **'번역'**
  String get translate;

  /// Translation in progress
  ///
  /// In ko, this message translates to:
  /// **'번역 중...'**
  String get translating;

  /// Label for translation toggle
  ///
  /// In ko, this message translates to:
  /// **'번역'**
  String get translation;

  /// Translation done status
  ///
  /// In ko, this message translates to:
  /// **'번역 완료 (저장 필요)'**
  String get translationComplete;

  /// Translation error
  ///
  /// In ko, this message translates to:
  /// **'번역 실패: {error}'**
  String translationFailed(String error);

  /// No description provided for @translationLimitExceeded.
  ///
  /// In ko, this message translates to:
  /// **'번역 한도 초과'**
  String get translationLimitExceeded;

  /// No description provided for @translationLimitMessage.
  ///
  /// In ko, this message translates to:
  /// **'일일 무료 번역(5회)을 모두 사용했습니다.\\n\\n광고를 보고 5회를 즉시 충전하시겠습니까?'**
  String get translationLimitMessage;

  /// Existing translation loaded
  ///
  /// In ko, this message translates to:
  /// **'저장된 번역 불러옴'**
  String get translationLoaded;

  /// No description provided for @translationRefilled.
  ///
  /// In ko, this message translates to:
  /// **'번역 횟수가 5회 충전되었습니다!'**
  String get translationRefilled;

  /// No description provided for @translationResultHint.
  ///
  /// In ko, this message translates to:
  /// **'번역 결과 - 수정 가능함'**
  String get translationResultHint;

  /// No description provided for @tryAgain.
  ///
  /// In ko, this message translates to:
  /// **'다시 시도'**
  String get tryAgain;

  /// No description provided for @tutorialAiChatDesc.
  ///
  /// In ko, this message translates to:
  /// **'AI 페르소나와 실전 대화를 연습해 보세요.'**
  String get tutorialAiChatDesc;

  /// No description provided for @tutorialAiChatTitle.
  ///
  /// In ko, this message translates to:
  /// **'AI 채팅'**
  String get tutorialAiChatTitle;

  /// No description provided for @tutorialContextDesc.
  ///
  /// In ko, this message translates to:
  /// **'같은 문장이라도 상황(예: 아침, 저녁)을 적어두면 별도로 저장할 수 있어요.'**
  String get tutorialContextDesc;

  /// No description provided for @tutorialContextTitle.
  ///
  /// In ko, this message translates to:
  /// **'상황/문맥 태그'**
  String get tutorialContextTitle;

  /// No description provided for @tutorialLangSettingsDesc.
  ///
  /// In ko, this message translates to:
  /// **'번역할 원본 언어와 대상 언어를 설정합니다.'**
  String get tutorialLangSettingsDesc;

  /// No description provided for @tutorialLangSettingsTitle.
  ///
  /// In ko, this message translates to:
  /// **'언어 설정'**
  String get tutorialLangSettingsTitle;

  /// No description provided for @tutorialM1ToggleDesc.
  ///
  /// In ko, this message translates to:
  /// **'단어와 문장 모드를 여기서 전환하세요.'**
  String get tutorialM1ToggleDesc;

  /// No description provided for @tutorialM1ToggleTitle.
  ///
  /// In ko, this message translates to:
  /// **'단어/문장 모드'**
  String get tutorialM1ToggleTitle;

  /// No description provided for @tutorialM2DropdownDesc.
  ///
  /// In ko, this message translates to:
  /// **'상단 메뉴를 통해 학습할 자료를 선택할 수 있습니다.'**
  String get tutorialM2DropdownDesc;

  /// No description provided for @tutorialM2ImportDesc.
  ///
  /// In ko, this message translates to:
  /// **'기기의 폴더에서 JSON 파일을 불러옵니다.'**
  String get tutorialM2ImportDesc;

  /// No description provided for @tutorialM2ListDesc.
  ///
  /// In ko, this message translates to:
  /// **'저장된 항목을 확인하고 뒤집어보세요. 카드를 길게 누르면 삭제할 수 있습니다.'**
  String get tutorialM2ListDesc;

  /// No description provided for @tutorialM2ListTitle.
  ///
  /// In ko, this message translates to:
  /// **'학습 목록'**
  String get tutorialM2ListTitle;

  /// No description provided for @tutorialM2SearchDesc.
  ///
  /// In ko, this message translates to:
  /// **'저장된 단어와 문장을 검색하여 빠르게 찾을 수 있습니다.'**
  String get tutorialM2SearchDesc;

  /// No description provided for @tutorialM2SelectDesc.
  ///
  /// In ko, this message translates to:
  /// **'우측 상단 메뉴(⋮)를 눌러 학습할 자료집을 선택하거나 온라인 자료실을 이용하세요.'**
  String get tutorialM2SelectDesc;

  /// No description provided for @tutorialM2SelectTitle.
  ///
  /// In ko, this message translates to:
  /// **'자료집 선택'**
  String get tutorialM2SelectTitle;

  /// No description provided for @tutorialM3IntervalDesc.
  ///
  /// In ko, this message translates to:
  /// **'문장 사이의 대기 시간을 조절합니다.'**
  String get tutorialM3IntervalDesc;

  /// No description provided for @tutorialM3IntervalTitle.
  ///
  /// In ko, this message translates to:
  /// **'간격 설정'**
  String get tutorialM3IntervalTitle;

  /// No description provided for @tutorialM3ResetDesc.
  ///
  /// In ko, this message translates to:
  /// **'태그를 선택하거나 암기한 항목 제외 등 연습 대상을 자유롭게 설정할 수 있습니다.'**
  String get tutorialM3ResetDesc;

  /// No description provided for @tutorialM3ResetTitle.
  ///
  /// In ko, this message translates to:
  /// **'필터 및 설정'**
  String get tutorialM3ResetTitle;

  /// No description provided for @tutorialM3SelectDesc.
  ///
  /// In ko, this message translates to:
  /// **'우측 상단 메뉴(⋮)에서 연습하고 싶은 자료집을 선택하세요.'**
  String get tutorialM3SelectDesc;

  /// No description provided for @tutorialM3SelectTitle.
  ///
  /// In ko, this message translates to:
  /// **'자료 선택'**
  String get tutorialM3SelectTitle;

  /// No description provided for @tutorialM3StartDesc.
  ///
  /// In ko, this message translates to:
  /// **'재생 버튼을 눌러 원어민 음성을 듣고 따라하세요.'**
  String get tutorialM3StartDesc;

  /// No description provided for @tutorialM3StartTitle.
  ///
  /// In ko, this message translates to:
  /// **'연습 시작'**
  String get tutorialM3StartTitle;

  /// No description provided for @tutorialM3WordsDesc.
  ///
  /// In ko, this message translates to:
  /// **'체크하면 저장된 단어만 연습합니다.'**
  String get tutorialM3WordsDesc;

  /// No description provided for @tutorialM3WordsTitle.
  ///
  /// In ko, this message translates to:
  /// **'단어 연습'**
  String get tutorialM3WordsTitle;

  /// No description provided for @tutorialMicDesc.
  ///
  /// In ko, this message translates to:
  /// **'마이크 버튼을 눌러 음성으로 입력할 수 있습니다.'**
  String get tutorialMicDesc;

  /// No description provided for @tutorialMicTitle.
  ///
  /// In ko, this message translates to:
  /// **'음성 입력'**
  String get tutorialMicTitle;

  /// No description provided for @tutorialSaveDesc.
  ///
  /// In ko, this message translates to:
  /// **'번역된 결과를 학습 기록에 저장하세요.'**
  String get tutorialSaveDesc;

  /// No description provided for @tutorialSaveTitle.
  ///
  /// In ko, this message translates to:
  /// **'저장하기'**
  String get tutorialSaveTitle;

  /// No description provided for @tutorialSwapDesc.
  ///
  /// In ko, this message translates to:
  /// **'내 언어와 학습 언어를 서로 바꿉니다.'**
  String get tutorialSwapDesc;

  /// No description provided for @tutorialTabDesc.
  ///
  /// In ko, this message translates to:
  /// **'여기서 원하는 학습 모드를 선택할 수 있습니다.'**
  String get tutorialTabDesc;

  /// No description provided for @tutorialTapToContinue.
  ///
  /// In ko, this message translates to:
  /// **'화면을 탭하여 계속'**
  String get tutorialTapToContinue;

  /// No description provided for @tutorialTransDesc.
  ///
  /// In ko, this message translates to:
  /// **'입력한 텍스트를 번역합니다.'**
  String get tutorialTransDesc;

  /// No description provided for @tutorialTransTitle.
  ///
  /// In ko, this message translates to:
  /// **'번역하기'**
  String get tutorialTransTitle;

  /// No description provided for @typeExclamation.
  ///
  /// In ko, this message translates to:
  /// **'감탄문'**
  String get typeExclamation;

  /// No description provided for @typeImperative.
  ///
  /// In ko, this message translates to:
  /// **'명령문'**
  String get typeImperative;

  /// No description provided for @typeQuestion.
  ///
  /// In ko, this message translates to:
  /// **'의문문'**
  String get typeQuestion;

  /// No description provided for @typeStatement.
  ///
  /// In ko, this message translates to:
  /// **'평서문'**
  String get typeStatement;

  /// No description provided for @usageLimitTitle.
  ///
  /// In ko, this message translates to:
  /// **'한도 도달'**
  String get usageLimitTitle;

  /// Use existing text button
  ///
  /// In ko, this message translates to:
  /// **'기존 텍스트 사용'**
  String get useExistingText;

  /// No description provided for @viewOnlineGuide.
  ///
  /// In ko, this message translates to:
  /// **'온라인 가이드 보기'**
  String get viewOnlineGuide;

  /// No description provided for @voluntaryTranslations.
  ///
  /// In ko, this message translates to:
  /// **'자발적 번역'**
  String get voluntaryTranslations;

  /// No description provided for @watchAdAndRefill.
  ///
  /// In ko, this message translates to:
  /// **'광고 보고 충전 (+5회)'**
  String get watchAdAndRefill;

  /// Toggle option for Word
  ///
  /// In ko, this message translates to:
  /// **'단어'**
  String get word;

  /// No description provided for @wordDefenseDesc.
  ///
  /// In ko, this message translates to:
  /// **'적이 도착하기 전에 단어를 말해서 기지를 방어하세요.'**
  String get wordDefenseDesc;

  /// No description provided for @wordDefenseTitle.
  ///
  /// In ko, this message translates to:
  /// **'단어 디펜스'**
  String get wordDefenseTitle;

  /// No description provided for @wordModeLabel.
  ///
  /// In ko, this message translates to:
  /// **'단어 모드'**
  String get wordModeLabel;

  /// No description provided for @yourPronunciation.
  ///
  /// In ko, this message translates to:
  /// **'내 발음'**
  String get yourPronunciation;

  /// No description provided for @ttsUnsupportedNatively.
  ///
  /// In ko, this message translates to:
  /// **'이 기기의 기본 설정에서는 이 언어의 음성 출력을 지원하지 않습니다.'**
  String get ttsUnsupportedNatively;

  /// No description provided for @homeTab.
  ///
  /// In ko, this message translates to:
  /// **'번역'**
  String get homeTab;

  /// No description provided for @welcomeTitle.
  ///
  /// In ko, this message translates to:
  /// **'Talkie에 오신 것을 환영합니다!'**
  String get welcomeTitle;

  /// No description provided for @welcomeDesc.
  ///
  /// In ko, this message translates to:
  /// **'Talkie에 오신 것을 환영합니다! 전 세계 80개 이상의 모든 언어를 100% 무결성으로 지원하며, 새로운 프리미엄 3D 디자인과 최적화된 성능으로 완벽한 학습 경험을 선사합니다.'**
  String get welcomeDesc;

  /// No description provided for @welcomeButton.
  ///
  /// In ko, this message translates to:
  /// **'시작하기'**
  String get welcomeButton;

  /// No description provided for @labelDetails.
  ///
  /// In ko, this message translates to:
  /// **'상세 설정'**
  String get labelDetails;

  /// No description provided for @translationResult.
  ///
  /// In ko, this message translates to:
  /// **'번역 결과'**
  String get translationResult;

  /// No description provided for @inputContent.
  ///
  /// In ko, this message translates to:
  /// **'입력 내용'**
  String get inputContent;

  /// No description provided for @translateNow.
  ///
  /// In ko, this message translates to:
  /// **'지금 번역하기'**
  String get translateNow;

  /// No description provided for @tooltipSettingsConfirm.
  ///
  /// In ko, this message translates to:
  /// **'설정 확인'**
  String get tooltipSettingsConfirm;

  /// No description provided for @hintNoteExample.
  ///
  /// In ko, this message translates to:
  /// **'예: 상황 설명, 동음이의어 등'**
  String get hintNoteExample;

  /// No description provided for @hintTagExample.
  ///
  /// In ko, this message translates to:
  /// **'예: 비즈니스, 여행...'**
  String get hintTagExample;

  /// No description provided for @addNew.
  ///
  /// In ko, this message translates to:
  /// **'새 추가'**
  String get addNew;

  /// No description provided for @newNotebookTitle.
  ///
  /// In ko, this message translates to:
  /// **'새 자료집 이름'**
  String get newNotebookTitle;

  /// No description provided for @enterNameHint.
  ///
  /// In ko, this message translates to:
  /// **'이름을 입력하세요'**
  String get enterNameHint;

  /// No description provided for @add.
  ///
  /// In ko, this message translates to:
  /// **'추가'**
  String get add;

  /// No description provided for @openSettings.
  ///
  /// In ko, this message translates to:
  /// **'설정 열기'**
  String get openSettings;

  /// No description provided for @helpNotebook.
  ///
  /// In ko, this message translates to:
  /// **'번역된 결과를 저장할 폴더를 선택합니다.'**
  String get helpNotebook;

  /// No description provided for @helpNote.
  ///
  /// In ko, this message translates to:
  /// **'단어의 뜻이나 예문, 상황 등을 자유롭게 기록하세요.'**
  String get helpNote;

  /// No description provided for @helpTag.
  ///
  /// In ko, this message translates to:
  /// **'나중에 분류하거나 검색하기 위한 키워드를 입력하세요.'**
  String get helpTag;

  /// No description provided for @requestTranslation.
  ///
  /// In ko, this message translates to:
  /// **'번역 요청하기'**
  String get requestTranslation;

  /// No description provided for @statusRequestSuccess.
  ///
  /// In ko, this message translates to:
  /// **'번역 요청이 완료되었습니다.'**
  String get statusRequestSuccess;

  /// No description provided for @statusRequestFailed.
  ///
  /// In ko, this message translates to:
  /// **'번역 요청 실패: {error}'**
  String statusRequestFailed(String error);

  /// No description provided for @studyLangNotFoundTitle.
  ///
  /// In ko, this message translates to:
  /// **'학습 언어 미지원'**
  String get studyLangNotFoundTitle;

  /// No description provided for @studyLangNotFoundDesc.
  ///
  /// In ko, this message translates to:
  /// **'선택하신 자료는 현재 설정된 학습 언어({targetLang})를 지원하지 않아 로컬에 저장할 수 없습니다. 번역을 요청하시겠습니까?'**
  String studyLangNotFoundDesc(String targetLang);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'af',
        'am',
        'ar',
        'as',
        'az',
        'be',
        'bg',
        'bn',
        'bo',
        'bs',
        'ca',
        'cs',
        'cy',
        'da',
        'de',
        'el',
        'en',
        'es',
        'et',
        'eu',
        'fa',
        'fi',
        'fil',
        'fr',
        'gl',
        'gu',
        'he',
        'hi',
        'hr',
        'hu',
        'hy',
        'id',
        'is',
        'it',
        'ja',
        'ka',
        'kk',
        'km',
        'kn',
        'ko',
        'ky',
        'lo',
        'lt',
        'lv',
        'mk',
        'ml',
        'mn',
        'mr',
        'ms',
        'my',
        'nb',
        'ne',
        'nl',
        'no',
        'or',
        'pa',
        'pl',
        'pt',
        'ro',
        'ru',
        'si',
        'sk',
        'sl',
        'sq',
        'sr',
        'sv',
        'sw',
        'ta',
        'te',
        'th',
        'tl',
        'tr',
        'uk',
        'ur',
        'uz',
        'vi',
        'zh',
        'zu'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'as':
      return AppLocalizationsAs();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'bo':
      return AppLocalizationsBo();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'cy':
      return AppLocalizationsCy();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'eu':
      return AppLocalizationsEu();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fil':
      return AppLocalizationsFil();
    case 'fr':
      return AppLocalizationsFr();
    case 'gl':
      return AppLocalizationsGl();
    case 'gu':
      return AppLocalizationsGu();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ky':
      return AppLocalizationsKy();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'my':
      return AppLocalizationsMy();
    case 'nb':
      return AppLocalizationsNb();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'or':
      return AppLocalizationsOr();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'te':
      return AppLocalizationsTe();
    case 'th':
      return AppLocalizationsTh();
    case 'tl':
      return AppLocalizationsTl();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'uz':
      return AppLocalizationsUz();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
    case 'zu':
      return AppLocalizationsZu();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
