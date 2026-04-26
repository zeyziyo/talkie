import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/app_state.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../l10n/app_localizations.dart';
import '../constants/language_constants.dart';
import '../constants/scan_support_constants.dart';

class ScanWidget extends StatefulWidget {
  const ScanWidget({super.key});

  @override
  State<ScanWidget> createState() => _ScanWidgetState();
}

class _ScanWidgetState extends State<ScanWidget> {
  final TextEditingController _textController = TextEditingController();

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
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                )
              ],
            ),
            child: appState.scannedImage != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(20.r),
                    child: Image.file(appState.scannedImage!, fit: BoxFit.contain),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_a_photo_outlined, size: 40.r, color: Colors.indigo.shade200),
                        SizedBox(height: 12.h),
                        Text(
                          l10n.scanInstructions,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey.shade600, 
                            fontSize: 13.sp,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
          SizedBox(height: 20.h),

          // OCR 미지원 언어 경고 배너 (버튼 유지)
          if (!ScanSupportConstants.isSupported(appState.sourceLang)) ...[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: Colors.amber.shade50,
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: Colors.amber.shade300),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.warning_amber_rounded, color: Colors.amber.shade700, size: 20.r),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Text(
                      l10n.scanNotSupported,
                      style: TextStyle(
                        color: Colors.amber.shade800,
                        fontSize: 12.sp,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
          ],

          // 2. Action Buttons
          ElevatedButton(
            onPressed: appState.isTranslating ? null : () => appState.pickImageAndRecognizeText(),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
              elevation: 4,
              shadowColor: Colors.indigo.withValues(alpha: 0.3),
            ),
            child: Ink(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.indigo.shade700, Colors.indigo.shade500],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 14.h),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    appState.isTranslating 
                        ? SizedBox(width: 18.w, height: 18.w, child: const CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                        : const Icon(Icons.auto_awesome, color: Colors.white),
                    SizedBox(width: 8.w),
                    Text(
                      appState.isTranslating ? l10n.processing : l10n.pickGallery,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.sp),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          if (appState.scanReviewItems.isNotEmpty) ...[
            SizedBox(height: 24.h),
            Text(
              l10n.extractedText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp, color: Colors.indigo.shade900),
            ),
            SizedBox(height: 12.h),
            
            // Segment Cards
            ...List.generate(appState.scanReviewItems.length, (index) {
              final item = appState.scanReviewItems[index];
              final String langCode = item['lang'] ?? 'auto';
              final String langName = LanguageConstants.getLanguageMap(appState.sourceLang)[langCode] ?? langCode;

              return Container(
                margin: EdgeInsets.only(bottom: 16.h),
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: Colors.indigo.shade50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.indigo.withValues(alpha: 0.03),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade50,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            langName,
                            style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.indigo),
                          ),
                        ),
                        Icon(Icons.translate, size: 16.r, color: Colors.indigo.shade200),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    
                    // Original
                    Text(
                      'Original',
                      style: TextStyle(fontSize: 10.sp, color: Colors.grey.shade500, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      item['original'],
                      style: TextStyle(fontSize: 15.sp, color: Colors.black87),
                    ),
                    SizedBox(height: 12.h),
                    
                    // Division
                    Divider(color: Colors.grey.shade100, height: 1),
                    SizedBox(height: 12.h),
                    
                    // Translated (In Native Language)
                    Text(
                      'My Language (${LanguageConstants.getLanguageMap(appState.sourceLang)[appState.sourceLang]})',
                      style: TextStyle(fontSize: 10.sp, color: Colors.indigo.shade300, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      item['translated'] ?? '',
                      style: TextStyle(fontSize: 15.sp, color: Colors.black87, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              );
            }),

            // Final Save Button
            SizedBox(height: 24.h),
            ElevatedButton(
              onPressed: appState.isSaved ? null : () => appState.saveScannedItem(),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
                elevation: appState.isSaved ? 0 : 6,
                shadowColor: Colors.black.withValues(alpha: 0.2),
              ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: appState.isSaved 
                        ? [Colors.green.shade400, Colors.green.shade600]
                        : [Colors.blueGrey.shade800, Colors.blueGrey.shade900],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(appState.isSaved ? Icons.check_circle : Icons.save_alt, color: Colors.white),
                      SizedBox(width: 8.w),
                      Text(
                        appState.isSaved ? l10n.saved : l10n.saveToHistory,
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
          
          SizedBox(height: 40.h), 
        ],
      ),
    );
  }
}
