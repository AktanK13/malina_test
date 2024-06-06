import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina/core/colors/app_colors.dart';
import 'package:malina/core/fonts/app_fonts.dart';
import 'package:malina/core/images/app_images.dart';
import 'package:malina/presentation/cart/widgets/cart_item.dart';
import 'package:malina/utils/helpers/sized_box_helper.dart';

class CartCard extends StatelessWidget {
  const CartCard(
      {super.key,
      required this.cotegory,
      required this.image,
      required this.productName,
      required this.price,
      required this.description,
      required this.count,
      this.isFood = false});

  final String cotegory;
  final String image;
  final String productName;
  final String price;
  final String description;
  final String count;
  final bool isFood;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 20.w),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.grayShadow.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 20,
              offset: const Offset(0, 2),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    cotegory,
                    style: AppFonts.s16w400.copyWith(color: AppColors.gray7),
                  ),
                  const Icon(Icons.arrow_right),
                ],
              ),
              Divider(
                height: 1.h,
                color: AppColors.grayDivider,
              ),
              CartItem(
                productName: productName,
                count: count,
                description: description,
                price: price,
                image: image,
              ),
              isFood
                  ? const SizedBox()
                  : CartItem(
                      productName: productName,
                      count: count,
                      description: description,
                      price: price,
                      image: image,
                    ),
              addVerticalSpace(20),
              isFood
                  ? ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            vertical: 12.h, horizontal: 20.w),
                        backgroundColor: AppColors.grayCart,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        children: [
                          SvgPicture.asset(AppSvg.plusLogo),
                          addHorizontalSpace(8.w),
                          Text(
                            'Добавки',
                            style: AppFonts.s16w500.copyWith(
                              color: AppColors.black,
                            ),
                          )
                        ],
                      ),
                    )
                  : const SizedBox(),
              addVerticalSpace(20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
                  backgroundColor: AppColors.malina,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Заказать',
                      style: AppFonts.s16w500.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '3900 С',
                      style: AppFonts.s16w500.copyWith(
                        color: AppColors.white,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
