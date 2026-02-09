# Roadmap and Changelog

## Completed Phases (Recent)

### Phase 76.5: Metadata Dialog Integration (2026-02-08)
- **Feature**: `Online Library` dialog merged into `Metadata Dialog`.
- **Improvement**: Added "Source Language" parameter to imported materials.
- **Fix**: Resolved issue where imported materials were not visible due to missing tags.

### Phase 77: Native Tag Strategy (2026-02-09)
- **Logic Change**: Removed "Pivot Subject" extraction logic in `AppState.importRemoteMaterial`. Now uses the `subject` field from the source JSON file directly (e.g., "명사 1" for Korean, "Nouns 1" for English).
- **UI Improvement**: Modified `Mode2Widget` and `Mode3Widget` to filter the "Available Tags" list.
    - **Behavior**: Displays only tags that match the current `Source Language` setting in the app.
    - **Benefit**: Users see localized tag names corresponding to their selected language mode, reducing confusion.

## Upcoming Phases
- **Phase 78**: Advanced filtering options for Practice Mode.
- **Phase 79**: Cloud sync for user progress.
