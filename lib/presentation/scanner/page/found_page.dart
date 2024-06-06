import 'package:flutter/material.dart';
import 'package:malina/core/colors/app_colors.dart';
import 'package:malina/core/fonts/app_fonts.dart';
import 'package:malina/core/routes/routes_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class FoundPage extends StatelessWidget {
  final String code;

  const FoundPage({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(code);
    Future<void> onPressed() async {
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              AppRouteConstants.ROOT,
              (r) => false,
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Scanned QrCode'),
      ),
      body: Center(
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            code,
            style: AppFonts.s18w400.copyWith(color: AppColors.blue),
          ),
        ),
      ),
    );
  }
}
