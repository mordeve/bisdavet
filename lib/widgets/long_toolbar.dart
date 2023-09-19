import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/logic/main_controller.dart';
import 'package:visdavet/utils/routes.dart';

class LongToolbar extends StatelessWidget {
  const LongToolbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 30.0),
          TextButton(
            onPressed: () => Get.rootDelegate.offNamed(MyRoute.main),
            child: Text(
              "Anasayfa",
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                color: const Color(0xFF040222),
              ),
            ),
          ),
          const SizedBox(width: 24.0),
          TextButton(
            onPressed: () => Get.rootDelegate.offNamed(MyRoute.aboutPage),
            child: Text(
              "Hakkımızda",
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                color: const Color(0xFF040222),
              ),
            ),
          ),
          const SizedBox(width: 24.0),
          TextButton(
            onPressed: () => Get.rootDelegate.offNamed(MyRoute.servicesPage),
            child: Text(
              "Hizmetlerimiz",
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                color: const Color(0xFF040222),
              ),
            ),
          ),
          const SizedBox(width: 24.0),
          TextButton(
            onPressed: () => Get.rootDelegate.offNamed(MyRoute.visionPage),
            child: Text(
              "Vizyonumuz",
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                color: const Color(0xFF040222),
              ),
            ),
          ),
          const SizedBox(width: 24.0),
          TextButton(
            onPressed: () => Get.rootDelegate.offNamed(MyRoute.contactPage),
            child: Text(
              "İletişim",
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                color: const Color(0xFF040222),
              ),
            ),
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
}
