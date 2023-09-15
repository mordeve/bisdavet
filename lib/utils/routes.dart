import 'package:visdavet/pages/home_page.dart';
import 'package:get/get.dart';

abstract class MyRoute {
  static const String main = "/";
  static const String weddingPage = "/dugun";
  static const String photoPage = "/photo";
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
  ];
}
