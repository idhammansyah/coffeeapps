part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const REGISTER = _Paths.REGISTER;
  static const LOGIN = _Paths.LOGIN;
  static const CARTS = _Paths.CARTS;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const REGISTER = '/register';
  static const LOGIN = '/login';
  static const CARTS = '/carts';
}
