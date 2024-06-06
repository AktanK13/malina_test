import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:malina/core/colors/app_colors.dart';
import 'package:malina/core/fonts/app_fonts.dart';
import 'package:malina/presentation/home/widgets/sample_card.dart';
import 'package:malina/utils/helpers/sized_box_helper.dart';

class Soon extends StatelessWidget {
  const Soon({super.key, required this.soonList});
  final List<String> soonList;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        addVerticalSpace(30),
        Text(
          'Скоро в Malina',
          style: AppFonts.s17w500,
        ),
        addVerticalSpace(8),
        SizedBox(
          height: 90,
          width: double.infinity,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: soonList.length,
            separatorBuilder: (context, index) {
              return addHorizontalSpace(10);
            },
            itemBuilder: (BuildContext context, int index) {
              return SampleCard(
                height: 100,
                width: 100,
                color: AppColors.sky,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                  child: Column(
                    children: [
                      const Spacer(),
                      Text(
                        soonList[index],
                        style: AppFonts.s12w400,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
