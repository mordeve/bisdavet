import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/utils/colors.dart';
import 'package:visdavet/utils/constants.dart';

import 'package:visdavet/widgets/app_bar_2.dart';

import 'package:visdavet/widgets/custom_drawer.dart';
import 'package:visdavet/widgets/footer.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double kTextSize = 18;
    return Scaffold(
      bottomNavigationBar: const Footer(),
      drawer: const CustomDrawer(),
      backgroundColor: Colors.white70,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const CustomAppBarBasic(title: "Iletisim", gradientColors: [
                Color(0xFFFBFAF5),
                Color(0xFFF3F3F2),
              ]),
              Container(
                height: 300,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/d5.png"),
                    fit: BoxFit.cover,
                    opacity: 0.9,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFBFAF5),
                      Color(0xFFF3F3F2),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 300,
                    child: Text("YAZI"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
