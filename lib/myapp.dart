import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hospital_booking/features/authentications/screens/login/login_screen.dart';
import 'package:hospital_booking/utils/constants/colors.dart';
import 'package:hospital_booking/utils/theme/theme.dart';
import 'bindings/general_bindings.dart';


/// -- Use This Class To Setup Themes , initialize Binding , any Animations and much more ---------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const LoginScreen(),
      //initialBinding:GeneralBindings() ,
      //home: const Scaffold(backgroundColor: TColors.primary,body: Center(child: CircularProgressIndicator(color: TColors.white,),),),
    );
  }
}