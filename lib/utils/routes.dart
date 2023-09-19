import 'package:visdavet/pages/about_page.dart';
import 'package:visdavet/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:visdavet/pages/services_page.dart';

abstract class MyRoute {
  static const String main = "/";
  static const String aboutPage = "/about";
  static const String servicesPage = "/services";
  static const String visionPage = "/vision";
  static const String contactPage = "/contact";
}

abstract class GetRoute {
  static final List<GetPage<dynamic>> route = [
    GetPage(
      name: MyRoute.main,
      page: () {
        return const HomePage();
      },
      transition: Transition.noTransition,
    ),
    GetPage(
      name: MyRoute.aboutPage,
      page: () {
        return const AboutPage();
      },
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: MyRoute.servicesPage,
      page: () {
        return const ServicesPage();
      },
      transition: Transition.downToUp,
      transitionDuration: const Duration(milliseconds: 300),
    ),
  ];
}
