import 'dart:io';
import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import '../services/translation_service.dart';
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
  bool _showBulkResult = false; // 일괄 번역 결과 노출 여부


  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  Future<void> _pickCropAndScan(AppState appState, ImageSource source) async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: source);
    if (image == null || !mounted) return;

    final croppedImage = await Navigator.of(context).push<File?>(
      MaterialPageRoute(
        builder: (_) => _ScanCropPage(imageFile: File(image.path)),
      ),
    );
    if (croppedImage == null) return;
    
    setState(() {
      _showBulkResult = false; // 새 스캔 시작 시 초기화
    });

    await appState.recognizeTextFromImage(croppedImage);


    // OCR 완료 후 번역 방법 선택 다이얼로그 표시
    if (mounted && appState.scanReviewItems.isNotEmpty) {
      await _showTranslateMethodDialog(appState);
    }
  }

  Future<void> _showTranslateMethodDialog(AppState appState) async {
    final l10n = AppLocalizations.of(context)!;

    // 일괄 번역 선택 시 잔여 횟수 사전 확인
    Future<void> onBulkSelected() async {
      if (!mounted) return;
      final deficit = await appState.checkBulkLimit();

      if (deficit != null && mounted) {
        // 잔여 횟수 부족 경고
        final needed = deficit['needed']!;
        final remaining = deficit['remaining']!;
        await showDialog<void>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Row(
              children: [
                Icon(Icons.warning_amber_rounded, color: Colors.amber.shade800),
                SizedBox(width: 8.w),
                Text(l10n.usageLimitTitle),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.scanInsufficientLimit(needed, remaining),
                  style: TextStyle(fontSize: 14.sp),
                ),
                SizedBox(height: 16.h),
                Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.info_outline,
                          size: 16.sp, color: Colors.blue.shade700),
                      SizedBox(width: 8.w),
                      Expanded(
                        child: Text(
                          '하단 배너 광고 클릭이 아닌, 아래 버튼을 통해 광고를 시청해야 횟수가 충전됩니다.',
                          style: TextStyle(
                              fontSize: 12.sp, color: Colors.blue.shade900),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(),
                child: Text(l10n.cancel),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(ctx).pop();
                  appState.watchAdAndRefillInScan(context);
                },
                icon: Icon(Icons.play_circle_outline, size: 18.sp),
                label: Text(l10n.watchAdAndRefill),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                ),
              ),
            ],
          ),
        );
        return;
      }

      setState(() {
        _showBulkResult = true;
      });
      appState.translateAllSegments();
    }

    await showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (ctx) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: EdgeInsets.all(24.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  l10n.scanTranslateMethodTitle,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo.shade900,
                  ),
                ),
                SizedBox(height: 6.h),
                Text(
                  l10n.scanTranslateMethodSubtitle,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.grey.shade600,
                  ),
                ),
                SizedBox(height: 20.h),
                // 일괄 번역
                _TranslateMethodCard(
                  icon: Icons.bolt_rounded,
                  iconColor: Colors.amber.shade700,
                  title: l10n.scanBulkTranslate,
                  subtitle: l10n.scanBulkTranslateDesc,
                  onTap: () {
                    Navigator.of(ctx).pop();
                    onBulkSelected();
                  },
                ),
                SizedBox(height: 12.h),
                // 개별 번역
                _TranslateMethodCard(
                  icon: Icons.tune_rounded,
                  iconColor: Colors.indigo.shade600,
                  title: l10n.scanSegmentTranslate,
                  subtitle: l10n.scanSegmentTranslateDesc,
                  onTap: () {
                    Navigator.of(ctx).pop();
                    setState(() {
                      _showBulkResult = false;
                    });
                  },
                ),

                SizedBox(height: 8.h),
                TextButton(
                  onPressed: () => Navigator.of(ctx).pop(),
                  child: Text(l10n.cancel,
                      style: TextStyle(color: Colors.grey.shade500)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final l10n = AppLocalizations.of(context)!;
    final isScanSupported =
        ScanSupportConstants.isSupported(appState.targetLang);

    // Sync controller with appState text
    if (appState.scannedText != _textController.text &&
        appState.scannedText != 'Recognizing...') {
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
                    child:
                        Image.file(appState.scannedImage!, fit: BoxFit.contain),
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_a_photo_outlined,
                            size: 40.r, color: Colors.indigo.shade200),
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
          if (!isScanSupported) ...[
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
                  Icon(Icons.warning_amber_rounded,
                      color: Colors.amber.shade700, size: 20.r),
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
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: appState.isTranslating || !isScanSupported
                      ? null
                      : () => _pickCropAndScan(appState, ImageSource.gallery),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r)),
                    elevation: 4,
                    shadowColor: Colors.indigo.withValues(alpha: 0.3),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.indigo.shade700,
                          Colors.indigo.shade500
                        ],
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
                              ? SizedBox(
                                  width: 18.w,
                                  height: 18.w,
                                  child: const CircularProgressIndicator(
                                      strokeWidth: 2, color: Colors.white))
                              : const Icon(Icons.photo_library_outlined,
                                  color: Colors.white),
                          SizedBox(width: 8.w),
                          Text(
                            appState.isTranslating
                                ? l10n.processing
                                : l10n.pickGallery,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Tooltip(
                message: 'Camera',
                child: SizedBox(
                  width: 52.w,
                  height: 52.w,
                  child: IconButton.filled(
                    onPressed: appState.isTranslating || !isScanSupported
                        ? null
                        : () => _pickCropAndScan(appState, ImageSource.camera),
                    icon: const Icon(Icons.photo_camera_outlined),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.indigo.shade600,
                      foregroundColor: Colors.white,
                      disabledBackgroundColor: Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
            ],
          ),

          if (appState.scanReviewItems.isNotEmpty) ...[
            // 세그먼트 목록 + 상단 일괄 번역 버튼
            SizedBox(height: 24.h),
            Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.extractedText,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: Colors.indigo.shade900),
                  ),
                ),
                // 뷰 모드 전환 버튼
                if (!appState.isTranslatingAll)
                  TextButton.icon(
                    onPressed: appState.isTranslating
                        ? null
                        : () {
                            if (_showBulkResult) {
                              setState(() {
                                _showBulkResult = false;
                              });
                            } else {
                              _showTranslateMethodDialog(appState);
                            }
                          },
                    icon: Icon(
                        _showBulkResult
                            ? Icons.list_alt_rounded
                            : Icons.bolt_rounded,
                        size: 16.sp,
                        color: _showBulkResult
                            ? Colors.indigo.shade700
                            : Colors.amber.shade700),
                    label: Text(
                      _showBulkResult
                          ? l10n.scanViewSegments
                          : l10n.scanBulkTranslateButton,
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: Colors.indigo.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: _showBulkResult
                          ? Colors.indigo.shade50
                          : Colors.amber.shade50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.w, vertical: 6.h),
                    ),
                  )
                else
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: SizedBox(
                      width: 18.w,
                      height: 18.w,
                      child: CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Colors.amber.shade600),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 12.h),

            // 3. 번역 결과 뷰 (모드에 따라 분기)
            if (!_showBulkResult) ...[
              // [개별 번역 모드] Segment Cards
              ...List.generate(appState.scanReviewItems.length, (index) {

              final item = appState.scanReviewItems[index];
              final String langCode = item['lang'] ?? 'auto';
              final String langName = LanguageConstants.getLanguageMap(
                      appState.sourceLang)[langCode] ??
                  langCode;

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
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: Colors.indigo.shade50,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text(
                            langName,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.indigo),
                          ),
                        ),
                        Icon(Icons.translate,
                            size: 16.r, color: Colors.indigo.shade200),
                      ],
                    ),
                    SizedBox(height: 12.h),

                    // Original
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          l10n.originalText,
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                          onTap: () {
                            Clipboard.setData(
                                ClipboardData(text: item['original']));
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text(l10n.originalCopied),
                                  duration: const Duration(seconds: 1)),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 4.w),
                            child: Row(
                              children: [
                                Icon(Icons.copy,
                                    size: 12.r, color: Colors.indigo.shade300),
                                SizedBox(width: 4.w),
                                Text(
                                  l10n.copyOriginal,
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.indigo.shade300,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
                      '${l10n.translationResult} (${LanguageConstants.getLanguageMap(appState.sourceLang)[appState.sourceLang]})',
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: Colors.indigo.shade300,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.h),
                    Builder(builder: (context) {
                      final translatedText = item['translated'] ?? '';
                      final isTranslating =
                          appState.isSegmentTranslating(index);

                      if (isTranslating) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: SizedBox(
                            width: 20.w,
                            height: 20.w,
                            child: CircularProgressIndicator(
                                strokeWidth: 2, color: Colors.indigo.shade300),
                          ),
                        );
                      }

                      if (translatedText.isEmpty) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton.icon(
                            onPressed: () =>
                                appState.translateSingleSegment(index),
                            icon: Icon(Icons.translate, size: 16.sp),
                            label: Text(l10n.translate),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.indigo,
                              padding: EdgeInsets.symmetric(horizontal: 12.w),
                              backgroundColor: Colors.indigo.shade50,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                          ),
                        );
                      }

                      // 만약 에러 코드 형태라면 다국어 메시지로 변환
                      String displayMsg = translatedText;
                      if (translatedText.startsWith('Error:') ||
                          translatedText.contains('Policy') ||
                          translatedText == 'OTHER' ||
                          translatedText.contains('exhausted')) {
                        displayMsg = TranslationService.getErrorMessage(
                            translatedText, l10n);
                      }

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            displayMsg,
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: displayMsg == translatedText
                                    ? Colors.black87
                                    : Colors.red.shade700,
                                fontWeight: displayMsg == translatedText
                                    ? FontWeight.w500
                                    : FontWeight.normal),
                          ),
                          if (displayMsg != translatedText) // 에러 발생 시 재시도 버튼 제공
                            TextButton(
                              onPressed: () =>
                                  appState.translateSingleSegment(index),
                              child: Text(l10n.retry,
                                  style: TextStyle(fontSize: 12.sp)),
                            ),
                        ],
                      );
                    }),
                  ],
                ),
              );
            }),
            ] else ...[
              // [일괄 번역 모드] Combined Result View
              SizedBox(height: 32.h),
              Container(
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade900,
                  borderRadius: BorderRadius.circular(24.r),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.auto_awesome,
                            color: Colors.amber.shade300, size: 20.r),
                        SizedBox(width: 8.w),
                        Text(
                          l10n.combinedResult,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      l10n.originalText,
                      style: TextStyle(
                          color: Colors.white60,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      appState.combinedOriginal,
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                    SizedBox(height: 16.h),
                    Divider(color: Colors.white12),
                    SizedBox(height: 16.h),
                    Text(
                      l10n.translationResult,
                      style: TextStyle(
                          color: Colors.amber.shade200,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      appState.combinedTranslated,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],

            // Final Save Button
            SizedBox(height: 24.h),
            ElevatedButton(
              onPressed: appState.isSaved || !appState.canSaveScannedItem
                  ? null
                  : () => appState.saveScannedItem(),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.r)),
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
                      Icon(
                          appState.isSaved
                              ? Icons.check_circle
                              : Icons.save_alt,
                          color: Colors.white),
                      SizedBox(width: 8.w),
                      Text(
                        appState.isSaved ? l10n.saved : l10n.saveToHistory,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ] else ...[
            // Empty / Mismatch State
            SizedBox(height: 48.h),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      appState.scannedText == 'NO_MATCH'
                          ? Icons.language_rounded
                          : Icons.image_search_rounded,
                      size: 64.r,
                      color: Colors.indigo.shade50,
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      appState.scannedText == 'NO_MATCH'
                          ? l10n.scanNoMatch
                          : (appState.scannedText == 'NO_TEXT'
                              ? l10n.noStudyMaterial
                              : (appState.scannedText.startsWith('ERROR:')
                                  ? appState.scannedText
                                  : l10n.scanInstructions)),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.indigo.shade300,
                        fontSize: 14.sp,
                        height: 1.6,
                      ),
                    ),
                  ],
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

/// \ubc88\uc5ed \ubc29\ubc95 \uc120\ud0dd \ub2e4\uc774\uc5bc\ub85c\uadf8\uc5d0\uc11c \uc0ac\uc6a9\ub418\ub294 \uce74\ub4dc \ud56d\ubaa9 \uc704\uc82f
class _TranslateMethodCard extends StatelessWidget {
  const _TranslateMethodCard({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.indigo.shade100),
        ),
        child: Row(
          children: [
            Container(
              width: 44.w,
              height: 44.w,
              decoration: BoxDecoration(
                color: iconColor.withValues(alpha: 0.12),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: iconColor, size: 22.sp),
            ),
            SizedBox(width: 14.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right_rounded,
                color: Colors.grey.shade400, size: 20.sp),
          ],
        ),
      ),
    );
  }
}

class _ScanCropPage extends StatefulWidget {
  const _ScanCropPage({required this.imageFile});

  final File imageFile;

  @override
  State<_ScanCropPage> createState() => _ScanCropPageState();
}

class _ScanCropPageState extends State<_ScanCropPage> {
  late final Future<_CropImageData> _imageDataFuture;
  Rect _cropRect = const Rect.fromLTWH(0, 0, 1, 1);
  Offset? _dragStart;
  Rect? _dragStartRect;
  _CropDragHandle _activeHandle = _CropDragHandle.none;

  @override
  void initState() {
    super.initState();
    _imageDataFuture = _loadImageData();
  }

  Future<_CropImageData> _loadImageData() async {
    final bytes = await widget.imageFile.readAsBytes();
    final decoded = await decodeImageFromList(bytes);
    return _CropImageData(
      bytes: bytes,
      image: decoded,
      width: decoded.width,
      height: decoded.height,
    );
  }

  void _startCropDrag({
    required Offset localPosition,
    required Rect imageRect,
    required Rect cropRect,
  }) {
    final normalizedPosition = _normalizePosition(localPosition, imageRect);
    _dragStart = normalizedPosition;
    _dragStartRect = _cropRect;
    _activeHandle = _hitTestHandle(
      localPosition: localPosition,
      imageRect: imageRect,
      cropRect: cropRect,
    );

    if (_activeHandle == _CropDragHandle.create) {
      setState(() {
        _cropRect = Rect.fromLTRB(
          normalizedPosition.dx,
          normalizedPosition.dy,
          normalizedPosition.dx,
          normalizedPosition.dy,
        );
      });
    }
  }

  void _updateCropDrag(Offset localPosition, Rect imageRect) {
    final start = _dragStart;
    final startRect = _dragStartRect;
    if (start == null || startRect == null) return;

    final current = _normalizePosition(localPosition, imageRect);
    final nextRect = switch (_activeHandle) {
      _CropDragHandle.move => _moveCropRect(startRect, current - start),
      _CropDragHandle.topLeft => _resizeCropRect(
          startRect,
          left: current.dx,
          top: current.dy,
        ),
      _CropDragHandle.top => _resizeCropRect(startRect, top: current.dy),
      _CropDragHandle.topRight => _resizeCropRect(
          startRect,
          top: current.dy,
          right: current.dx,
        ),
      _CropDragHandle.right => _resizeCropRect(startRect, right: current.dx),
      _CropDragHandle.bottomRight => _resizeCropRect(
          startRect,
          right: current.dx,
          bottom: current.dy,
        ),
      _CropDragHandle.bottom => _resizeCropRect(startRect, bottom: current.dy),
      _CropDragHandle.bottomLeft => _resizeCropRect(
          startRect,
          left: current.dx,
          bottom: current.dy,
        ),
      _CropDragHandle.left => _resizeCropRect(startRect, left: current.dx),
      _CropDragHandle.create => _createCropRect(start, current),
      _CropDragHandle.none => _cropRect,
    };

    setState(() {
      _cropRect = nextRect;
    });
  }

  void _endCropDrag() {
    _dragStart = null;
    _dragStartRect = null;
    _activeHandle = _CropDragHandle.none;
  }

  Offset _normalizePosition(Offset localPosition, Rect imageRect) {
    return Offset(
      (localPosition.dx / imageRect.width).clamp(0.0, 1.0).toDouble(),
      (localPosition.dy / imageRect.height).clamp(0.0, 1.0).toDouble(),
    );
  }

  Rect _createCropRect(Offset start, Offset current) {
    final left = math.min(start.dx, current.dx).clamp(0.0, 1.0).toDouble();
    final top = math.min(start.dy, current.dy).clamp(0.0, 1.0).toDouble();
    final right = math.max(start.dx, current.dx).clamp(0.0, 1.0).toDouble();
    final bottom = math.max(start.dy, current.dy).clamp(0.0, 1.0).toDouble();
    return _ensureMinimumCrop(Rect.fromLTRB(left, top, right, bottom));
  }

  Rect _moveCropRect(Rect rect, Offset delta) {
    final width = rect.width;
    final height = rect.height;
    final left = (rect.left + delta.dx).clamp(0.0, 1.0 - width).toDouble();
    final top = (rect.top + delta.dy).clamp(0.0, 1.0 - height).toDouble();
    return Rect.fromLTWH(left, top, width, height);
  }

  Rect _resizeCropRect(
    Rect rect, {
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    const minSize = 0.05;
    var nextLeft = (left ?? rect.left).clamp(0.0, 1.0).toDouble();
    var nextTop = (top ?? rect.top).clamp(0.0, 1.0).toDouble();
    var nextRight = (right ?? rect.right).clamp(0.0, 1.0).toDouble();
    var nextBottom = (bottom ?? rect.bottom).clamp(0.0, 1.0).toDouble();

    if (left != null && nextRight - nextLeft < minSize) {
      nextLeft = nextRight - minSize;
    }
    if (right != null && nextRight - nextLeft < minSize) {
      nextRight = nextLeft + minSize;
    }
    if (top != null && nextBottom - nextTop < minSize) {
      nextTop = nextBottom - minSize;
    }
    if (bottom != null && nextBottom - nextTop < minSize) {
      nextBottom = nextTop + minSize;
    }

    return _ensureMinimumCrop(
      Rect.fromLTRB(
        nextLeft.clamp(0.0, 1.0).toDouble(),
        nextTop.clamp(0.0, 1.0).toDouble(),
        nextRight.clamp(0.0, 1.0).toDouble(),
        nextBottom.clamp(0.0, 1.0).toDouble(),
      ),
    );
  }

  Rect _ensureMinimumCrop(Rect rect) {
    const minSize = 0.05;
    var left = math.min(rect.left, rect.right).clamp(0.0, 1.0).toDouble();
    var top = math.min(rect.top, rect.bottom).clamp(0.0, 1.0).toDouble();
    var right = math.max(rect.left, rect.right).clamp(0.0, 1.0).toDouble();
    var bottom = math.max(rect.top, rect.bottom).clamp(0.0, 1.0).toDouble();

    if (right - left < minSize) {
      final center = ((left + right) / 2).clamp(0.0, 1.0).toDouble();
      left = (center - minSize / 2).clamp(0.0, 1.0 - minSize).toDouble();
      right = left + minSize;
    }
    if (bottom - top < minSize) {
      final center = ((top + bottom) / 2).clamp(0.0, 1.0).toDouble();
      top = (center - minSize / 2).clamp(0.0, 1.0 - minSize).toDouble();
      bottom = top + minSize;
    }

    return Rect.fromLTRB(left, top, right, bottom);
  }

  _CropDragHandle _hitTestHandle({
    required Offset localPosition,
    required Rect imageRect,
    required Rect cropRect,
  }) {
    const touchTarget = 44.0;
    final nearLeft = (localPosition.dx - cropRect.left).abs() <= touchTarget;
    final nearRight = (localPosition.dx - cropRect.right).abs() <= touchTarget;
    final nearTop = (localPosition.dy - cropRect.top).abs() <= touchTarget;
    final nearBottom =
        (localPosition.dy - cropRect.bottom).abs() <= touchTarget;
    final insideHorizontal = localPosition.dx >= cropRect.left - touchTarget &&
        localPosition.dx <= cropRect.right + touchTarget;
    final insideVertical = localPosition.dy >= cropRect.top - touchTarget &&
        localPosition.dy <= cropRect.bottom + touchTarget;

    if (nearLeft && nearTop) return _CropDragHandle.topLeft;
    if (nearRight && nearTop) return _CropDragHandle.topRight;
    if (nearRight && nearBottom) return _CropDragHandle.bottomRight;
    if (nearLeft && nearBottom) return _CropDragHandle.bottomLeft;
    if (nearTop && insideHorizontal) return _CropDragHandle.top;
    if (nearRight && insideVertical) return _CropDragHandle.right;
    if (nearBottom && insideHorizontal) return _CropDragHandle.bottom;
    if (nearLeft && insideVertical) return _CropDragHandle.left;

    final normalizedPosition = _normalizePosition(localPosition, imageRect);
    if (_cropRect.contains(normalizedPosition)) {
      return _CropDragHandle.move;
    }
    return _CropDragHandle.create;
  }

  Future<void> _confirmCrop(_CropImageData data) async {
    final x =
        (_cropRect.left * data.width).round().clamp(0, data.width - 1).toInt();
    final y =
        (_cropRect.top * data.height).round().clamp(0, data.height - 1).toInt();
    final right =
        (_cropRect.right * data.width).round().clamp(x + 1, data.width).toInt();
    final bottom = (_cropRect.bottom * data.height)
        .round()
        .clamp(y + 1, data.height)
        .toInt();
    final width = right - x;
    final height = bottom - y;

    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    canvas.drawImageRect(
      data.image,
      Rect.fromLTWH(
          x.toDouble(), y.toDouble(), width.toDouble(), height.toDouble()),
      Rect.fromLTWH(0, 0, width.toDouble(), height.toDouble()),
      Paint(),
    );
    final picture = recorder.endRecording();
    final croppedImage = await picture.toImage(width, height);
    final byteData =
        await croppedImage.toByteData(format: ui.ImageByteFormat.png);
    croppedImage.dispose();
    picture.dispose();

    if (byteData == null) {
      if (mounted) Navigator.of(context).pop(widget.imageFile);
      return;
    }

    final tempDir = await getTemporaryDirectory();
    final croppedFile = File(
      '${tempDir.path}${Platform.pathSeparator}talkie_scan_crop_${DateTime.now().millisecondsSinceEpoch}.png',
    );
    await croppedFile.writeAsBytes(
      byteData.buffer.asUint8List(
        byteData.offsetInBytes,
        byteData.lengthInBytes,
      ),
    );

    if (mounted) Navigator.of(context).pop(croppedFile);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).cancelButtonLabel,
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            tooltip: 'Reset',
            icon: const Icon(Icons.restart_alt),
            onPressed: () {
              setState(() {
                _cropRect = const Rect.fromLTWH(0, 0, 1, 1);
              });
            },
          ),
          FutureBuilder<_CropImageData>(
            future: _imageDataFuture,
            builder: (context, snapshot) {
              return IconButton(
                tooltip: MaterialLocalizations.of(context).okButtonLabel,
                icon: const Icon(Icons.check),
                onPressed: snapshot.hasData
                    ? () => _confirmCrop(snapshot.data!)
                    : null,
              );
            },
          ),
        ],
      ),
      body: FutureBuilder<_CropImageData>(
        future: _imageDataFuture,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.white),
            );
          }

          final data = snapshot.data!;
          return LayoutBuilder(
            builder: (context, constraints) {
              final boxSize = Size(
                constraints.maxWidth,
                constraints.maxHeight,
              );
              final imageRect = _containedImageRect(
                boxSize: boxSize,
                imageSize: Size(data.width.toDouble(), data.height.toDouble()),
              );
              final cropRect = Rect.fromLTRB(
                imageRect.left + _cropRect.left * imageRect.width,
                imageRect.top + _cropRect.top * imageRect.height,
                imageRect.left + _cropRect.right * imageRect.width,
                imageRect.top + _cropRect.bottom * imageRect.height,
              );
              final localCropRect = Rect.fromLTRB(
                cropRect.left - imageRect.left,
                cropRect.top - imageRect.top,
                cropRect.right - imageRect.left,
                cropRect.bottom - imageRect.top,
              );

              return Stack(
                children: [
                  Center(
                    child: Image.memory(
                      data.bytes,
                      fit: BoxFit.contain,
                      width: boxSize.width,
                      height: boxSize.height,
                    ),
                  ),
                  Positioned.fill(
                    child: CustomPaint(
                      painter: _CropOverlayPainter(cropRect),
                    ),
                  ),
                  Positioned.fromRect(
                    rect: imageRect,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onPanStart: (details) => _startCropDrag(
                        localPosition: details.localPosition,
                        imageRect: imageRect,
                        cropRect: localCropRect,
                      ),
                      onPanUpdate: (details) => _updateCropDrag(
                        details.localPosition,
                        imageRect,
                      ),
                      onPanEnd: (_) => _endCropDrag(),
                      onPanCancel: _endCropDrag,
                      child: CustomPaint(
                        painter: _CropHandlePainter(localCropRect),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  Rect _containedImageRect({
    required Size boxSize,
    required Size imageSize,
  }) {
    final imageAspect = imageSize.width / imageSize.height;
    final boxAspect = boxSize.width / boxSize.height;

    double width;
    double height;
    if (boxAspect > imageAspect) {
      height = boxSize.height;
      width = height * imageAspect;
    } else {
      width = boxSize.width;
      height = width / imageAspect;
    }

    return Rect.fromLTWH(
      (boxSize.width - width) / 2,
      (boxSize.height - height) / 2,
      width,
      height,
    );
  }
}

enum _CropDragHandle {
  none,
  move,
  topLeft,
  top,
  topRight,
  right,
  bottomRight,
  bottom,
  bottomLeft,
  left,
  create,
}

class _CropImageData {
  const _CropImageData({
    required this.bytes,
    required this.image,
    required this.width,
    required this.height,
  });

  final Uint8List bytes;
  final ui.Image image;
  final int width;
  final int height;
}

class _CropOverlayPainter extends CustomPainter {
  const _CropOverlayPainter(this.cropRect);

  final Rect cropRect;

  @override
  void paint(Canvas canvas, Size size) {
    final overlayPaint = Paint()..color = Colors.black.withValues(alpha: 0.55);
    final borderPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
    final cornerPaint = Paint()
      ..color = Colors.amber
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    final fullPath = Path()..addRect(Offset.zero & size);
    final cropPath = Path()..addRect(cropRect);
    final overlayPath =
        Path.combine(PathOperation.difference, fullPath, cropPath);
    canvas.drawPath(overlayPath, overlayPaint);
    canvas.drawRect(cropRect, borderPaint);

    const cornerLength = 28.0;
    canvas.drawLine(cropRect.topLeft,
        cropRect.topLeft + const Offset(cornerLength, 0), cornerPaint);
    canvas.drawLine(cropRect.topLeft,
        cropRect.topLeft + const Offset(0, cornerLength), cornerPaint);
    canvas.drawLine(cropRect.topRight,
        cropRect.topRight + const Offset(-cornerLength, 0), cornerPaint);
    canvas.drawLine(cropRect.topRight,
        cropRect.topRight + const Offset(0, cornerLength), cornerPaint);
    canvas.drawLine(cropRect.bottomLeft,
        cropRect.bottomLeft + const Offset(cornerLength, 0), cornerPaint);
    canvas.drawLine(cropRect.bottomLeft,
        cropRect.bottomLeft + const Offset(0, -cornerLength), cornerPaint);
    canvas.drawLine(cropRect.bottomRight,
        cropRect.bottomRight + const Offset(-cornerLength, 0), cornerPaint);
    canvas.drawLine(cropRect.bottomRight,
        cropRect.bottomRight + const Offset(0, -cornerLength), cornerPaint);
  }

  @override
  bool shouldRepaint(covariant _CropOverlayPainter oldDelegate) {
    return oldDelegate.cropRect != cropRect;
  }
}

class _CropHandlePainter extends CustomPainter {
  const _CropHandlePainter(this.cropRect);

  final Rect cropRect;

  @override
  void paint(Canvas canvas, Size size) {
    final handlePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    final handleBorderPaint = Paint()
      ..color = Colors.black.withValues(alpha: 0.45)
      ..strokeWidth = 1.5
      ..style = PaintingStyle.stroke;

    for (final point in [
      cropRect.topLeft,
      cropRect.topCenter,
      cropRect.topRight,
      cropRect.centerRight,
      cropRect.bottomRight,
      cropRect.bottomCenter,
      cropRect.bottomLeft,
      cropRect.centerLeft,
    ]) {
      canvas.drawCircle(point, 7, handlePaint);
      canvas.drawCircle(point, 7, handleBorderPaint);
    }
  }

  @override
  bool shouldRepaint(covariant _CropHandlePainter oldDelegate) {
    return oldDelegate.cropRect != cropRect;
  }
}
