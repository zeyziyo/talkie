import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import '../l10n/app_localizations.dart';
import '../services/material_download_service.dart'; // Added import

/// Mode 2: 학습 자료 및 복습 모드
/// - 기본적으로 학습 자료를 선택하여 학습
/// - '전체 복습' 선택 시 모든 저장된 문장 복습
class Mode2Widget extends StatefulWidget {
  final Key? materialDropdownKey;
  final Key? tutorialListKey;

  const Mode2Widget({
    super.key,
    this.materialDropdownKey,
    this.tutorialListKey,
  });

  @override
  State<Mode2Widget> createState() => _Mode2WidgetState();
}

class _Mode2WidgetState extends State<Mode2Widget> {
  final Set<int> _expandedCards = {};
  
  @override
  void initState() {
    super.initState();
    // Load study materials when widget is initialized
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final appState = Provider.of<AppState>(context, listen: false);
      appState.loadStudyMaterials();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Consumer<AppState>(
      builder: (context, appState, child) {
        final studyMaterials = appState.filteredStudyMaterials;
        final selectedMaterialId = appState.selectedMaterialId;
        final materialRecords = appState.filteredMaterialRecords; // Use filtered records
        final studiedIds = appState.studiedTranslationIds;
        
        // Prepare dropdown items
        final List<DropdownMenuItem<int>> dropdownItems = [];
        
        // 1. Add "Review All" option
        dropdownItems.add(
          DropdownMenuItem(
            value: -1,
            child: Row(
              children: [
                const Icon(Icons.all_inclusive, size: 16, color: Colors.indigo),
                const SizedBox(width: 8),
                Text(
                  l10n.reviewAll, // Could be localized if needed
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
        
        // 2. Add actual materials
        dropdownItems.addAll(studyMaterials.map((material) {
          final id = material['id'] as int;
          final subject = material['subject'] as String;
          final sourceLang = material['source_language'] as String;
          final targetLang = material['target_language'] as String;
          
          
          String label = '$subject ($sourceLang → $targetLang)';
          if (id == 0) {
             // Use current app languages for the default material label
             label = 'Basic (${appState.languageNames[appState.sourceLang]} → ${appState.languageNames[appState.targetLang]})';
          }

          return DropdownMenuItem<int>(
            value: id,
            child: Text(label),
          );
        }));

        return Column(
          children: [
            // Status Message
            if (appState.statusMessage.isNotEmpty)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                decoration: BoxDecoration(
                  color: Colors.amber.shade100,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.amber.shade300),
                ),
                child: Text(
                  appState.statusMessage,
                  style: TextStyle(color: Colors.brown.shade800),
                  textAlign: TextAlign.center,
                ),
              ),

            // Word/Sentence Toggle (Added above Dropdown)
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SegmentedButton<String>(
                segments: [
                  ButtonSegment<String>(
                    value: 'word', 
                    label: Text(l10n.labelWord), 
                    icon: const Icon(Icons.abc)
                  ),
                  ButtonSegment<String>(
                    value: 'sentence', 
                    label: Text(l10n.labelSentence), 
                    icon: const Icon(Icons.short_text)
                  ),
                ],
                selected: {appState.recordTypeFilter == 'all' ? 'word' : appState.recordTypeFilter}, // Default 'all' to 'word'
                onSelectionChanged: (Set<String> newSelection) {
                  appState.setRecordTypeFilter(newSelection.first); // This filters the records list
                },
                style: ButtonStyle(
                  visualDensity: VisualDensity.standard,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                showSelectedIcon: true,
              ),
            ),
            
            const SizedBox(height: 12),

            // Material selector
            Container(
              key: widget.materialDropdownKey,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.selectStudyMaterial,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Download Button
                      TextButton.icon(
                        onPressed: () => _showDownloadDialog(context, appState),
                        icon: const Icon(Icons.download, size: 18),
                        label: const Text('Samples', style: TextStyle(fontSize: 12)),
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<int>(
                    value: selectedMaterialId,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                    ),
                    items: dropdownItems,
                    onChanged: (int? value) {
                      if (value != null) {
                        appState.selectMaterial(value);
                        // Clear expanded cards when material changes
                        _expandedCards.clear();
                      }
                    },
                  ),
                  
                  // Metadata (Collapsible) - Only show if specific material selected (not -1)
                  if (selectedMaterialId != null && selectedMaterialId != -1) ...[
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Card(
                        elevation: 0,
                        color: Colors.grey[50],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Colors.grey[200]!),
                        ),
                        child: Theme(
                          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text(
                              l10n.materialInfo,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF667eea),
                              ),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                                child: _buildMaterialInfo(appState, selectedMaterialId),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            
            const SizedBox(height: 16),

            // Old Filter Selector REMOVED

            const SizedBox(height: 16),
            
            // Progress indicator
            if (materialRecords.isNotEmpty && selectedMaterialId != -1)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Icon(Icons.bar_chart, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      l10n.progress(studiedIds.length, materialRecords.length),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '${((studiedIds.length / materialRecords.length) * 100).toStringAsFixed(0)}%',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              
            if (selectedMaterialId == -1 && materialRecords.isNotEmpty)
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    const Icon(Icons.list, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      l10n.totalRecords(materialRecords.length),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            
            const SizedBox(height: 16),
            
            // Records list
            Expanded(
              // Key goes to Empty View if empty, otherwise it's handled inside the list
              key: materialRecords.isEmpty ? widget.tutorialListKey : null,
              child: materialRecords.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.library_books_outlined,
                            size: 64,
                            color: Colors.grey[300],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            selectedMaterialId == null 
                                ? l10n.selectMaterialPrompt 
                                : l10n.noRecords,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.only(
                        left: 16, 
                        right: 16, 
                        top: 16, 
                        bottom: 100, // Add bottom padding for FAB/Ad/Nav Bar
                      ),
                      itemCount: materialRecords.length,
                      itemBuilder: (context, index) {
                        final record = materialRecords[index];
                        return _buildRecordCard(
                          appState, 
                          record, 
                          studiedIds,
                          key: index == 0 ? widget.tutorialListKey : null,
                        );
                      },
                    ),
            ),
          ],
        );
      },
    );
  }

  void _showDownloadDialog(BuildContext context, AppState appState) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Download Sample Materials'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: MaterialDownloadService.availableMaterials.length,
            itemBuilder: (context, index) {
              final item = MaterialDownloadService.availableMaterials[index];
              return ListTile(
                leading: const Icon(Icons.cloud_download),
                title: Text(item['label']!),
                subtitle: Text(item['subject']!),
                onTap: () async {
                  Navigator.pop(context); // Close dialog
                  
                  // Show loading snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Downloading material...')),
                  );
                  
                  // Download
                  final result = await MaterialDownloadService.downloadMaterial(item['fileName']!);
                  
                  if (result['success']) {
                    // Import
                    final importResult = await appState.importJsonWithMetadata(
                      result['content'], 
                      fileName: item['fileName']
                    );
                    
                    if (context.mounted) {
                      if (importResult['success']) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Imported ${importResult['imported']} records successfully!'),
                            backgroundColor: Colors.green,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Import failed: ${importResult['errors'].join(", ")}'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }
                  } else {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Download failed: ${result['error']}'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  }
                },
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
  
  /// Build material metadata info card
  Widget _buildMaterialInfo(AppState appState, int materialId) {
    final l10n = AppLocalizations.of(context)!;
    
    // Find material might fail if lists changed, use safeguard
    final material = appState.studyMaterials.firstWhere(
      (m) => m['id'] == materialId,
      orElse: () => {},
    );
    
    if (material.isEmpty) return const SizedBox.shrink();
    
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.topic, size: 16, color: Color(0xFF667eea)),
              const SizedBox(width: 4),
              Text(
                l10n.subject,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              Text(
                material['subject'] as String? ?? 'N/A',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const Icon(Icons.source, size: 16, color: Color(0xFF667eea)),
              const SizedBox(width: 4),
              Text(
                l10n.source,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              Text(
                material['source'] as String? ?? 'N/A',
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
          if (material['file_name'] != null) ...[
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.insert_drive_file, size: 16, color: Color(0xFF667eea)),
                const SizedBox(width: 4),
                Text(
                  l10n.file,
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                ),
                Expanded(
                  child: Text(
                    material['file_name'] as String,
                    style: const TextStyle(fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
        ],
        ],
      ),
    );
  }
  
  /// Build individual record card
  Widget _buildRecordCard(
    AppState appState,
    Map<String, dynamic> record,
    Set<int> studiedIds, {
    Key? key,
  }) {
    final l10n = AppLocalizations.of(context)!;
    final translationId = record['id'] as int;
    final sourceText = record['source_text'] as String;
    final targetText = record['target_text'] as String;
    final sourceLang = record['source_lang'] as String;
    final targetLang = record['target_lang'] as String;
    final contextTag = record['context'] as String?; // Retrieve context
    final isStudied = studiedIds.contains(translationId);
    final isExpanded = _expandedCards.contains(translationId);
    
    return InkWell(
      key: key,
      onLongPress: () {
        _showDeleteDialog(context, appState, record, l10n);
      },
      child: Card(
        margin: const EdgeInsets.only(bottom: 12),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Source text
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      sourceLang.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      sourceText,
                      style: TextStyle(
                        fontSize: (record['type'] == 'word') ? 24 : 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              
              // Context Tag Display (New)
              if (contextTag != null && contextTag.isNotEmpty) ...[
                const SizedBox(height: 4),
                Row(
                  children: [
                    const SizedBox(width: 44), // Indent to align with text (Badge width + gap)
                    Icon(Icons.info_outline, size: 12, color: Colors.grey[600]),
                    const SizedBox(width: 4),
                    Text(
                      contextTag,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[700],
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ],
              
              const SizedBox(height: 12),
              
              // Target text (Hidden by default, expandable)
              if (isExpanded) ...[
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          targetLang.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          targetText,
                          style: TextStyle(
                            fontSize: (record['type'] == 'word') ? 24 : 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF2c5282),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
              ],
              
              // Actions
              Row(
                children: [
                  // Show/Hide Button
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        if (isExpanded) {
                          _expandedCards.remove(translationId);
                        } else {
                          _expandedCards.add(translationId);
                        }
                      });
                    },
                    icon: Icon(
                      isExpanded ? Icons.visibility_off : Icons.visibility,
                      size: 18,
                    ),
                    label: Text(isExpanded ? l10n.hide : l10n.flip),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF667eea),
                      foregroundColor: Colors.white,
                    ),
                  ),
                  
                  const SizedBox(width: 8),
                  
                  // Listen Button (Only for Target)
                  if (isExpanded)
                    OutlinedButton.icon(
                      onPressed: () {
                        appState.playMaterialTts(
                          text: targetText,
                          lang: targetLang,
                          recordId: record['target_id'] as int?,
                        );
                      },
                      icon: const Icon(Icons.volume_up, size: 18),
                      label: Text(l10n.listen),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(0xFF667eea),
                      ),
                    ),
                    
                  const Spacer(),
                  
                  // Study Check Button
                  IconButton(
                    onPressed: isStudied
                        ? null
                        : () {
                            appState.markTranslationAsStudied(translationId);
                          },
                    icon: Icon(
                      isStudied ? Icons.check_circle : Icons.check_circle_outline,
                      color: isStudied ? Colors.green : Colors.grey,
                      size: 28,
                    ),
                    tooltip: isStudied ? l10n.studyComplete : l10n.markAsStudied,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, AppState appState, Map<String, dynamic> record, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('🗑️ ${l10n.deleteRecord}'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l10n.confirmDelete),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                record['source_text'] as String,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(context).pop();
              try {
                await appState.deleteRecord(record['id'] as int);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('✅ ${l10n.recordDeleted}')),
                  );
                }
              } catch (e) {
                // Error handling
              }
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
  }
}
