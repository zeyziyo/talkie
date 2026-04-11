import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/simplified_app_state.dart';
import '../providers/app_state.dart';
import '../widgets/recommendation_widget.dart';
import '../widgets/welcome_banner.dart';
import '../l10n/app_localizations.dart';
import '../constants/app_constants.dart';
import '../services/speech_service.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const WelcomeBanner(),
            const RecommendationWidget(),
            SizedBox(height: 16.h),


            // 2. Main Input Area (Source & Mic)
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    controller: _sourceController,
                    onChanged: (val) => state.setSourceText(val),
                    style: const TextStyle(fontSize: 16),
                    decoration: InputDecoration(
                      hintText: l10n.enterTextHint,
                      hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey.shade400),
                      filled: true,
                      fillColor: Colors.grey.shade50,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.grey.shade300)),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.grey.shade200)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: const BorderSide(color: Colors.indigo, width: 2)),
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
                SizedBox(width: 12.w),
                _buildCompactMicIcon(state),
              ],
            ),
            SizedBox(height: 12.h),

            // 3. Note Field & Translate Button
            if (state.sourceText.trim().isNotEmpty) ...[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 3,
                    child: TextField(
                      controller: _noteController,
                      onChanged: (val) => state.setNote(val),
                      style: const TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        hintText: l10n.labelNote,
                        hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey.shade400),
                        filled: true,
                        fillColor: Colors.grey.shade50,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.grey.shade300)),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.grey.shade200)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: const BorderSide(color: Colors.indigo, width: 2)),
                        suffixIcon: IconButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                content: Text(l10n.noteGuidance),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context), 
                                    child: Text(l10n.confirm)
                                  )
                                ],
                              ),
                            );
                          },
                          icon: const Icon(Icons.help_outline, size: 20, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                      onPressed: () {
                        state.translate();
                        _showSettingsDialog(context, state);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3F51B5),
                        foregroundColor: Colors.white,
                        minimumSize: Size(0, 54.h),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
                        padding: EdgeInsets.zero,
                        elevation: 4,
                      ),
                      child: Text(
                        l10n.translate,
                        key: widget.translateKey,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ],
            
            SizedBox(height: 24.h),

            // 6. Footer (Version & Contact)
            _buildFooter(context),
          ],
        ),
      ),
    );
  }


  Widget _buildCompactMicIcon(SimplifiedAppState state) {
    final double micWidth = 64.0.r;
    return GestureDetector(
      onTap: () {
        if (state.isListening) {
          state.stopListening();
        } else {
          state.startListening();
        }
      },
      onLongPressStart: (_) => state.startListening(),
      onLongPressEnd: (_) => state.stopListening(),
      child: MeshMicIcon(
        key: widget.micKey,
        size: micWidth,
        color: state.isListening ? Colors.red : const Color(0xFF7A00E6),
        isListening: state.isListening,
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
            title: Text(l10n.labelDetails, style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold, color: Colors.indigo)),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Result View at Top
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16.r),
                    decoration: BoxDecoration(
                      color: Colors.indigo.shade50,
                      borderRadius: BorderRadius.circular(15.r),
                      border: Border.all(color: Colors.indigo.shade100),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(state.sourceText, style: TextStyle(fontSize: 14.sp, color: Colors.black54)),
                         SizedBox(height: 10.h),
                         state.isTranslating 
                           ? const Center(child: Padding(padding: EdgeInsets.all(8.0), child: CircularProgressIndicator(strokeWidth: 2)))
                           : Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Expanded(
                                   child: SelectableText(
                                     state.translatedText.isNotEmpty ? state.translatedText : '...', 
                                     style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo),
                                   ),
                                 ),
                                 if (state.translatedText.isNotEmpty)
                                   IconButton(
                                     icon: const Icon(Icons.volume_up, color: Colors.indigo),
                                     padding: EdgeInsets.zero,
                                     constraints: const BoxConstraints(),
                                     onPressed: () {
                                       final appState = context.read<AppState>();
                                       SpeechService().speak(
                                         state.translatedText,
                                         lang: appState.getServiceLocale(state.targetLang),
                                       );
                                     },
                                   ),
                               ],
                             ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),

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
                            ButtonSegment(value: 'word', label: Text(l10n.word, style: TextStyle(fontSize: 13.sp))),
                            ButtonSegment(value: 'sentence', label: Text(l10n.sentence, style: TextStyle(fontSize: 13.sp))),
                          ],
                          selected: {state.type},
                          onSelectionChanged: (val) {
                            state.setType(val.first);
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        key: widget.swapKey,
                        icon: Icon(Icons.swap_horiz, color: Colors.indigo, size: 24.r),
                        onPressed: () {
                          context.read<AppState>().swapLanguages();
                          state.setTranslatedText("");
                        },
                        tooltip: l10n.swapLanguages,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  _buildNotebookDropdown(context, state),
                  SizedBox(height: 16.h),
                  
                  _buildFieldLabel(l10n.tagSelection, l10n.helpTag),
                  SizedBox(height: 8.h),
                  TextField(
                    controller: _tagController,
                    onChanged: (val) => state.setTags(val),
                    style: TextStyle(fontSize: 14.sp),
                    decoration: InputDecoration(
                      hintText: l10n.hintTagExample,
                      hintStyle: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey.shade400, fontSize: 13.sp),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                      prefixIcon: Icon(Icons.tag, size: 18.r),
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
        Text(text, style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey.shade600, fontSize: 13.sp, fontWeight: FontWeight.w500)),
        SizedBox(width: 6.w),
        Tooltip(
          message: helpMessage,
          child: Icon(Icons.help_outline, size: 15.r, color: Colors.grey.shade400),
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
