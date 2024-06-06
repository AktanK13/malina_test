import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:malina/core/colors/app_colors.dart';
import 'package:malina/core/consts/app_consts.dart';
import 'package:malina/core/consts/app_icons.dart';
import 'package:malina/core/fonts/app_fonts.dart';
import 'package:malina/presentation/cart/widgets/cart_dropdown_menu.dart';
import 'package:malina/presentation/category/page/category_page.dart';
import 'package:malina/presentation/favorite/page/favorite_page.dart';
import 'package:malina/presentation/feed/page/feed_page.dart';
import 'package:malina/presentation/profile/page/profile_page.dart';
import 'package:malina/utils/helpers/navbar_settings.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int curretnIndex = 0;
  Settings settings = Settings();
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: AppConsts.initialTabCont);

  List<PersistentTabConfig> _tabs() => [
        PersistentTabConfig(
          screen: const FeedPage(),
          item: ItemConfig(
            icon: const Icon(AppIcons.feed_logo),
            title: "Лента",
            textStyle: AppFonts.s10w500,
            inactiveForegroundColor: AppColors.grayDisabled,
            activeForegroundColor: AppColors.malina,
          ),
        ),
        PersistentTabConfig(
          screen: const FavoritePage(),
          item: ItemConfig(
            icon: const Icon(AppIcons.favorite_logo),
            title: "Избранное",
            textStyle: AppFonts.s10w500,
            inactiveForegroundColor: AppColors.grayDisabled,
            activeForegroundColor: AppColors.malina,
          ),
        ),
        PersistentTabConfig(
          screen: const CategoryPage(),
          item: ItemConfig(
            icon: const Icon(
              AppIcons.category_logo,
              color: AppColors.white,
            ),
            textStyle: AppFonts.s10w500,
            inactiveForegroundColor: AppColors.grayDisabled,
            activeForegroundColor: AppColors.malina,
          ),
        ),
        PersistentTabConfig(
          screen: const ProfilePage(),
          item: ItemConfig(
            icon: const Icon(AppIcons.user_logo),
            title: "Профиль",
            textStyle: AppFonts.s10w500,
            inactiveForegroundColor: AppColors.grayDisabled,
            activeForegroundColor: AppColors.malina,
          ),
        ),
        PersistentTabConfig.noScreen(
          item: ItemConfig(
            icon: const CartDropdownMenu(),
            title: "Корзина",
            activeForegroundColor: Colors.blueAccent,
            inactiveForegroundColor: Colors.grey,
          ),
          onPressed: (context) {},
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      hideNavigationBar: settings.hideNavBar,
      navBarHeight: 70.h,
      tabs: _tabs(),
      navBarBuilder: (navBarConfig) => settings.navBarBuilder(
        navBarConfig,
        NavBarDecoration(
          color: settings.navBarColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        ),
        const ItemAnimation(),
        const NeumorphicProperties(),
      ),
    );
  }
}
