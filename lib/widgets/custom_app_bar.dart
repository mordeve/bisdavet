import 'package:visdavet/logic/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/utils/constants.dart';
import 'package:visdavet/utils/routes.dart';
import 'package:visdavet/widgets/drawer_toolbar.dart';
import 'package:visdavet/widgets/long_toolbar.dart';

class CustomAppBar extends StatefulWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final textFontSizeHeader = screenSize.width >= 400 ? 34.0 : 26.0;
    final textFontSizeMain = screenSize.width >= 400 ? 18.0 : 16.0;
    return Container(
      height: 500,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(
              "https://marketplace.canva.com/EAFCytpuJ08/1/0/1600w/canva-green-wateroclor-leaf-linktree-background-0Mp0WYk6_8E.jpg"),
          fit: BoxFit.cover,
          opacity: 0.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150 + 35,
                  child: Text(
                    widget.title,
                    style: GoogleFonts.permanentMarker(
                      fontSize: 20.0,
                      color: const Color(0xFF5d21d2),
                    ),
                  ),
                ),
                screenSize.width > Constants.maxScreenWidth
                    ? const LongToolbar()
                    : const DrawerToolbar(),
                if (screenSize.width > 1250) (const SizedBox(width: 200.0)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 20, right: 10, bottom: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5 > 500
                      ? 500
                      : MediaQuery.of(context).size.width / 1.5,
                  height: 170,
                  child: Text(
                    Constants.slogan,
                    style: TextStyle(
                      fontSize: textFontSizeHeader,
                      color: const Color(0xFF040222),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 4.0, bottom: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: screenSize.width / 1.2 > 500
                      ? 500
                      : screenSize.width / 1.2,
                  height: 50,
                  child: Text(
                    Constants.mainText1,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: textFontSizeMain,
                      color: const Color(0xFF040222),
                      fontWeight: FontWeight.w500,
                    ),
                    softWrap: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 12.0,
                    bottom: 4.0,
                  ),
                  child: SizedBox(
                    width: screenSize.width / 1.2 > 500
                        ? 500
                        : screenSize.width / 1.2,
                    height: 150,
                    child: Text(
                      Constants.mainText2,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: textFontSizeMain - 1,
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
}
