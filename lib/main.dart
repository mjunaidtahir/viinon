import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:viinon/screens/utils/app_theme.dart';
import 'package:viinon/widgets/splash_screen.dart';

void main() {
  runApp(const ViinonApp());
}

class ViinonApp extends StatelessWidget {
  const ViinonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes().selectLightTheme(),
      home: const SplashScreen(),
    );
  }
}
