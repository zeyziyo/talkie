import 'package:flutter_test/flutter_test.dart';
import 'package:talkie/models/chat_participant.dart';
import 'package:talkie/services/database/unified_repository.dart';

void main() {
  group('ChatParticipant Model Tests', () {
    test('should create valid participant with default values', () {
      final p = ChatParticipant(
        id: 'test_id',
        dialogueId: 'd1',
        name: 'Test User',
        role: 'user',
      );
      
      expect(p.id, 'test_id');
      expect(p.name, 'Test User');
      expect(p.role, 'user'); // Default
      expect(p.gender, 'female'); // Default
    });

    test('should serialize and deserialize correctly (toMap/fromMap)', () {
      final p = ChatParticipant(
        id: 'p1',
        name: 'French Tutor',
        dialogueId: 'd1',
        role: 'assistant',
        gender: 'female',
        langCode: 'fr',
      );

      final map = p.toJson();
      final p2 = ChatParticipant.fromJson(map);

      expect(p2.id, p.id);
      expect(p2.name, 'French Tutor');
      expect(p2.role, 'assistant');
      expect(p2.gender, 'female');
      expect(p2.langCode, 'fr');
    });

    test('should handle JSON serialization', () {
      final p = ChatParticipant(id: 'j1', dialogueId: 'd1', name: 'Json User', role: 'user');
      final jsonStr = p.toJson();
      final p2 = ChatParticipant.fromJson(jsonStr);
      
      expect(p2.id, 'j1');
      expect(p2.name, 'Json User');
    });
  });

  group('UnifiedRepository ID Generation', () {
    test('generateContentId should return consistent hash', () {
      final id1 = UnifiedRepository.generateContentId('test_content', null);
      final id2 = UnifiedRepository.generateContentId('test_content', null);
      final id3 = UnifiedRepository.generateContentId('other_content', null);

      expect(id1, isNotNull);
      expect(id1, isNotEmpty);
      expect(id1, id2); // Consistent
      expect(id1, isNot(id3)); // Unique
    });
  }, skip: 'Skipping due to sqflite dependency in unit test environment');
}
