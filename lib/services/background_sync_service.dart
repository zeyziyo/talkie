import 'package:workmanager/workmanager.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:talkie/services/database_service.dart';
import 'package:talkie/services/supabase_service.dart';

// Key for the background task
const String simpleTaskKey = "talkie.sync.data";

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((task, inputData) async {
    print("[BackgroundSync] Executing task: $task");
    
    try {
      if (task == simpleTaskKey) {
        // 1. Initialize dependencies (Workmanager runs in a separate isolate)
        await dotenv.load(fileName: ".env");
        await SupabaseService.initialize();
        
        // 2. Perform Sync
        final result = await BackgroundSyncService.syncData();
        return result;
      }
    } catch (e) {
      print("[BackgroundSync] Error: $e");
      return Future.value(false);
    }
    
    return Future.value(true);
  });
}

class BackgroundSyncService {
  
  /// Initialize Workmanager
  static Future<void> initialize() async {
    await Workmanager().initialize(
      callbackDispatcher,
      // isInDebugMode removed (deprecated)
    );
    
    print("[BackgroundSync] Initialized");
  }
  
  /// Register the periodic sync task
  static Future<void> registerPeriodicTask() async {
    await Workmanager().registerPeriodicTask(
      "talkie_sync_task_unique",
      simpleTaskKey,
      frequency: const Duration(minutes: 15), // Minimum interval on Android/iOS
      constraints: Constraints(
        networkType: NetworkType.connected, // Only run when internet is available
      ),
      // existingWorkPolicy removed (build error)
    );
    print("[BackgroundSync] Periodic task registered");
  }

  /// The actual sync logic
  static Future<bool> syncData() async {
    try {
      print("[BackgroundSync] Checking for unsynced data...");
      
      // 1. Get unsynced records from Local DB
      final records = await DatabaseService.getUnsyncedTranslations(limit: 50); // Batch 50
      
      if (records.isEmpty) {
        print("[BackgroundSync] No data to sync.");
        return true;
      }
      
      print("[BackgroundSync] Found ${records.length} records to sync.");
      
      List<int> syncedIds = [];
      
      // 2. Upload to Supabase
      // Optimization: We use `saveSentence` loop for now. 
      // Supabase `insert` supports batches, but our `saveSentence` logic adds to `user_library` separately.
      // To save quota, we do NOT use `importJsonEntry` (which does AI validation).
      // We assume data in Local DB is trusted (user imported it).
      
      for (var record in records) {
        try {
          final groupId = await SupabaseService.findGroupId(
            record['source_text'], 
            record['source_lang']
          );
          
          final sourceText = record['source_text'] as String;
          final sourceLang = record['source_lang'] as String;
          final targetText = record['target_text'] as String;
          final targetLang = record['target_lang'] as String;
          
          if (groupId == null) {
            // Does not exist -> Create Group & Insert via simple API (Raw Insert)
            // We use importJsonEntry logic but WITHOUT validation is ideal, 
            // but importJsonEntry forces validation.
            // We should use `importJsonEntry` but skip validation if possible?
            // Actually, `importJsonEntry` calls `translateAndValidate` (AI).
            // We must AVOID that.
            
            // So we manually insert here using SupabaseClient logic directly, or 
            // creating a `syncRawEntry` method in SupabaseService would be cleaner.
            // For now, I will implement the raw insert logic here or call a new helper.
            // Let's call `SupabaseService.importJsonEntry` but we need to modify it to skip validation?
            // User requested "No AI".
            // So calling `importJsonEntry` is BAD.
            
            // I will use raw calls here for now to ensure isolation, or better, add `syncRawEntry` to SupabaseService next.
            // But since I can't restart the protocol, I'll put the logic here.
            
            // Actually this file imports SupabaseService.
            // I should use `SupabaseService.client` if it's public. It is.
            // But logic is complex (Group ID, User Library).
            
            // BETTER: Use `SupabaseService.importJsonEntry` is too risky.
            // I will assume for this step that I'll implement a `syncRawEntry` in SupabaseService in the next step.
            // Or I can just write the logic here.
            
            // Logic:
            // 1. Check Group (Done)
            // 2. Insert Source/Target (Raw)
            // 3. Add to Library
            
             // Create New Group ID
             final newGroupId = DateTime.now().millisecondsSinceEpoch;
             final userId = SupabaseService.client.auth.currentUser?.id;

             // Insert Source
             await SupabaseService.client.from('sentences').insert({
               'group_id': newGroupId,
               'lang_code': sourceLang,
               'text': sourceText,
               'note': record['note'],
               'author_id': userId,
               'status': 'synced',
             });
             
             // Insert Target
             await SupabaseService.client.from('sentences').insert({
               'group_id': newGroupId,
               'lang_code': targetLang,
               'text': targetText,
               'author_id': userId,
               'status': 'synced',
             });
             
              // Add to Library
              await SupabaseService.client.from('user_library').upsert({
                'user_id': userId,
                'group_id': newGroupId,
                'personal_note': record['note'],
              }, onConflict: 'user_id, group_id, dialogue_id');
              
          } else {
            // Group Exists -> Check Link -> Add to Library
            // Just ensure it's in library
             final userId = SupabaseService.client.auth.currentUser?.id;
              await SupabaseService.client.from('user_library').upsert({
                'user_id': userId,
                'group_id': groupId,
                'personal_note': record['note'],
              }, onConflict: 'user_id, group_id, dialogue_id');
          }

          syncedIds.add(record['id'] as int);
          
        } catch (e) {
          print("[BackgroundSync] Failed to sync record ${record['id']}: $e");
        }
      }
      
      // 3. Mark as synced locally
      if (syncedIds.isNotEmpty) {
        await DatabaseService.markTranslationsAsSynced(syncedIds);
      }
      
      return true;
    } catch (e) {
      print("[BackgroundSync] Major Error: $e");
      return false;
    }
  }
}
