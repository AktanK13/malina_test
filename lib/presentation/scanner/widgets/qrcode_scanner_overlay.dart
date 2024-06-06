import 'package:flutter/material.dart';
import 'package:malina/core/colors/app_colors.dart';

class QRScannerOverlay extends StatelessWidget {
  const QRScannerOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final height = constraints.maxHeight;
        const cornerSize = 33.22;
        const borderWidth = 3.0;

        return Stack(
          children: [
            Container(
              color: AppColors.gray1e.withOpacity(0.5),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: width,
                height: height,
                child: Stack(
                  children: [
                    // Top-left corner
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: cornerSize,
                        height: borderWidth,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: borderWidth,
                        height: cornerSize,
                        color: Colors.white,
                      ),
                    ),
                    // Top-right corner
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: cornerSize,
                        height: borderWidth,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Container(
                        width: borderWidth,
                        height: cornerSize,
                        color: Colors.white,
                      ),
                    ),
                    // Bottom-left corner
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Container(
                        width: cornerSize,
                        height: borderWidth,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Container(
                        width: borderWidth,
                        height: cornerSize,
                        color: Colors.white,
                      ),
                    ),
                    // Bottom-right corner
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: cornerSize,
                        height: borderWidth,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: borderWidth,
                        height: cornerSize,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
