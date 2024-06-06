import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:malina/core/routes/routes_constants.dart';
import 'package:malina/presentation/cart/page/cosmetic_cart_page.dart';
import 'package:malina/presentation/cart/page/food_cart_page.dart';
import 'package:malina/presentation/home/page/home_page.dart';
import 'package:malina/presentation/scanner/page/scanner_page.dart';
import 'package:malina/utils/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Malina',
          debugShowCheckedModeBanner: false,
          theme: context.watch<ThemeProvider>().themeData,
          initialRoute: AppRouteConstants.ROOT,
          routes: {
            AppRouteConstants.ROOT: (context) => const HomePage(),
            AppRouteConstants.SCANNER: (context) => const ScannerPage(),
            AppRouteConstants.CART_FOOD: (context) => const FoodCartPage(),
            AppRouteConstants.CART_COSMETIC: (context) =>
                const CosmeticCartPage(),
          },
        );
      },
    );
  }
}
