import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/logic/main_controller.dart';
import 'package:visdavet/utils/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    fontSize: 20.0,
                    color: const Color(0xFF5d21d2),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Hakkımızda',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.kTextPrimary,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Hizmetlerimiz',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.kTextPrimary,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Vizyonumuz',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.kTextPrimary,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'İletişim',
              style: TextStyle(
                fontSize: 18,
                color: AppColors.kTextPrimary,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
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
}
