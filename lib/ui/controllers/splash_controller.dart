import 'package:quran_app/utils/services/storage_service.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    Get.find<StorageService>()
        .triggerOnce(StorageKeys.hasSeenSplashScreens)
        .then((value) =>
            Future.delayed(const Duration(milliseconds: 5000), () async {
              Get.offAndToNamed("/selection");
            }))
        .catchError(
            (e) => Future.delayed(const Duration(milliseconds: 1500), () async {
                  Get.offAndToNamed("/selection");
                }));

    // Get.snackbar("لا يوجد اتصال بالانترنت",
    //     "تحقق من اتصالك بالانترنت وافتح التطبيق مرة أخري");
  }
}
