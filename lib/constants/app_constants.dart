class AppConstants {
  // --- Infrastructure & URLs ---
  static const String githubBaseUrl = 'https://zeyziyo.github.io/talkie';
  // static const String githubBaseUrl = 'http://localhost:8081';
  static const String materialsBaseUrl = '$githubBaseUrl/materials';
  static const String onlineMaterialsIndexUrl = '$githubBaseUrl/materials_v3.json';
  static const String devWebsiteUrl = '$githubBaseUrl/index.html';

  // --- Default Titles ---
  static const String defaultWordbookKo = '나의 단어장';
  static const String defaultWordbookEn = 'My Wordbook';
  static const String defaultSentenceBookKo = '나의 문장집';
  static const String defaultSentenceBookEn = 'My Sentence Collection';

  // --- UI Config ---
  static const double defaultBorderRadius = 12.0;
  static const double cardBorderRadius = 20.0;

  // --- App Info ---
  static const String appVersion = '2.0.0';
  static const String developerEmail = 'talkie.help@gmail.com';
}
