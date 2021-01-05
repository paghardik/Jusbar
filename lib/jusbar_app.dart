import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jusbar/presentation/splash/jusbar_app.dart';
import 'package:jusbar/presentation/themes/themes_text.dart';

class JusBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'JusBar',
      theme: ThemeData(
          textTheme: ThemeText.getTextTheme(),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white),
      home: SplashScreen(),
    );
  }
}
