import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/resources/colors/app_colors.dart';
import 'package:getxmvvm/resources/getx_localization/language.dart';
import 'package:getxmvvm/resources/routes/routes.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColor.red,
          selectionColor: AppColor.red.withValues(
            alpha: 0.5,
          ), // Changed from withValues to withOpacity
          selectionHandleColor: AppColor.red,
        ),
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: AppColor.red),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      translations:Language(),
      ///urdu language
      // locale: Locale('ur','PK'),
      locale: Locale('en','US'),
      fallbackLocale: Locale('en','US'),
      // home: 
      // RoleSelectionScreen(),
      getPages: AppRoutes.appRoutes()

      
    );
  }
}
