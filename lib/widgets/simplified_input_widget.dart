import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/simplified_app_state.dart';
import '../providers/app_state.dart';
import '../constants/language_constants.dart';
import '../widgets/welcome_banner.dart';
import '../widgets/recommendation_widget.dart';
import '../l10n/app_localizations.dart';

class SimplifiedInputWidget extends StatefulWidget {
  const SimplifiedInputWidget({super.key});

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
    
    // Sync languages with global state on initial load or when global changes
    // SimplifiedAppState will only notify if values actually change
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        state.syncWithGlobalState(globalState.sourceLang, globalState.targetLang);
      }
    });

    // Sync controller with state text (e.g., after speech recognition)
    if (_sourceController.text != state.sourceText) {
      _sourceController.text = state.sourceText;
      // Move cursor to end
      _sourceController.selection = TextSelection.fromPosition(
        TextPosition(offset: _sourceController.text.length),
      );
    }

    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const WelcomeBanner(),
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
                    "총 80개 언어 중 원하는 언어 간 즉시 상호 번역 및 무한 반복 학습 가능",
                    style: TextStyle(
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
                            const Text('입력:', style: TextStyle(fontSize: 11, color: Colors.black45, fontWeight: FontWeight.bold)),
                            const SizedBox(width: 4),
                            _buildSimpleLangButton(context, state.sourceLang, (val) => state.setSourceLang(val), textColor: Colors.blue.shade700),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.swap_horiz, color: Colors.blue.shade700, size: 24),
                        onPressed: () {
                          state.swapLanguages();
                          // Clear translation results when swapping
                          state.setTranslatedText("");
                        },
                        tooltip: l10n.swapLanguages,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('번역:', style: TextStyle(fontSize: 11, color: Colors.black45, fontWeight: FontWeight.bold)),
                            const SizedBox(width: 4),
                            _buildSimpleLangButton(context, state.targetLang, (val) => state.setTargetLang(val), textColor: Colors.blue.shade700),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // 3. Main Input Area (Central Mic & Text Field)
            Center(
              child: _buildLargeIconButton(
                icon: state.isListening ? Icons.mic : Icons.mic,
                label: '', 
                color: state.isListening ? Colors.red : const Color(0xFF7A00E6), // Slightly deeper, more premium purple
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
              ),
            ),
            const SizedBox(height: 24),

            // 4. Manual Text Input & Detail Settings Gear
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _sourceController,
                    onChanged: (val) => state.setSourceText(val),
                    decoration: InputDecoration(
                      hintText: l10n.enterTextHint,
                      filled: true,
                      fillColor: Colors.grey.shade50,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey.shade300),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey.shade200),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.indigo, width: 2),
                      ),
                      prefixIcon: const Icon(Icons.keyboard, color: Colors.indigo),
                      suffixIcon: state.sourceText.isNotEmpty 
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
              ],
            ),
            const SizedBox(height: 16),

            // 5. Context-aware Settings Area (Expanded when text is present)
            if (state.sourceText.isNotEmpty) ...[
              _buildSettingsArea(context, state),
              const SizedBox(height: 16),
            ],

            // Quick Translate Button (Added for easy access)
            if (state.sourceText.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ElevatedButton.icon(
                  onPressed: () => state.translate(),
                  icon: const Icon(Icons.translate),
                  label: const Text('지금 번역하기'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                ),
              ),
            const SizedBox(height: 24),

            // 4. Results Area (Vertical Layout)
            if (state.sourceText.isNotEmpty || state.translatedText.isNotEmpty) ...[
              const Divider(thickness: 1.5, height: 40),
              
              if (state.sourceText.isNotEmpty) ...[
                _buildLabel('입력/인식 내용'),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade200),
                  ),
                  child: Text(
                    state.sourceText,
                    style: const TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                ),
                const SizedBox(height: 20),
              ],

              if (state.translatedText.isNotEmpty) ...[
                _buildLabel('번역 결과'),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.green.shade50,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.green.shade100),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.translatedText,
                        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                      if (state.note.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        Text(
                          '(${state.note})',
                          style: TextStyle(fontSize: 14, color: Colors.blueGrey.shade600, fontStyle: FontStyle.italic),
                        ),
                      ],
                    ],
                  ),
                ),
                const SizedBox(height: 32),

                // Save Button
                ElevatedButton.icon(
                  onPressed: () async {
                    await state.saveRecord();
                    if (!context.mounted) return;
                    state.clearAll();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(l10n.importComplete)), // Placeholder for saved message
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 2,
                  ),
                  icon: const Icon(Icons.save_alt),
                  label: Text(l10n.saveData, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ],
              const SizedBox(height: 40),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, left: 4),
      child: Text(
        label,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.indigo),
      ),
    );
  }

  Widget _buildSimpleLangButton(BuildContext context, String currentLang, Function(String) onSelected, {Color textColor = Colors.teal}) {
    final appState = Provider.of<AppState>(context, listen: false);
    final myLang = appState.sourceLang; // UI Language (Source in Settings)
    
    // Naming Logic: EnglishName(NativeName) based on 'My Language'
    String displayName;
    final myLangMap = LanguageConstants.getLanguageMap(myLang);
    final nativeMap = LanguageConstants.getLanguageMap(currentLang);
    
    final nameInMyLang = myLangMap[currentLang] ?? currentLang.toUpperCase();
    final nativeName = nativeMap[currentLang] ?? nameInMyLang;
    
    if (nameInMyLang == nativeName) {
      displayName = nameInMyLang;
    } else {
      displayName = '$nameInMyLang($nativeName)';
    }

    return PopupMenuButton<String>(
      initialValue: currentLang,
      onSelected: onSelected,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.center,
        child: Text(
          displayName,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        ),
      ),
      itemBuilder: (context) => LanguageConstants.supportedLanguages.map((lang) {
        final code = lang['code']!;
        
        // Use the same bilingual logic for the dropdown list too
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
  }) {
    return GestureDetector(
      onTap: onPressed,
      onLongPressStart: onLongPressStart,
      onLongPressEnd: onLongPressEnd,
      child: Container(
        padding: const EdgeInsets.all(12),
        child: MeshMicIcon(
          size: 100,
          color: color,
          isListening: isListening,
        ),
      ),
    );
  }

  Widget _buildSettingsArea(BuildContext context, SimplifiedAppState state) {
    final l10n = AppLocalizations.of(context)!;
    
    // Sync local controllers with state
    if (_noteController.text != state.note) {
      _noteController.text = state.note;
    }
    if (_tagController.text != state.tags) {
      _tagController.text = state.tags;
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.indigo.withValues(alpha: 0.03),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.indigo.withValues(alpha: 0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.tune, size: 18, color: Colors.indigo),
              const SizedBox(width: 8),
              Text(
                '상세 설정',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.indigo.shade700),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Word/Sentence Toggle
          Row(
            children: [
              Expanded(
                child: SegmentedButton<String>(
                  segments: [
                    ButtonSegment(value: 'word', label: Text(l10n.word, style: const TextStyle(fontSize: 13))),
                    ButtonSegment(value: 'sentence', label: Text(l10n.sentence, style: const TextStyle(fontSize: 13))),
                  ],
                  selected: {state.type},
                  onSelectionChanged: (val) => state.setType(val.first),
                ),
              ),
              _buildHelpIcon('단어 또는 문장 중 어떤 형태인지 선택해 주세요.'),
            ],
          ),
          const SizedBox(height: 12),

          // Notebook Dropdown
          Row(
            children: [
              Expanded(child: _buildNotebookDropdown(context, state)),
              _buildHelpIcon('데이터가 저장될 그룹(자료집)을 선택해 주세요.'),
            ],
          ),
          const SizedBox(height: 12),

          // Note Field
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _noteController,
                  onChanged: (val) => state.setNote(val),
                  decoration: InputDecoration(
                    labelText: l10n.labelNote,
                    hintText: '예: 상황 설명, 동음이의어(눈/eyes, 눈/snow) 등',
                    hintStyle: TextStyle(fontSize: 12, color: Colors.grey.shade400, fontStyle: FontStyle.italic),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              _buildHelpIcon('상황 설명이나 동음이의어 등 추가 정보를 적어주세요.'),
            ],
          ),
          const SizedBox(height: 12),

          // Tag Field
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _tagController,
                  onChanged: (val) => state.setTags(val),
                  decoration: InputDecoration(
                    labelText: l10n.tagSelection,
                    hintText: '예: 비즈니스, 여행, 초급...',
                    hintStyle: TextStyle(fontSize: 12, color: Colors.grey.shade400, fontStyle: FontStyle.italic),
                    isDense: true,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              _buildHelpIcon('쉼표(,)로 구분하여 여러 태그를 입력할 수 있습니다.'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHelpIcon(String message) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Tooltip(
        message: message,
        triggerMode: TooltipTriggerMode.tap,
        showDuration: const Duration(seconds: 3),
        child: Icon(Icons.help_outline, color: Colors.indigo.shade200, size: 22),
      ),
    );
  }

  Widget _buildNotebookDropdown(BuildContext context, SimplifiedAppState state) {
    final l10n = AppLocalizations.of(context)!;
    return DropdownButtonFormField<String>(
      initialValue: state.selectedNotebook,
      decoration: InputDecoration(
        labelText: l10n.selectMaterialSet,
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
    );
  }

  Future<String?> _showNewNotebookDialog(BuildContext context) async {
    String newName = '';
    return showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('새 자료집 이름'),
        content: TextField(
          autofocus: true,
          decoration: const InputDecoration(hintText: '이름을 입력하세요'),
          onChanged: (val) => newName = val,
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('취소')),
          TextButton(onPressed: () => Navigator.pop(context, newName), child: const Text('추가')),
        ],
      ),
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
        color: Colors.transparent, // 마이크 이미지의 자체 원형 배경 사용
        boxShadow: [
          if (isListening)
            BoxShadow(
              color: color.withValues(alpha: 0.4),
              blurRadius: 25,
              spreadRadius: 8,
            ),
        ],
      ),
      child: Center(
        child: Image.asset(
          'assets/mic_geometric_final.png',
          width: size,
          height: size,
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high, // 극대화된 선명도 보장
        ),
      ),
    );
  }
}

class MeshMicPainter extends CustomPainter {
  final Color color;

  MeshMicPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final double centerX = size.width / 2;
    final double centerY = size.height * 0.40;
    final double micWidth = size.width * 0.44; 
    final double micHeight = size.height * 0.72; 
    
    // 1. Sleek Capsule Body (Premium Emerald Green)
    final RRect micBodyRRect = RRect.fromRectAndRadius(
      Rect.fromCenter(center: Offset(centerX, centerY), width: micWidth, height: micHeight),
      Radius.circular(micWidth / 2.0),
    );

    // Paints for Vibrant Emerald Green Metallic
    final greenGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        const Color(0xFFA5D6A7), // Light Green (Reflection)
        const Color(0xFF2E7D32), // Emerald Green (Base)
        const Color(0xFF1B5E20), // Deep Forest Green (Shadow)
      ],
      stops: const [0.0, 0.45, 1.0],
    ).createShader(Rect.fromLTWH(centerX - micWidth/2, centerY - micHeight/2, micWidth, micHeight));

    final paint = Paint()..isAntiAlias = true..style = PaintingStyle.fill;
    paint.shader = greenGradient;

    // Draw One-Piece Minimal Green Body
    canvas.drawRRect(micBodyRRect, paint);

    // 2. Seamless Unified Frame (U + Pillar + Base integrated)
    final framePaint = Paint()
      ..shader = LinearGradient(
        colors: [const Color(0xFF2E7D32), const Color(0xFFA5D6A7), const Color(0xFF1B5E20)],
      ).createShader(Rect.fromLTWH(centerX - micWidth * 0.8, centerY, micWidth * 1.6, micHeight))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round;

    final Path seamlessPath = Path();
    final double yokeInnerW = micWidth * 1.60;
    final double yokeTopY = centerY + 10;
    final double yokeBottomY = centerY + micHeight * 0.48;
    final double basePillarY = size.height * 1.12;

    // Left half of U
    seamlessPath.moveTo(centerX - yokeInnerW / 2, yokeTopY);
    seamlessPath.lineTo(centerX - yokeInnerW / 2, yokeBottomY - 18);
    
    // Bottom Curve leading to THE CENTER (Seamless)
    seamlessPath.arcToPoint(
      Offset(centerX, yokeBottomY + 2), // Meet at the center bottom
      radius: Radius.circular(yokeInnerW / 2.0),
      clockwise: false,
    );
    
    // Right half of U
    seamlessPath.arcToPoint(
      Offset(centerX + yokeInnerW / 2, yokeBottomY - 18),
      radius: Radius.circular(yokeInnerW / 2.0),
      clockwise: false,
    );
    seamlessPath.lineTo(centerX + yokeInnerW / 2, yokeTopY);
    
    // Pillar connected SEAMLESSLY from the center bottom of the U
    // Note: To make it look "integrated", we start the pillar path from the arc's center-bottom point
    seamlessPath.moveTo(centerX, yokeBottomY + 2);
    seamlessPath.lineTo(centerX, basePillarY);

    canvas.drawPath(seamlessPath, framePaint);

    // 3. Integrated Horizontal Base (Completing the structure)
    final basePaint = Paint()
      ..shader = LinearGradient(
        colors: [const Color(0xFF2E7D32), const Color(0xFF1B5E20)],
      ).createShader(Rect.fromCenter(center: Offset(centerX, basePillarY), width: size.width * 0.65, height: 12))
      ..style = PaintingStyle.fill;
    
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromCenter(center: Offset(centerX, basePillarY), width: size.width * 0.65, height: 12),
        const Radius.circular(4),
      ),
      basePaint
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
