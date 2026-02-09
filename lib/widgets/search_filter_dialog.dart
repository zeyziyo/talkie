import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/app_state.dart';

class SearchFilterDialog extends StatefulWidget {
  final AppState appState;

  const SearchFilterDialog({
    Key? key,
    required this.appState,
  }) : super(key: key);

  @override
  _SearchFilterDialogState createState() => _SearchFilterDialogState();
}

class _SearchFilterDialogState extends State<SearchFilterDialog> {
  late TextEditingController _limitController;
  late TextEditingController _startsWithController;

  @override
  void initState() {
    super.initState();
    _localSelectedTags = List.from(widget.appState.selectedTags);
    _limitController = TextEditingController(text: widget.appState.filterLimit?.toString() ?? '');
    _startsWithController = TextEditingController(text: widget.appState.filterStartsWith ?? '');
  }

  @override
  void dispose() {
    _limitController.dispose();
    _startsWithController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final availableTags = widget.appState.availableTags.where((tag) {
      if (_localSelectedTags.contains(tag)) return true;
      for (var m in widget.appState.studyMaterials) {
        if (m['subject'] == tag) {
          if (m['source_language'] == widget.appState.sourceLanguage || 
              m['source_language'] == 'auto') {
            return true;
          }
          return false;
        }
      }
      return true;
    }).toList();

    return AlertDialog(
      title: Row(
        children: [
          const Icon(Icons.tune, color: Colors.blue),
          const SizedBox(width: 8),
          Text(l10n.searchConditions),
        ],
      ),
      content: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 1. Tag Section
              Text(l10n.tagSelection, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
              const SizedBox(height: 8),
              if (availableTags.isEmpty)
                Text(l10n.noRecords, style: const TextStyle(color: Colors.grey, fontSize: 12))
              else
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: availableTags.map((tag) {
                    final isSelected = _localSelectedTags.contains(tag);
                    return FilterChip(
                      label: Text(tag),
                      selected: isSelected,
                      onSelected: (bool selected) {
                        setState(() {
                          if (selected) {
                            _localSelectedTags.add(tag);
                          } else {
                            _localSelectedTags.remove(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
              
              const Divider(height: 32),
              
              // 2. Recent N Items (Limit)
              TextField(
                controller: _limitController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: l10n.recentNItems(10).replaceAll('10', 'N'),
                  hintText: 'e.g. 20',
                  prefixIcon: const Icon(Icons.history),
                  border: const OutlineInputBorder(),
                  isDense: true,
                ),
              ),
              
              const SizedBox(height: 16),
              
              // 3. Starts With (Prefix)
              TextField(
                controller: _startsWithController,
                decoration: InputDecoration(
                  labelText: l10n.startsWith,
                  hintText: 'e.g. A',
                  prefixIcon: const Icon(Icons.text_fields),
                  border: const OutlineInputBorder(),
                  isDense: true,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        // Reset Button
        if (_localSelectedTags.isNotEmpty || _limitController.text.isNotEmpty || _startsWithController.text.isNotEmpty)
          TextButton(
            onPressed: () {
              setState(() {
                _localSelectedTags.clear();
                _limitController.clear();
                _startsWithController.clear();
              });
            },
            child: Text(l10n.reset, style: const TextStyle(color: Colors.red)),
          ),
          
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(l10n.cancel),
        ),
        ElevatedButton(
          onPressed: () {
            // Apply changes
            widget.appState.updateSelectedTags(_localSelectedTags);
            
            // Apply Limit
            if (_limitController.text.isNotEmpty) {
              final limit = int.tryParse(_limitController.text);
              widget.appState.setFilterLimit(limit);
            } else {
              widget.appState.setFilterLimit(null);
            }
            
            // Apply StartsWith
            if (_startsWithController.text.isNotEmpty) {
              widget.appState.setFilterStartsWith(_startsWithController.text);
            } else {
              widget.appState.setFilterStartsWith(null);
            }

            Navigator.pop(context);
          },
          child: Text(l10n.confirm),
        ),
      ],
    );
  }
}
