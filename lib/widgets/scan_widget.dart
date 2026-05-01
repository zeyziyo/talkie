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

    await appState.recognizeTextFromImage(croppedImage);
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
            SizedBox(height: 24.h),
            Text(
              l10n.extractedText,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                  color: Colors.indigo.shade900),
            ),
            SizedBox(height: 12.h),

            // Segment Cards
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

            // Combined Result View
            if (appState.scanReviewItems.isNotEmpty) ...[
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

class _ScanCropPage extends StatefulWidget {
  const _ScanCropPage({required this.imageFile});

  final File imageFile;

  @override
  State<_ScanCropPage> createState() => _ScanCropPageState();
}

class _ScanCropPageState extends State<_ScanCropPage> {
  late final Future<_CropImageData> _imageDataFuture;
  Rect _cropRect = const Rect.fromLTWH(0.08, 0.2, 0.84, 0.6);
  Offset? _dragStart;

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

  void _updateCrop(Offset start, Offset current) {
    final left = math.min(start.dx, current.dx).clamp(0.0, 1.0).toDouble();
    final top = math.min(start.dy, current.dy).clamp(0.0, 1.0).toDouble();
    final right = math.max(start.dx, current.dx).clamp(0.0, 1.0).toDouble();
    final bottom = math.max(start.dy, current.dy).clamp(0.0, 1.0).toDouble();

    const minSize = 0.04;
    if (right - left < minSize || bottom - top < minSize) return;

    setState(() {
      _cropRect = Rect.fromLTRB(left, top, right, bottom);
    });
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
                _cropRect = const Rect.fromLTWH(0.08, 0.2, 0.84, 0.6);
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
                      onPanStart: (details) {
                        _dragStart = Offset(
                          (details.localPosition.dx / imageRect.width)
                              .clamp(0.0, 1.0)
                              .toDouble(),
                          (details.localPosition.dy / imageRect.height)
                              .clamp(0.0, 1.0)
                              .toDouble(),
                        );
                      },
                      onPanUpdate: (details) {
                        final start = _dragStart;
                        if (start == null) return;
                        final current = Offset(
                          (details.localPosition.dx / imageRect.width)
                              .clamp(0.0, 1.0)
                              .toDouble(),
                          (details.localPosition.dy / imageRect.height)
                              .clamp(0.0, 1.0)
                              .toDouble(),
                        );
                        _updateCrop(start, current);
                      },
                      onPanEnd: (_) => _dragStart = null,
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
