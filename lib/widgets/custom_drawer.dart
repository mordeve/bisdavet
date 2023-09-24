import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/logic/main_controller.dart';
import 'package:visdavet/utils/colors.dart';
import 'package:visdavet/utils/constants.dart';
import 'package:visdavet/utils/utils.dart';

import '../utils/routes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MainController mainController = Get.find<MainController>();

    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      elevation: 4,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(241, 185, 255, 0.1),
                  Color.fromRGBO(241, 185, 255, 0.01),
                  Color.fromRGBO(183, 194, 255, 0.1),
                  Color.fromRGBO(247, 244, 253, 0.5),
                  Color(0xFFF7F4FD),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'VisDavet',
                  style: GoogleFonts.permanentMarker(
                    fontSize: 24.0,
                    color: const Color(0xFF5d21d2),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          ...List<Widget>.generate(
            Constants.sections.length,
            (index) {
              return sectionItem(
                Constants.sections.keys.toList()[index],
                Constants.sections.values.toList()[index],
                mainController.selectedRoute.value ==
                    Constants.sections.values.toList()[index],
              );
            },
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    launchInstagram("visdavet");
                  },
                  child: Container(
                    width: 26,
                    height: 26,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/2048px-Instagram_logo_2016.svg.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                InkWell(
                  onTap: () {
                    // launchYoutube("visdavet");
                  },
                  child: Container(
                    width: 25.60 * 1.3,
                    height: 17.71 * 1.3,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 16.0),
                  child: SizedBox(
                    width: 50.0,
                    child: DropdownButton(
                      iconSize: 16,
                      elevation: 16,
                      underline: Container(
                        height: 2,
                        color: AppColors.kPurple,
                      ),
                      value: Get.find<MainController>().selectedLanguage.value,
                      onChanged: (String? newValue) {
                        Get.find<MainController>().changeLanguage(newValue!);
                      },
                      items: <String>['TR', 'EN']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: GoogleFonts.poppins(
                              fontSize: 14.0,
                              color: const Color(0xFF040222),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  ListTile sectionItem(String title, String route, bool isSelected) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: isSelected ? AppColors.kPurple : AppColors.kTextPrimary,
        ),
      ),
      onTap: () {
        Get.rootDelegate.offNamed(route);
      },
    );
  }
}
