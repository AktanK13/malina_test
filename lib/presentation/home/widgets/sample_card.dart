import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:malina/core/colors/app_colors.dart';

class SampleCard extends StatelessWidget {
  const SampleCard({
    super.key,
    required this.child,
    this.color = AppColors.transparent,
    required this.height,
    this.width = double.infinity,
    this.image = '',
  });

  final Widget child;
  final Color? color;
  final double? height;
  final double? width;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width?.w,
      height: height?.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: image == ''
            ? null
            : DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fitHeight,
              ),
        color: color,
      ),
      child: child,
    );
  }
}
