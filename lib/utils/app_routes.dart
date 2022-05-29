import 'package:quran_app/ui/screens/selection/selection_screen.dart';
import 'package:quran_app/ui/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String initialRoute = "/splash";

  static List<GetPage> routes = [
    GetPage(name: "/splash", page: () => const SplashScreen()),
    GetPage(name: "/selection", page: () => const SelectionScreen()),
  ];
}
