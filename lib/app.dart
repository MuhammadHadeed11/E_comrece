import 'package:ecommernce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'features/authentication/screens/onboarding/onboarding.dart';

/// App Class That we run in the main
class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      ///Theme Mode and set theme using TAppTheme Class
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

       ///Create OnBoarding Screens in the Onboarding() Class
       home: const Onboarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}