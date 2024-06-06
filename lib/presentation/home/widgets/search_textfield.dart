import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:malina/core/colors/app_colors.dart';
import 'package:malina/core/fonts/app_fonts.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.grayShadow.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 20,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: TextField(
        controller: controller,
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        onSubmitted: (value) {
          print(controller.text);
        },
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: AppColors.darkGray,
          hintStyle: AppFonts.s14w400.copyWith(
            color: AppColors.darkGray,
          ),
          hintText: 'Искать в Malina',
          fillColor: AppColors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    );
  }
}
