import 'package:get/get.dart';
import 'package:menucoffeshop/app/routes/app_pages.dart';

class CartsController extends GetxController {
  void loginPage() {
    Get.toNamed(Routes.LOGIN);
  }

  void changeIndex(int index) {
    update(); // Memperbarui UI
    Get.toNamed(Routes.LOGIN);
  }
}
