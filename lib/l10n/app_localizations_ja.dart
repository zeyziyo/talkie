// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Talkie';

  @override
  String tabReview(int count) {
    return '復習 ($count)';
  }

  @override
  String tabStudyMaterial(int count) {
    return '学習資料 ($count)';
  }

  @override
  String get search => '検索';

  @override
  String get translate => '翻訳';

  @override
  String get listen => '聞く';

  @override
  String get saveData => 'データ保存';

  @override
  String get saved => '保存完了';

  @override
  String get delete => '削除';

  @override
  String get materialInfo => 'Material Info';

  @override
  String get cancel => 'キャンセル';

  @override
  String get confirm => '確認';

  @override
  String get refresh => '更新';

  @override
  String studyRecords(int count) {
    return '学習記録 ($count)';
  }

  @override
  String get targetLanguageFilter => '対象言語フィルタ:';

  @override
  String get noRecords => '選択した言語の学習記録がありません';

  @override
  String get saveTranslationsFromSearch => '検索モードで翻訳を保存してください';

  @override
  String get flip => 'めくる';

  @override
  String get hide => '隠す';

  @override
  String get deleteRecord => 'レコード削除';

  @override
  String get confirmDelete => 'この学習記録を削除しますか?';

  @override
  String get recordDeleted => 'レコードが削除されました';

  @override
  String deleteFailed(String error) {
    return '削除失敗: $error';
  }

  @override
  String get importJsonFile => 'JSONファイル読み込み';

  @override
  String get importing => '読み込み中...';

  @override
  String get importComplete => '読み込み完了';

  @override
  String get importFailed => '読み込み失敗';

  @override
  String importFile(String fileName) {
    return 'ファイル: $fileName';
  }

  @override
  String importTotal(int count) {
    return '全体: $count個';
  }

  @override
  String importAdded(int count) {
    return '追加: $count個';
  }

  @override
  String importSkipped(int count) {
    return 'スキップ: $count個';
  }

  @override
  String get errors => 'エラー:';

  @override
  String get error => 'エラー';

  @override
  String importErrorMessage(String error) {
    return 'ファイル読み込み失敗:\\n$error';
  }

  @override
  String get selectStudyMaterial => '学習資料選択';

  @override
  String get subject => '件名:';

  @override
  String get source => 'ソース:';

  @override
  String get file => 'ファイル:';

  @override
  String progress(int current, int total) {
    return '進行率: $current / $total';
  }

  @override
  String get importJsonFilePrompt => 'JSONファイルを読み込んでください';

  @override
  String get selectMaterialPrompt => '学習資料を選択してください';

  @override
  String get studyComplete => '学習完了';

  @override
  String get markAsStudied => '学習済みにする';

  @override
  String get listening => '聞いています...';

  @override
  String get recognized => '認識完了';

  @override
  String recognitionFailed(String error) {
    return '音声認識失敗: $error';
  }

  @override
  String get checking => '確認中...';

  @override
  String get translating => '翻訳中...';

  @override
  String get translationComplete => '翻訳完了 (保存が必要)';

  @override
  String get translationLoaded => '保存された翻訳を読み込みました';

  @override
  String translationFailed(String error) {
    return '翻訳失敗: $error';
  }

  @override
  String get enterTextToTranslate => '翻訳するテキストを入力してください';

  @override
  String get saving => '保存中...';

  @override
  String get noTranslationToSave => '保存する翻訳がありません';

  @override
  String saveFailed(String error) {
    return '保存失敗: $error';
  }

  @override
  String get playing => '再生中...';

  @override
  String get noTextToPlay => '再生するテキストがありません';

  @override
  String playbackFailed(String error) {
    return '再生失敗: $error';
  }

  @override
  String get sourceLanguage => '元の言語';

  @override
  String get targetLanguage => '対象言語';

  @override
  String get similarTextFound => '類似テキスト発見';

  @override
  String get useExistingText => '既存テキスト使用';

  @override
  String get createNew => '新しい文で進める';

  @override
  String reviewCount(int count) {
    return '復習 $count回';
  }

  @override
  String get tabSpeaking => 'Speaking';

  @override
  String get speakingPractice => 'Speaking Practice';

  @override
  String intervalSeconds(int seconds) {
    return 'Interval: ${seconds}s';
  }

  @override
  String get yourPronunciation => 'Your Pronunciation';

  @override
  String get correctAnswer => 'Correct Answer';

  @override
  String score(String score) {
    return 'Accuracy: $score%';
  }

  @override
  String get perfect => 'Perfect!';

  @override
  String get good => 'Good';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get startPractice => 'Start Practice';

  @override
  String get stopPractice => 'Stop Practice';

  @override
  String get helpTitle => 'Help & Guide';

  @override
  String get helpTabModes => 'Modes';

  @override
  String get helpTabJson => 'JSON Format';

  @override
  String get helpTabTour => 'Tour';

  @override
  String get helpMode1Desc =>
      'Recognize voice, translate to target language, and listen to the result.';

  @override
  String get helpMode2Desc =>
      'Review saved sentences with auto-hide translations and track your review count.';

  @override
  String get helpMode3Desc =>
      'Import external study materials (JSON) and practice systematically.';

  @override
  String get helpMode4Desc =>
      'Practice speaking selected materials with random interval drills and pronunciation scoring.';

  @override
  String get helpJsonDesc =>
      'To import study materials in Mode 3, create a JSON file with the following structure:';

  @override
  String get helpTourDesc =>
      'Start the interactive tutorial to learn the main features.';

  @override
  String get startTutorial => 'Start Tutorial';
}
