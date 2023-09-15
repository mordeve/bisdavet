import 'package:get/get.dart';

class MainController extends GetxController {
  var selectedLanguage = "TR".obs;

  void changeLanguage(String language) {
    selectedLanguage.value = language;
  }
}
