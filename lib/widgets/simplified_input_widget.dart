import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/simplified_app_state.dart';
import '../providers/app_state.dart';
import '../constants/language_constants.dart';
import '../widgets/recommendation_widget.dart';
import '../l10n/app_localizations.dart';
import '../constants/app_constants.dart';

class SimplifiedInputWidget extends StatefulWidget {
  final GlobalKey? micKey;
  final GlobalKey? swapKey;
  final GlobalKey? keyboardKey;
  final GlobalKey? nextKey;
  final GlobalKey? translateKey;

  const SimplifiedInputWidget({
    super.key,
    this.micKey,
    this.swapKey,
    this.keyboardKey,
    this.nextKey,
    this.translateKey,
  });

  @override
  State<SimplifiedInputWidget> createState() => _SimplifiedInputWidgetState();
}

class _SimplifiedInputWidgetState extends State<SimplifiedInputWidget> {
  final TextEditingController _sourceController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  final TextEditingController _tagController = TextEditingController();

  @override
  void dispose() {
    _sourceController.dispose();
    _noteController.dispose();
    _tagController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<SimplifiedAppState>();
    final globalState = context.watch<AppState>();
    final l10n = AppLocalizations.of(context)!;
    
    // Sync languages with global state on initial load or when global changes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        state.syncWithGlobalState(
          inputLang: globalState.currentInputLang, 
          outputLang: globalState.currentOutputLang,
          wordbookName: l10n.myWordbook,
          sentencebookName: l10n.mySentenceCollection,
        );
      }
    });

    // Sync controller with state text
    if (_sourceController.text != state.sourceText) {
      _sourceController.text = state.sourceText;
      _sourceController.selection = TextSelection.fromPosition(
        TextPosition(offset: _sourceController.text.length),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const RecommendationWidget(),
            const SizedBox(height: 16),

            // 2. Language Selectors (Top)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey.shade300),
                boxShadow: [
                  BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10, offset: const Offset(0, 4))
                ],
              ),
              child: Column(
                children: [
                  Text(
                    l10n.simplifiedGuidance,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Divider(color: Colors.black12, height: 20, thickness: 1),
                  Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildSimpleLangButton(context, state.sourceLang, (val) {
                              state.setSourceLang(val);
                              final appState = context.read<AppState>();
                              if (val != appState.sourceLang) {
                                appState.setTargetLang(val);
                              }
                            }, 
                            isLocked: state.sourceLang == globalState.sourceLang,
                            textColor: Colors.blue.shade700),
                          ],
                        ),
                      ),
                      IconButton(
                        key: widget.swapKey,
                        icon: Icon(Icons.swap_horiz, color: Colors.blue.shade700, size: 24),
                        onPressed: () {
                          context.read<AppState>().swapLanguages();
                          state.setTranslatedText("");
                        },
                        tooltip: l10n.swapLanguages,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildSimpleLangButton(context, state.targetLang, (val) {
                              state.setTargetLang(val);
                              final appState = context.read<AppState>();
                              if (val != appState.sourceLang) {
                                appState.setTargetLang(val);
                              }
                            }, 
                            isLocked: state.targetLang == globalState.sourceLang,
                            textColor: Colors.blue.shade700),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 3. Main Input Area (Central Mic)
            Center(
              child: _buildLargeIconButton(
                icon: Icons.mic,
                label: '', 
                color: state.isListening ? Colors.red : const Color(0xFF7A00E6),
                isListening: state.isListening,
                onPressed: () {
                   if (state.isListening) {
                     state.stopListening();
                   } else {
                     state.startListening();
                   }
                }, 
                onLongPressStart: (_) => state.startListening(),
                onLongPressEnd: (_) => state.stopListening(),
                key: widget.micKey,
              ),
            ),
            const SizedBox(height: 24),

            // 4. Manual Text Input & Translate Button
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    controller: _sourceController,
                    onChanged: (val) => state.setSourceText(val),
                    decoration: InputDecoration(
                      hintText: l10n.enterTextHint,
                      hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey.shade400),
                      filled: true,
                      fillColor: Colors.grey.shade50,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.grey.shade300)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: BorderSide(color: Colors.grey.shade200)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30), borderSide: const BorderSide(color: Colors.indigo, width: 2)),
                      prefixIcon: Icon(Icons.keyboard, color: Colors.indigo, key: widget.keyboardKey),
                      suffixIcon: state.sourceText.trim().isNotEmpty 
                        ? IconButton(
                            icon: const Icon(Icons.clear), 
                            onPressed: () {
                              _sourceController.clear();
                              state.setSourceText("");
                            }
                          )
                        : null,
                    ),
                    maxLines: null,
                  ),
                ),
                if (state.sourceText.trim().isNotEmpty) ...[
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      state.translate();
                      _showSettingsDialog(context, state);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3F51B5),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      elevation: 4,
                    ),
                    child: Text(
                      l10n.translate,
                      key: widget.translateKey,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 12),

            // Moved Note Field (Below source text)
            if (state.sourceText.trim().isNotEmpty)
              TextField(
                controller: _noteController,
                onChanged: (val) => state.setNote(val),
                decoration: InputDecoration(
                  hintText: l10n.labelNote,
                  hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey.shade400, fontSize: 13),
                  filled: true,
                  fillColor: Colors.grey.shade50,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.grey.shade200)),
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.grey.shade100)),
                  prefixIcon: const Icon(Icons.sticky_note_2_outlined, size: 18, color: Colors.amber),
                ),
              ),
            
            const SizedBox(height: 24),

            // 6. Footer (Version & Contact)
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSimpleLangButton(BuildContext context, String currentLang, Function(String) onSelected, {Color textColor = Colors.teal, bool isLocked = false}) {
    final appState = Provider.of<AppState>(context, listen: false);
    final myLang = appState.sourceLang;
    final myLangMap = LanguageConstants.getLanguageMap(myLang);
    final String displayName = myLangMap[currentLang] ?? currentLang.toUpperCase();

    final Widget labelWidget = Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isLocked ? Colors.grey.shade300 : const Color(0xFF3F51B5),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          if (!isLocked)
            BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 4, offset: const Offset(0, 2))
        ],
      ),
      child: Text(
        displayName,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14, 
          fontWeight: FontWeight.w700, 
          color: isLocked ? Colors.black54 : Colors.white,
          letterSpacing: 0.5,
        ),
      ),
    );

    if (isLocked) return labelWidget;

    return PopupMenuButton<String>(
      initialValue: currentLang,
      onSelected: onSelected,
      child: labelWidget,
      itemBuilder: (context) => LanguageConstants.supportedLanguages
          .where((lang) => lang['code'] != myLang && lang['code'] != currentLang)
          .map((lang) {
        final code = lang['code']!;
        final langMap = LanguageConstants.getLanguageMap(myLang);
        final natMap = LanguageConstants.getLanguageMap(code);
        final nameMy = langMap[code] ?? code.toUpperCase();
        final nameNat = natMap[code] ?? nameMy;
        final listDisplayName = nameMy == nameNat ? nameMy : '$nameMy ($nameNat)';
        
        return PopupMenuItem(
          value: code,
          child: Text(listDisplayName, style: const TextStyle(fontSize: 14)),
        );
      }).toList(),
    );
  }

  Widget _buildLargeIconButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
    GestureLongPressStartCallback? onLongPressStart,
    GestureLongPressEndCallback? onLongPressEnd,
    bool isListening = false,
    Key? key,
  }) {
    return GestureDetector(
      onTap: onPressed,
      onLongPressStart: onLongPressStart,
      onLongPressEnd: onLongPressEnd,
      child: Container(
        padding: const EdgeInsets.all(12),
        child: MeshMicIcon(
          key: key,
          size: 100,
          color: color,
          isListening: isListening,
        ),
      ),
    );
  }

  void _showSettingsDialog(BuildContext context, SimplifiedAppState state) {
    showDialog(
      context: context,
      builder: (context) => Consumer<SimplifiedAppState>(
        builder: (context, state, child) {
          final l10n = AppLocalizations.of(context)!;
          return AlertDialog(
            title: Text(l10n.labelDetails, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo)),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Result View at Top
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade50,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.indigo.shade100),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(state.sourceText, style: const TextStyle(fontSize: 14, color: Colors.black54)),
                         const SizedBox(height: 10),
                         state.isTranslating 
                           ? const Center(child: Padding(padding: EdgeInsets.all(8.0), child: CircularProgressIndicator(strokeWidth: 2)))
                           : SelectableText(
                               state.translatedText.isNotEmpty ? state.translatedText : '...', 
                               style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo),
                             ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Word/Sentence Toggle
                  Row(
                    children: [
                      Expanded(
                        child: SegmentedButton<String>(
                          style: SegmentedButton.styleFrom(
                            selectedBackgroundColor: Colors.indigo,
                            selectedForegroundColor: Colors.white,
                          ),
                          segments: [
                            ButtonSegment(value: 'word', label: Text(l10n.word, style: const TextStyle(fontSize: 13))),
                            ButtonSegment(value: 'sentence', label: Text(l10n.sentence, style: const TextStyle(fontSize: 13))),
                          ],
                          selected: {state.type},
                          onSelectionChanged: (val) {
                            state.setType(val.first);
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _buildNotebookDropdown(context, state),
                  const SizedBox(height: 16),
                  
                  _buildFieldLabel(l10n.tagSelection, l10n.helpTag),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _tagController,
                    onChanged: (val) => state.setTags(val),
                    decoration: InputDecoration(
                      hintText: l10n.hintTagExample,
                      hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey.shade400, fontSize: 13),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      prefixIcon: const Icon(Icons.tag, size: 18),
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(l10n.cancel),
              ),
              ElevatedButton(
                onPressed: state.isTranslating ? null : () async {
                  await state.saveRecord();
                  if (!context.mounted) return;
                  state.clearAll();
                  _sourceController.clear();
                  _noteController.clear();
                  _tagController.clear();
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(l10n.saved), behavior: SnackBarBehavior.floating),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                ),
                child: Text(l10n.save, style: const TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Column(
        children: [
          const Divider(color: Colors.black12),
          const SizedBox(height: 16),
          Text(
            '${l10n.versionLabel(AppConstants.appVersion)}  |  ${l10n.developerContact}',
            style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildNotebookDropdown(BuildContext context, SimplifiedAppState state) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFieldLabel(l10n.selectStudyMaterial, l10n.helpNotebook),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          key: ValueKey('${state.type}_notebook_dropdown'),
          initialValue: state.selectedNotebook.isNotEmpty && state.availableNotebooks.contains(state.selectedNotebook) 
              ? state.selectedNotebook 
              : null,
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          items: [
            ...state.availableNotebooks.map((name) => DropdownMenuItem(
              value: name,
              child: Text(name, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 13)),
            )),
            const DropdownMenuItem(
              value: '__new__',
              child: Text('+ 새 추가', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 13)),
            ),
          ],
          onChanged: (val) async {
            if (val == '__new__') {
              final newName = await _showNewNotebookDialog(context);
              if (newName != null && newName.isNotEmpty) {
                state.setSelectedNotebook(newName);
              }
            } else if (val != null) {
              state.setSelectedNotebook(val);
            }
          },
        ),
      ],
    );
  }

  Widget _buildFieldLabel(String text, String helpMessage) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(text, style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey.shade600, fontSize: 13, fontWeight: FontWeight.w500)),
        const SizedBox(width: 6),
        Tooltip(
          message: helpMessage,
          child: Icon(Icons.help_outline, size: 15, color: Colors.grey.shade400),
        ),
      ],
    );
  }

  Future<String?> _showNewNotebookDialog(BuildContext context) async {
    String newName = '';
    return showDialog<String>(
      context: context,
      builder: (context) {
        final l10n = AppLocalizations.of(context)!;
        return AlertDialog(
          title: Text(l10n.newNotebookTitle),
          content: TextField(
            autofocus: true,
            decoration: InputDecoration(hintText: l10n.enterNameHint),
            onChanged: (val) => newName = val,
          ),
          actions: [
            TextButton(onPressed: () => Navigator.pop(context), child: Text(l10n.cancel)),
            TextButton(onPressed: () => Navigator.pop(context, newName), child: Text(l10n.add)),
          ],
        );
      },
    );
  }
}

class MeshMicIcon extends StatelessWidget {
  final double size;
  final Color color;
  final bool isListening;

  const MeshMicIcon({
    super.key,
    this.size = 100,
    required this.color,
    this.isListening = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent, 
        boxShadow: [
          if (isListening)
            BoxShadow(
              color: color.withAlpha((0.4 * 255).toInt()),
              blurRadius: 30,
              spreadRadius: 8,
            ),
        ],
      ),
      child: Center(
        child: Image.asset(
          'assets/icon_mic_yellow.png',
          width: size * 0.9,
          height: size * 0.9,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
