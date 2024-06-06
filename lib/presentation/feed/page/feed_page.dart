import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:malina/core/colors/app_colors.dart';
import 'package:malina/core/fonts/app_fonts.dart';
import 'package:malina/core/images/app_images.dart';
import 'package:malina/core/mock/mock.dart';
import 'package:malina/presentation/home/widgets/sample_card.dart';
import 'package:malina/presentation/home/widgets/search_textfield.dart';
import 'package:malina/presentation/home/widgets/soon.dart';
import 'package:malina/presentation/scanner/page/scanner_page.dart';
import 'package:malina/utils/helpers/sized_box_helper.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        toolbarHeight: 12,
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SearchTextfield(),
              addVerticalSpace(20),
              InkWell(
                onTap: () => _dialogBuilder(context),
                child: SampleCard(
                  height: 90.h,
                  color: AppColors.malina,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 11.h, horizontal: 16.w),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppSvg.scanerLogo),
                        addHorizontalSpace(17),
                        Flexible(
                          child: Text(
                            'Сканируй QR-код и заказывай прямо в заведении',
                            style: AppFonts.s16w500.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              addVerticalSpace(20),
              SampleCard(
                height: 170.h,
                image: AppImages.footBanner,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 18.h, horizontal: 16.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Еда',
                        style: AppFonts.s22w600,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Text(
                          'Из кафе и ресторанов',
                          style: AppFonts.s16w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              addVerticalSpace(20),
              SampleCard(
                height: 170.h,
                image: AppImages.beautyBanner,
                color: AppColors.pink,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 18.h, horizontal: 16.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Бьюти',
                        style: AppFonts.s22w600,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Text(
                          'Салоны красоты и товары',
                          style: AppFonts.s16w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Soon(soonList: soon),
              addVerticalSpace(80)
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return const Dialog.fullscreen(
          child: ScannerPage(),
        );
      },
    );
  }
}
