import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:upputo/core/values/constants.dart';
import 'package:upputo/modules/home/home.dart';
import 'package:upputo/root_binding.dart';
import 'package:upputo/routes/routes.dart';

import 'core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constants.appName,
      initialRoute: '/',
      getPages: Routes.routes,
      initialBinding: RootBinding(),
      theme: lightThemeData,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
