import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../l10n/app_localizations.dart';
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
  List<String> _localSelectedTags = [];

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
    
    // Separate Title Tags (Materials) from General Tags
    final List<String> materialSubjects = widget.appState.studyMaterials.map((m) => m['subject'] as String).toList();
    final List<String> allAvailableTags = widget.appState.availableTags;
    
    // Title Tags are strictly the subjects of imported materials
    final List<String> titleTags = materialSubjects;
    
    // General Tags are any other tags not acting as material titles
    final List<String> generalTags = allAvailableTags.where((tag) => !materialSubjects.contains(tag)).toList();

    // Identify currently selected title tag and general tags
    String selectedTitle = _localSelectedTags.firstWhere((t) => titleTags.contains(t), orElse: () => '');
    List<String> selectedGeneral = _localSelectedTags.where((t) => generalTags.contains(t)).toList();

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
              // 1. Title Tag Dropdown
              _buildDropdown(
                label: l10n.titleTagSelection,
                value: selectedTitle,
                items: titleTags,
                l10n: l10n,
                onChanged: (val) {
                  setState(() {
                    _localSelectedTags.removeWhere((t) => titleTags.contains(t));
                    if (val != null && val.isNotEmpty) _localSelectedTags.add(val);
                  });
                },
              ),

              const SizedBox(height: 16),
              const Divider(),
              const SizedBox(height: 16),

              // 2. General Tag Dropdown 1
              _buildDropdown(
                label: '${l10n.generalTags} 1',
                value: selectedGeneral.isNotEmpty ? selectedGeneral[0] : '',
                items: generalTags,
                l10n: l10n,
                onChanged: (val) {
                  _updateGeneralTag(0, val, selectedGeneral, generalTags);
                },
              ),

              const SizedBox(height: 12),

              // 3. General Tag Dropdown 2
              _buildDropdown(
                label: '${l10n.generalTags} 2',
                value: selectedGeneral.length > 1 ? selectedGeneral[1] : '',
                items: generalTags,
                l10n: l10n,
                onChanged: (val) {
                  _updateGeneralTag(1, val, selectedGeneral, generalTags);
                },
              ),

              const SizedBox(height: 12),

              // 4. General Tag Dropdown 3
              _buildDropdown(
                label: '${l10n.generalTags} 3',
                value: selectedGeneral.length > 2 ? selectedGeneral[2] : '',
                items: generalTags,
                l10n: l10n,
                onChanged: (val) {
                  _updateGeneralTag(2, val, selectedGeneral, generalTags);
                },
              ),

              const SizedBox(height: 24),
              const Divider(),
              const SizedBox(height: 16),
              
              // Recent N Items (Limit)
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
              
              // Starts With (Prefix)
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
            widget.appState.updateSelectedTags(_localSelectedTags);
            if (_limitController.text.isNotEmpty) {
              widget.appState.setFilterLimit(int.tryParse(_limitController.text));
            } else {
              widget.appState.setFilterLimit(null);
            }
            widget.appState.setFilterStartsWith(_startsWithController.text.isNotEmpty ? _startsWithController.text : null);
            Navigator.pop(context);
          },
          child: Text(l10n.confirm),
        ),
      ],
    );
  }

  Widget _buildDropdown({
    required String label,
    required String value,
    required List<String> items,
    required AppLocalizations l10n,
    required ValueChanged<String?> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.blueGrey)),
        const SizedBox(height: 4),
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          ),
          isExpanded: true,
          value: items.contains(value) ? value : '',
          onChanged: onChanged,
          items: [
            DropdownMenuItem(value: '', child: Text(l10n.notSelected, style: const TextStyle(color: Colors.grey))),
            ...items.map((t) => DropdownMenuItem(value: t, child: Text(t, overflow: TextOverflow.ellipsis))).toList(),
          ],
        ),
      ],
    );
  }

  void _updateGeneralTag(int index, String? val, List<String> currentGeneral, List<String> allGeneral) {
    setState(() {
      // Create a copy of current general tags
      List<String> newGeneral = List.from(currentGeneral);
      
      if (val == null || val.isEmpty) {
        // Remove at index if exists
        if (index < newGeneral.length) {
          newGeneral.removeAt(index);
        }
      } else {
        // Update at index or add if it matches index
        if (index < newGeneral.length) {
          newGeneral[index] = val;
        } else {
          // Fill gaps if necessary (unlikely given index logic, but safe)
          while (newGeneral.length < index) {
            newGeneral.add(''); // Placeholder if needed
          }
          newGeneral.add(val);
        }
      }

      // Re-construct _localSelectedTags: [TitleTag (if any)] + [General Tags]
      String titleTag = _localSelectedTags.firstWhere((t) => !allGeneral.contains(t) && t.isNotEmpty, orElse: () => '');
      _localSelectedTags = [
        if (titleTag.isNotEmpty) titleTag,
        ...newGeneral.where((t) => t.isNotEmpty),
      ];
    });
  }
}
