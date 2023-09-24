import 'package:visdavet/utils/bindings.dart';
import 'package:visdavet/utils/constants.dart';
import 'package:visdavet/utils/routes.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  usePathUrlStrategy();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: Constants.webTitle,
      getPages: GetRoute.route,
      defaultTransition: Transition.noTransition,
      routerDelegate: AppRouterDelegate(),
      debugShowCheckedModeBanner: false,
      initialBinding: MainBinding(),
      fallbackLocale: const Locale("tr"),
      theme: ThemeData(primarySwatch: Colors.grey, fontFamily: 'Poppins'),
      themeMode: ThemeMode.dark,
    );
  }
}

class AppRouterDelegate extends GetDelegate {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onPopPage: (route, result) => route.didPop(result),
      pages: currentConfiguration != null
          ? [currentConfiguration!.currentPage!]
          : [GetNavConfig.fromRoute(MyRoute.main)!.currentPage!],
    );
  }
}
