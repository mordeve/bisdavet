import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/logic/main_controller.dart';
import 'package:visdavet/utils/colors.dart';
import 'package:visdavet/utils/constants.dart';
import 'package:visdavet/utils/routes.dart';

class LongToolbar extends StatelessWidget {
  const LongToolbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final MainController mainController = Get.find<MainController>();
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 30.0),
          ...List<Widget>.generate(
            Constants.sections.length,
            (index) {
              return sectionButton(
                Constants.sections.keys.toList()[index],
                Constants.sections.values.toList()[index],
                mainController.selectedRoute.value ==
                    Constants.sections.values.toList()[index],
              );
            },
          ),
          Obx(
            () => Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: SizedBox(
                width: 50.0,
                child: DropdownButton(
                  iconSize: 16,
                  elevation: 16,
                  underline: Container(
                    height: 2,
                    color: const Color(0xFF5d21d2),
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
                          fontSize: 16.0,
                          color: const Color(0xFF040222),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget sectionButton(String title, String route, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextButton(
        onPressed: () => Get.rootDelegate.offNamed(route),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 18.0,
            color: isSelected ? AppColors.kPurple : const Color(0xFF040222),
          ),
        ),
      ),
    );
  }
}
