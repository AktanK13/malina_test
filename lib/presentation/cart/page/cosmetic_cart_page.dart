import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:malina/core/colors/app_colors.dart';
import 'package:malina/core/fonts/app_fonts.dart';
import 'package:malina/core/images/app_images.dart';
import 'package:malina/presentation/cart/widgets/cart_card.dart';

class CosmeticCartPage extends StatelessWidget {
  const CosmeticCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.lightBackground,
        toolbarHeight: 70,
        title: Text(
          'Корзина',
          style: AppFonts.s20w700,
        ),
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                foregroundColor: AppColors.grayDisabled,
                backgroundColor: AppColors.transparent,
              ),
              child: Text(
                'Очистить',
                style: AppFonts.s14w400.copyWith(color: AppColors.black),
              ),
            ),
          )
        ],
      ),
      backgroundColor: AppColors.lightBackground,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Wrap(children: [
              CartCard(
                cotegory: 'Hair',
                image: AppImages.shampu,
                productName: 'Hadat Cosmetics',
                price: '1900 C',
                description:
                    'Шампунь интенсивно восстанавливающий Hydro Intensive Repair Shampoo 250 мл',
                count: '1',
              ),
              CartCard(
                cotegory: 'Preen Beauty',
                image: AppImages.shampu,
                productName: 'L’Oreal Paris Elseve',
                price: '1900 C',
                description:
                    'Шампунь интенсивно восстанавливающий Hydro Intensive Repair Shampoo 250 мл',
                count: '1',
              ),
            ])
          ],
        ),
      ),
    );
  }
}
