import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/foundation.dart';
import 'supabase/supabase_helper.dart';
import 'supabase/supabase_repository.dart';
import 'supabase/supabase_edge_service.dart';
import 'supabase/supabase_auth_service.dart';
import 'database/unified_repository.dart';

/// SupabaseService - 클라우드 서비스 관리 (Facade)
class SupabaseService {

  /// Phase 106: Resolve or Issue a canonical group ID for a translation set
  static Future<int> resolveCanonicalGroupId({
    required String sourceText,
    required String sourceLang,
    required String targetText,
    required String targetLang,
    String? englishText,
    String? type,
    String? root,
    String? note,
  }) async {
    // 1. Check if canonical ID already exists in cloud
    int? canonicalId = await findGroupIdWithPivot(
      sourceText: sourceText,
      sourceLang: sourceLang,
      targetText: targetText,
      targetLang: targetLang,
      englishText: englishText,
    );

    if (canonicalId != null) {
      print('[Supabase] Found existing canonical group_id: $canonicalId');
      return canonicalId;
    }

    // 2. No canonical ID found - Generate Content-Based ID
    print('[Supabase] No canonical ID found. Generating Content ID...');
    final itemType = type ?? ((sourceText.split(' ').length > 3) ? 'sentence' : 'word');
    canonicalId = UnifiedRepository.generateGroupId(
      text: sourceText, 
      type: itemType,
    );
    
    // 3. Register the new ID with basic data (Source + Pivot if any)
    
    // Save Source
    await saveEntry(
      groupId: canonicalId,
      text: sourceText,
      langCode: sourceLang,
      type: itemType,
      root: root,
      note: note,
    );

    // Save English Pivot (Shared Dictionary Key)
    if (englishText != null && sourceLang != 'en' && targetLang != 'en') {
      await saveEntry(
        groupId: canonicalId,
        text: englishText,
        langCode: 'en',
        type: itemType,
      );
    }
    
    return canonicalId;
  }

  // Complex Operations (Keep in facade or move to logic layer if needed)
  static Future<Map<String, dynamic>> importJsonEntry({
    required String sourceText,
    required String sourceLang,
    required String targetText,
    required String targetLang,
    String? note,
    String? root,
    String? type,
    List<String>? tags,
    String? syncSubject,
  }) async {
    try {
      final validation = await translateAndValidate(
        text: sourceText,
        sourceLang: sourceLang,
        targetLang: targetLang,
        note: note,
      );
      
      if (validation['isValid'] != true) {
        return {'success': false, 'reason': 'Content Policy: ${validation['reason'] ?? 'Unknown'}'};
      }
      
      final englishText = validation['englishText'] as String?;
      int? groupId = await findGroupIdWithPivot(
        sourceText: sourceText,
        sourceLang: sourceLang,
        targetText: targetText,
        targetLang: targetLang,
        englishText: englishText,
      );
      
      if (groupId == null) {
        final itemType = type ?? 'sentence';
        groupId = UnifiedRepository.generateGroupId(
          text: sourceText,
          type: itemType,
        );

        await saveEntry(
          groupId: groupId,
          text: sourceText,
          langCode: sourceLang,
          type: itemType,
          note: note,
          root: root ?? validation['root'] as String?,
          tags: tags,
        );

        if (englishText != null && sourceLang != 'en' && targetLang != 'en') {
          await saveEntry(groupId: groupId, text: englishText, langCode: 'en', type: itemType);
        }
      }

      await saveEntry(groupId: groupId, text: targetText, langCode: targetLang, type: type ?? 'sentence');
      
      final materialTags = syncSubject != null ? [syncSubject] : <String>[];
      await SupabaseRepository.addToLibrary(
        groupId: groupId, 
        type: type ?? 'sentence',
        note: note, 
        tags: materialTags,
        notebookTitle: syncSubject,
      );
      
      return {'success': true, 'id': groupId};
    } catch (e) {
      return {'success': false, 'reason': e.toString()};
    }
  }

  static SupabaseClient get client => SupabaseHelper.client;

  static Future<void> initialize() async {
    await SupabaseHelper.initialize();
    try {
      await SupabaseAuthService.signInAnonymously();
    } catch (e) {
      debugPrint('[SupabaseService] Anonymous sign-in failed: $e');
    }
  }

  // Edge Functions Delegation
  static Future<Map<String, dynamic>> translateAndValidate({
    required String text,
    required String sourceLang,
    required String targetLang,
    String? note,
  }) => SupabaseEdgeService.translateAndValidate(
    text: text,
    sourceLang: sourceLang,
    targetLang: targetLang,
    note: note,
  );

  static Future<Map<String, dynamic>> getRecommendations({
    required List<Map<String, dynamic>> history,
    required String sourceLang,
    required String targetLang,
  }) => SupabaseEdgeService.getRecommendations(
    history: history,
    sourceLang: sourceLang,
    targetLang: targetLang,
  );

  // Repository Delegation
  static Future<void> saveEntry({
    required int groupId,
    required String text,
    required String langCode,
    required String type,
    String? note,
    String? root,
    List<String>? tags,
  }) => SupabaseRepository.saveEntry(
    groupId: groupId,
    text: text,
    langCode: langCode,
    type: type,
    note: note,
    root: root,
    tags: tags,
  );

  static Future<void> addToLibrary({
    required int groupId,
    required String type,
    String? note,
    String? sourceLang,
    String? targetLang,
    List<String>? tags,
    int? reviewCount,
    bool? isMemorized,
    String? lastReviewed,
    String? notebookTitle,
  }) => SupabaseRepository.addToLibrary(
    groupId: groupId,
    type: type,
    note: note,
    sourceLang: sourceLang,
    targetLang: targetLang,
    tags: tags,
    reviewCount: reviewCount,
    isMemorized: isMemorized,
    lastReviewed: lastReviewed,
    notebookTitle: notebookTitle,
  );

  static Future<int?> findGroupId(String text, String langCode) => SupabaseRepository.findGroupId(text, langCode);

  static Future<int?> findGroupIdWithPivot({
    required String sourceText,
    required String sourceLang,
    required String targetText,
    required String targetLang,
    String? englishText,
  }) => SupabaseRepository.findGroupIdWithPivot(
    sourceText: sourceText,
    sourceLang: sourceLang,
    targetText: targetText,
    targetLang: targetLang,
    englishText: englishText,
  );

  /// Phase 33: Merge anonymous data to permanent user account on Supabase server
  static Future<void> mergeUserSessions(String oldId, String newId) =>
      SupabaseRepository.mergeUserSessions(oldId, newId);

  // Legacy wrappers
  static Future<void> saveSentence({required int groupId, required String text, required String langCode, String? note}) => 
    SupabaseRepository.saveEntry(groupId: groupId, text: text, langCode: langCode, type: 'sentence', note: note);

  /// Phase 17462: Request missing translation for online material
  static Future<void> requestTranslation(String materialId, String langCode) async {
    final userId = client.auth.currentUser?.id;
    await client.from('translation_requests').insert({
      'material_id': materialId,
      'lang_code': langCode,
      'user_id': userId,
    });
  }
}
