import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:malina/core/colors/app_colors.dart';
import 'package:malina/core/fonts/app_fonts.dart';
import 'package:malina/utils/helpers/sized_box_helper.dart';

class CartItem extends StatelessWidget {
  const CartItem(
      {super.key,
      required this.image,
      required this.productName,
      required this.price,
      required this.description,
      required this.count});
  final String image;
  final String productName;
  final String price;
  final String description;
  final String count;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              image,
              width: 110.w,
              height: 110.h,
              fit: BoxFit.contain,
            ),
          ),
          addHorizontalSpace(10),
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        productName,
                        style: AppFonts.s16w500,
                        softWrap: true,
                      ),
                    ),
                    addHorizontalSpace(5),
                    Text(
                      price,
                      style: AppFonts.s16w500,
                    ),
                  ],
                ),
                addVerticalSpace(10),
                Text(
                  description,
                  style: AppFonts.s12w400,
                ),
                addVerticalSpace(10),
                Row(
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        color: AppColors.gray7,
                        shape: CircleBorder(),
                      ),
                      child: Container(
                        width: 32.w,
                        height: 32.h,
                        decoration: const BoxDecoration(
                          color: AppColors.grayCart,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Icon(Icons.remove),
                      ),
                    ),
                    addHorizontalSpace(10),
                    Text(
                      count,
                      style: AppFonts.s18w700,
                    ),
                    addHorizontalSpace(10),
                    Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: const BoxDecoration(
                        color: AppColors.grayCart,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Icon(Icons.add),
                    ),
                    const Spacer(),
                    Container(
                      width: 32.w,
                      height: 32.h,
                      decoration: const BoxDecoration(
                        color: AppColors.grayCart,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: const Icon(Icons.delete_outline_rounded),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
