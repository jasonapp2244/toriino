import 'package:get/get.dart';
import 'package:getxmvvm/resources/routes/routes_name.dart';
import 'package:getxmvvm/view/home_view.dart';
import 'package:getxmvvm/view/login_view.dart';
import 'package:getxmvvm/view/role_selector_view.dart';
import 'package:getxmvvm/view/sign_up_view.dart';
import 'package:getxmvvm/view/splash_view.dart';

class AppRoutes {
  static appRoutes() => [
    GetPage(
      name: RoutesName.splashview,
      page: () => SplashView(),
      transitionDuration: const Duration(milliseconds: 200),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: RoutesName.loginview,
      page: () => Loginview(),
      transitionDuration: const Duration(milliseconds: 200),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: RoutesName.role,
      page: () => RoleSelectionScreen(),
      transitionDuration: const Duration(milliseconds: 200),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: RoutesName.signup,
      page: () => Sginupview(),
      transitionDuration: const Duration(milliseconds: 200),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: RoutesName.homeview,
      page: () => HomeView(),
      transitionDuration: const Duration(milliseconds: 200),
      transition: Transition.rightToLeft,
    ),
  ];
}
