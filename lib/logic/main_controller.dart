import 'package:get/get.dart';

class MainController extends GetxController {
  var selectedLanguage = "TR".obs;
  var selectedRoute = "/".obs;

  void changeLanguage(String language) {
    selectedLanguage.value = language;
  }

  void changeRoute(String route) {
    selectedRoute.value = route;
  }
}
