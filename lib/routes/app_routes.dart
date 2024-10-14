import 'package:djayz_booking_1/presentation/login_screen.dart';
import 'package:djayz_booking_1/presentation/main_menu.dart';
import 'package:djayz_booking_1/presentation/sign_up_page_client.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String mainMenuScreen = '/main_menu_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    signUpScreen: (context) => SignUpScreen(),
    mainMenuScreen: (context) => MainMenuScreen(),
  };
}
