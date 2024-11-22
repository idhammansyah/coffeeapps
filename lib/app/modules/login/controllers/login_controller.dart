import 'package:get/get.dart';
import 'package:menucoffeshop/app/routes/app_pages.dart';

class LoginController extends GetxController {
  void registerPage() {
    Get.toNamed(Routes.REGISTER);
  }

  void changeIndex(int index) {
    update(); // Memperbarui UI
    Get.toNamed(Routes.LOGIN);
  }
}
