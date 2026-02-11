import 'package:flutter/material.dart';

import 'package:talkie/widgets/mode3_practice_card.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';
import 'package:talkie/widgets/search_filter_dialog.dart';


/// Mode 3: 말하기 모드
/// - 선택한 학습 자료 또는 전체 문장을 바탕으로 발음 연습
/// - 대기 시간 설정 기능 (버튼 방식)
class Mode3Widget extends StatelessWidget {
  final Key? materialDropdownKey;
  final Key? settingsKey;

  const Mode3Widget({
    super.key,
    this.materialDropdownKey,
    this.settingsKey,
    this.onSelectMaterial,
  });

  final VoidCallback? onSelectMaterial;

  @override
  Widget build(BuildContext context) {
    // final appState = Provider.of<AppState>(context); // Unused
    final l10n = AppLocalizations.of(context)!;
    
    return Consumer<AppState>(
      builder: (context, appState, child) {
        final materialRecords = appState.filteredMaterialRecords;
        
        return SafeArea(
          child: Column(
            children: [
              // ==========================================
              // 1. Top Settings Panel
              // ==========================================
              // Header Removed per user request
              // width spacer
              const SizedBox(height: 8),

              // 스마트 검색바 & 태그 필터 (Pool 필터링용)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    // Smart Autocomplete Search (Global)
                    LayoutBuilder(
                    builder: (context, constraints) {
                      return Autocomplete<Map<String, String>>(
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          if (textEditingValue.text.isEmpty) {
                             return const Iterable<Map<String, String>>.empty();
                          }
                          // Tab-Specific Search
                          return appState.searchByType(textEditingValue.text);
                        },
                        displayStringForOption: (Map<String, String> option) => option['text']!,
                        onSelected: (Map<String, String> selection) {
                           // Just jump to result within current tab
                           appState.jumpToSearchResult(selection['text']!, selection['type']!);
                           if (appState.mode3SessionActive) appState.startMode3SessionDirectly();
                        },
                        fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
                          // Sync
                          if (appState.searchQuery != textEditingController.text && appState.searchQuery.isNotEmpty) {
                             if (textEditingController.text.isEmpty) { 
                                textEditingController.text = appState.searchQuery;
                             }
                          }
                          return SearchBar(
                            controller: textEditingController,
                            focusNode: focusNode,
                            hintText: appState.recordTypeFilter == 'word' 
                                ? '연습할 단어 검색 (현재 탭)...' 
                                : '연습할 문장 검색 (현재 탭)...',
                            onChanged: (value) {
                              if (value.isEmpty) {
                                appState.setSearchQuery('');
                                if (appState.mode3SessionActive) appState.startMode3SessionDirectly();
                              }
                            },
                            onSubmitted: (value) {
                              appState.setSearchQuery(value);
                              if (appState.mode3SessionActive) appState.startMode3SessionDirectly();
                            },
                            leading: const Icon(Icons.search),
                            padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 16)),
                            elevation: WidgetStateProperty.all(1),
                             trailing: [
                              if (textEditingController.text.isNotEmpty)
                                IconButton(
                                  icon: const Icon(Icons.clear),
                                  onPressed: () {
                                    textEditingController.clear();
                                    appState.setSearchQuery('');
                                  },
                                ),
                            ],
                          );
                        },
                        optionsViewBuilder: (context, onSelected, options) {
                          return Align(
                            alignment: Alignment.topLeft,
                            child: Material(
                              elevation: 4.0,
                              child: SizedBox(
                                width: constraints.maxWidth,
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  itemCount: options.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    final option = options.elementAt(index);
                                    final String note = option['note'] ?? ''; // DatabaseService에서 추가된 note
                                    return ListTile(
                                      leading: const Icon(Icons.search, size: 20, color: Colors.grey),
                                      title: Text(option['text']!),
                                      subtitle: note.isNotEmpty ? Text(_getLocalizedTag(note, l10n), style: const TextStyle(fontSize: 12, color: Colors.blue)) : null,
                                      onTap: () => onSelected(option),
                                    );
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                    const SizedBox(height: 8),
                    
                  // Word/Sentence Toggle + Tag Selection + Show Memorized Switch
                  Row(
                    children: [
                      // 1. Tag Selection Button
                      InkWell(
                        key: settingsKey,
                        onTap: () => _showTagSelectionDialog(context, appState),
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                          decoration: BoxDecoration(
                            color: appState.selectedTags.isNotEmpty ? Colors.blue[50] : Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: appState.selectedTags.isNotEmpty ? Colors.blue.shade200 : Colors.grey.shade300,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.tune, 
                                size: 14, 
                                color: appState.selectedTags.isNotEmpty || appState.filterLimit != null || appState.filterStartsWith != null ? Colors.blue.shade700 : Colors.grey.shade600,
                              ),
                              const SizedBox(width: 4),
                                Text(
                                  // Show count if tags selected, else label
                                  appState.selectedTags.isEmpty && appState.filterLimit == null && appState.filterStartsWith == null
                                      ? l10n.searchConditions 
                                      : '${appState.selectedTags.length + (appState.filterLimit != null ? 1 : 0) + (appState.filterStartsWith != null ? 1 : 0)}',
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: appState.selectedTags.isNotEmpty || appState.filterLimit != null || appState.filterStartsWith != null ? Colors.blue.shade800 : Colors.grey.shade700,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),

                      // 3. Show Memorized Switch (Icon Toggle for space)
                      InkWell(
                        onTap: () => appState.setShowMemorized(!appState.showMemorized),
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                          decoration: BoxDecoration(
                            color: appState.showMemorized ? Colors.green[50] : Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: appState.showMemorized ? Colors.green.shade200 : Colors.grey.shade300,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                appState.showMemorized ? Icons.visibility : Icons.visibility_off, 
                                size: 14, 
                                color: appState.showMemorized ? Colors.green.shade700 : Colors.grey.shade600,
                              ),
                              const SizedBox(width: 2),
                                Text(
                                  l10n.labelShowMemorized,
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: appState.showMemorized ? Colors.green.shade800 : Colors.grey.shade700,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ],
                ),
              ),

              
              // ==========================================
              // 2. Records List (Expandable Cards)
              // ==========================================
              Expanded(
                child: materialRecords.isEmpty
                    ? Center(
                        child: Text(
                          materialRecords.isEmpty 
                              ? l10n.noRecords 
                              : l10n.selectMaterialPrompt,
                          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 100),
                        itemCount: materialRecords.length,
                        itemBuilder: (context, index) {
                          final record = materialRecords[index];
                          // Determine if this card is currently expanded/active
                          // Check if currentMode3Question matches this record's ID (or Target ID)
                          final isActive = appState.mode3SessionActive && 
                                           appState.currentMode3Question != null && 
                                           (appState.currentMode3Question!['id'] == record['id'] || 
                                            appState.currentMode3Question!['target_id'] == record['id']);

                          return Mode3PracticeCard(
                            key: ValueKey(record['id']),
                            appState: appState,
                            record: record,
                            l10n: l10n,
                            isExpanded: isActive,
                            onToggleExpand: () {
                              if (isActive) {
                                // Collapse? Or do nothing? 
                                // Usually tapping expanded card collapses it.
                                // But here it also means "Stopping Practice".
                                appState.stopMode3ListeningManual(); // Just in case
                                appState.clearMode3CurrentQuestion(); // Clear active state
                              } else {
                                // Expand -> Set as Active
                                appState.setMode3CurrentQuestion(record);
                              }
                            },
                          );
                        },
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  // Helper methods like _showTagSelectionDialog remain...


  // Unused dialog methods removed

  String _getLocalizedTag(String tag, AppLocalizations l10n) {
    switch (tag.toLowerCase()) {
      case 'noun': return l10n.posNoun;
      case 'verb': return l10n.posVerb;
      case 'adjective': return l10n.posAdjective;
      case 'adverb': return l10n.posAdverb;
      case 'pronoun': return l10n.posPronoun;
      case 'preposition': return l10n.posPreposition;
      case 'conjunction': return l10n.posConjunction;
      case 'interjection': return l10n.posInterjection;
      case 'statement': return l10n.typeStatement;
      case 'question': return l10n.typeQuestion;
      case 'exclamation': return l10n.typeExclamation;
      case 'imperative': return l10n.typeImperative;
      case 'infinitive': return l10n.formInfinitive;
      case 'past': return l10n.formPast;
      case 'past participle': return l10n.formPastParticiple;
      case 'present participle': return l10n.formPresentParticiple;
      case 'present': return l10n.formPresent;
      case '3rd person singular': return l10n.formThirdPersonSingular;
      case 'plural': return l10n.formPlural;
      case 'positive': return l10n.formPositive;
      case 'comparative': return l10n.formComparative;
      case 'superlative': return l10n.formSuperlative;
      case 'subject': return l10n.caseSubject;
      case 'object': return l10n.caseObject;
      case 'possessive': return l10n.casePossessive;
      case 'possessivepronoun': return l10n.casePossessivePronoun;
      case 'reflexive': return l10n.caseReflexive;
      default: return tag;
    }
  }



  void _showTagSelectionDialog(BuildContext context, AppState appState) {
    showDialog(
      context: context,
      builder: (context) => SearchFilterDialog(
        appState: appState,
      ),
    ).then((_) {
      // Refresh session if active
      if (appState.mode3SessionActive) {
        appState.startMode3SessionDirectly();
      }
    });
  }
}
