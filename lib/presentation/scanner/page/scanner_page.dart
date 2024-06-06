import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:malina/core/colors/app_colors.dart';
import 'package:malina/core/fonts/app_fonts.dart';
import 'package:malina/presentation/scanner/page/found_page.dart';
import 'package:malina/presentation/scanner/widgets/qrcode_scanner_overlay.dart';
import 'package:malina/utils/helpers/sized_box_helper.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({super.key});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  final MobileScannerController controller = MobileScannerController();
  bool _isScanning = true;

  void _onDetect(BarcodeCapture capture) {
    if (_isScanning) {
      _isScanning = false;
      final Barcode barcode = capture.barcodes.first;
      final String code = barcode.rawValue ?? '---';

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => FoundPage(code: code),
        ),
      ).then((_) {
        _isScanning = true;
      });
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        actions: [
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
              color: AppColors.gray7,
            ),
          ),
        ],
        backgroundColor: AppColors.scannerBackground,
        surfaceTintColor: AppColors.scannerBackground,
      ),
      backgroundColor: AppColors.scannerBackground,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              addVerticalSpace(85),
              Text(
                'Поместите QR-код в рамку',
                style: AppFonts.s18w400.copyWith(color: AppColors.white),
              ),
              addVerticalSpace(29),
              Center(
                child: SizedBox(
                  height: 300.h,
                  width: 300.w,
                  child: Stack(
                    children: [
                      MobileScanner(
                        controller: controller,
                        onDetect: _onDetect,
                      ),
                      const QRScannerOverlay(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
