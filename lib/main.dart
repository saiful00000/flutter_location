import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_location/pages/home_page/home_page.dart';
import 'package:get/get.dart';

import 'resources/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: AppColors.primaryColor,
        accentColor: AppColors.primaryAccent,
        scaffoldBackgroundColor: AppColors.scaffoldBackGroundColor,
        cardColor: AppColors.cardColor,
        focusColor: AppColors.primaryColor,
      ),
      home: HomePage(),
    );
  }
}
