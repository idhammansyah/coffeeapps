import 'package:get/get.dart';
import 'package:menucoffeshop/app/modules/carts/bindings/carts_binding.dart';
import 'package:menucoffeshop/app/modules/carts/views/carts_view.dart';
import 'package:menucoffeshop/app/modules/login/bindings/login_binding.dart';
import 'package:menucoffeshop/app/modules/login/views/login_view.dart';
import 'package:menucoffeshop/app/modules/register/bindings/register_binding.dart';
import 'package:menucoffeshop/app/modules/register/views/register_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.CARTS,
      page: () => const CartsView(),
      binding: CartsBinding(),
    ),
  ];
}
