import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../l10n/app_localizations.dart';

class ScanWidget extends StatefulWidget {
  const ScanWidget({super.key});

  @override
  State<ScanWidget> createState() => _ScanWidgetState();
}

class _ScanWidgetState extends State<ScanWidget> {
  final TextEditingController _textController = TextEditingController();
  String _translationResult = '';

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final l10n = AppLocalizations.of(context)!;

    // Sync controller with appState text
    if (appState.scannedText != _textController.text && appState.scannedText != 'Recognizing...') {
       _textController.text = appState.scannedText;
    }

    return SingleChildScrollView(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 1. Image Preview Box
          Container(
            height: 200.h,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: appState.scannedImage != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(16.r),
                    child: Image.file(appState.scannedImage!, fit: BoxFit.contain),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image_search, size: 48.r, color: Colors.grey.shade400),
                        SizedBox(height: 8.h),
                        Text(
                          l10n.scanInstructions, // Use localized instruction
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  ),
          ),
          SizedBox(height: 16.h),

          // 2. Action Buttons
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () => appState.pickImageAndRecognizeText(),
                  icon: const Icon(Icons.photo_library),
                  label: Text(l10n.pickGallery),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 12.h),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),

          // 3. Extracted Text Section
          Text(
            l10n.extractedText,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp, color: Colors.indigo.shade900),
          ),
          SizedBox(height: 8.h),
          TextField(
            controller: _textController,
            maxLines: 5,
            decoration: InputDecoration(
              hintText: l10n.enterTextHint,
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
              filled: true,
              fillColor: Colors.white,
            ),
            onChanged: (val) => appState.setScannedText(val),
          ),
          SizedBox(height: 16.h),

          // 4. Translation Action
          ElevatedButton.icon(
            onPressed: appState.isTranslating ? null : () async {
              await appState.translateScannedText();
              setState(() {
                _translationResult = appState.scannedText;
              });
            },
            icon: appState.isTranslating 
                ? SizedBox(width: 18.w, height: 18.w, child: const CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                : const Icon(Icons.translate),
            label: Text(appState.isTranslating ? l10n.translating : l10n.translate),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue.shade700,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 12.h),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
            ),
          ),
          SizedBox(height: 24.h),

          // 5. Save Options
          if (!appState.isTranslating && _textController.text.isNotEmpty && _textController.text != 'Recognizing...')
          Column(
            children: [
              const Divider(),
              SizedBox(height: 8.h),
              Row(
                children: [
                   Expanded(
                    child: OutlinedButton.icon(
                      onPressed: appState.isSaved ? null : () => appState.saveScannedItem(
                        text: _textController.text,
                        translation: _translationResult,
                        type: 'word',
                      ),
                      icon: Icon(appState.isSaved ? Icons.check : Icons.save),
                      label: Text(appState.isSaved ? l10n.saved : l10n.saveAsWord),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: appState.isSaved ? null : () => appState.saveScannedItem(
                        text: _textController.text,
                        translation: _translationResult,
                        type: 'sentence',
                      ),
                      icon: Icon(appState.isSaved ? Icons.check : Icons.save),
                      label: Text(appState.isSaved ? l10n.saved : l10n.saveAsSentence),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 40.h), 
        ],
      ),
    );
  }
}
