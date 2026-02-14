-- Phase 126: Restore Data Isolation Principle (Rollback UnifiedRepository)

-- 1. Upgrade DB Version to 18

-- 2. Enhance 'chat_messages' table (if columns missing)
-- Since SQLite doesn't support IF NOT EXISTS for ADD COLUMN easily, we handle this in Dart code or try-catch block.
-- Check and add: source_text, target_text, source_lang, target_lang

ALTER TABLE chat_messages ADD COLUMN source_text TEXT;
ALTER TABLE chat_messages ADD COLUMN target_text TEXT;
ALTER TABLE chat_messages ADD COLUMN source_lang TEXT;
ALTER TABLE chat_messages ADD COLUMN target_lang TEXT;

-- 3. Cleanup Polluted Data in 'sentences' table
-- Remove any sentence record that has #Dialogue tag or is of type Dialogue (if any)
-- Since tags are in 'item_tags' table, we need to join and delete.

-- 3-1. Identify records to delete (Groups mixed with Dialogue)
-- DELETE FROM sentences WHERE group_id IN (
--   SELECT item_id FROM item_tags WHERE tag IN ('#Dialogue', 'Dialogue', 'User Input') AND item_type = 'sentence'
-- );

-- 3-2. Delete related tags
-- DELETE FROM item_tags WHERE tag IN ('#Dialogue', 'Dialogue', 'User Input');

-- 4. Future Prevention
-- AppStateChat will ONLY insert into 'chat_messages'.
-- AppStateMode2 will ONLY read from 'sentences' (which is now clean).
