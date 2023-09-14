import 'package:bisdavet/logic/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final List<Color> gradientColors;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 568,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.permanentMarker(
                        fontSize: 20.0,
                        color: const Color(0xFF5d21d2),
                      ),
                    ),
                    const SizedBox(width: 30.0),
                    Text(
                      "Hakkımızda",
                      style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        color: const Color(0xFF040222),
                      ),
                    ),
                    const SizedBox(width: 24.0),
                    Text(
                      "Vizyonumuz",
                      style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        color: const Color(0xFF040222),
                      ),
                    ),
                    const SizedBox(width: 24.0),
                    Text(
                      "Misyonumuz",
                      style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        color: const Color(0xFF040222),
                      ),
                    ),
                    const SizedBox(width: 24.0),
                    Text(
                      "İletişim",
                      style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        color: const Color(0xFF040222),
                      ),
                    ),
                  ],
                ),
                Obx(
                  () => SizedBox(
                    width: 50.0,
                    child: DropdownButton(
                      iconSize: 20,
                      elevation: 16,
                      underline: Container(
                        height: 2,
                        color: const Color(0xFF5d21d2),
                      ),
                      value: Get.find<MainController>().selectedLanguage.value,
                      onChanged: (String? newValue) {
                        Get.find<MainController>().selectedLanguage.value =
                            newValue!;
                        print(Get.find<MainController>().selectedLanguage);
                      },
                      items: <String>['TR', 'EN']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: GoogleFonts.poppins(
                              fontSize: 18.0,
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
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 > 500
                      ? 500
                      : MediaQuery.of(context).size.width / 2,
                  height: 100,
                  child: Text(
                    'Lorem ipsum Dolor sit amet',
                    style: GoogleFonts.poppins(
                      fontSize: 36.0,
                      color: const Color(0xFF040222),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5 > 500
                      ? 500
                      : MediaQuery.of(context).size.width / 1.5,
                  height: 150,
                  child: Text(
                    'Lorem ipsum Dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      color: const Color(0xFF040222),
                    ),
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
