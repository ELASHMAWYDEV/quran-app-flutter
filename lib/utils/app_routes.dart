// ignore_for_file: prefer_const_constructors

import 'package:quran_app/ui/screens/both/both_screen.dart';
import 'package:quran_app/ui/screens/selection/selection_screen.dart';
import 'package:quran_app/ui/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String initialRoute = "/splash";

  static List<GetPage> routes = [
    GetPage(name: "/splash", page: () => SplashScreen()),
    GetPage(name: "/selection", page: () => SelectionScreen()),
    GetPage(name: "/both", page: () => BothScreen()),
  ];
}
