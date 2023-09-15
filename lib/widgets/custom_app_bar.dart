import 'package:visdavet/logic/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/utils/constants.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  final List<Color> gradientColors;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.gradientColors,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: 500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.gradientColors,
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
                Text(
                  widget.title,
                  style: GoogleFonts.permanentMarker(
                    fontSize: 20.0,
                    color: const Color(0xFF5d21d2),
                  ),
                ),
                screenSize.width > Constants.maxScreenWidth
                    ? longToolBar()
                    : drawerToolBar(),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5 > 500
                      ? 500
                      : MediaQuery.of(context).size.width / 1.5,
                  height: 180,
                  child: Text(
                    Constants.slogan,
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
                const EdgeInsets.symmetric(horizontal: 50.0, vertical: 4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2 > 500
                      ? 500
                      : MediaQuery.of(context).size.width / 1.2,
                  height: 50,
                  child: Text(
                    Constants.mainText1,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      color: const Color(0xFF040222),
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2 > 500
                        ? 500
                        : MediaQuery.of(context).size.width / 1.2,
                    height: 150,
                    child: Text(
                      Constants.mainText2,
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        color: const Color(0xFF040222),
                        fontWeight: FontWeight.w300,
                      ),
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget longToolBar() {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
            "Hizmetlerimiz",
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
            "İletişim",
            style: GoogleFonts.poppins(
              fontSize: 18.0,
              color: const Color(0xFF040222),
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

  Widget drawerToolBar() {
    return IconButton(
      icon: const Icon(
        Icons.menu,
        color: Color(0xFF5d21d2),
      ),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
