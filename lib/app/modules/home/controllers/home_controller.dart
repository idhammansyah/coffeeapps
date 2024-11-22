import 'package:get/get.dart';
import 'package:menucoffeshop/app/routes/app_pages.dart';

class HomeController extends GetxController {
  var currentIndex = 0;

  void registerPage() {
    Get.toNamed(Routes.REGISTER);
  }

  void changeIndex(int index) {
    currentIndex = index;
    update(); // Memperbarui UI
    Get.toNamed(Routes.REGISTER);
  }
}
