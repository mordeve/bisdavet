import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/utils/constants.dart';
import 'package:visdavet/utils/routes.dart';
import 'package:visdavet/widgets/drawer_toolbar.dart';
import 'package:visdavet/widgets/long_toolbar.dart';

class CustomAppBarBasic extends StatefulWidget {
  final String title;
  final List<Color> gradientColors;

  const CustomAppBarBasic({
    super.key,
    required this.title,
    required this.gradientColors,
  });

  @override
  State<CustomAppBarBasic> createState() => CustomAppBarBasicState();
}

class CustomAppBarBasicState extends State<CustomAppBarBasic> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: 80,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 35,
                  child: IconButton(
                    onPressed: () {
                      Get.rootDelegate.toNamed(MyRoute.main);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF5d21d2),
                    ),
                  ),
                ),
                Text(
                  widget.title,
                  style: GoogleFonts.permanentMarker(
                    fontSize: 20.0,
                    color: const Color(0xFF5d21d2),
                  ),
                ),
                screenSize.width > Constants.maxScreenWidth
                    ? const LongToolbar()
                    : const DrawerToolbar(),
                if (screenSize.width > 1250) (const SizedBox(width: 200.0)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
