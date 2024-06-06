// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:malina/core/colors/app_colors.dart';
import 'package:malina/core/consts/app_icons.dart';
import 'package:malina/presentation/cart/page/food_cart_page.dart';
import 'package:popover/popover.dart';

class CartDropdownMenu extends StatelessWidget {
  const CartDropdownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showPopover(
          context: context,
          bodyBuilder: (context) => const MenuItems(),
          direction: PopoverDirection.top,
          width: 70.w,
          height: 147.h,
          arrowHeight: 0,
          arrowWidth: 0,
          radius: 50.0,
          transition: PopoverTransition.scale,
          barrierColor: AppColors.transparent,
        );
      },
      child: const Icon(AppIcons.cart_logo),
    );
  }
}

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            height: 60.h,
            width: 60.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColors.grayCart,
            ),
            child: IconButton(
              icon: const Icon(AppIcons.food_logo),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const FoodCartPage(),
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            height: 60.h,
            width: 60.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: AppColors.grayCart,
            ),
            child: IconButton(
              icon: const Icon(AppIcons.cosmetic_logo),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const FoodCartPage(),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
