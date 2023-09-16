import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/utils/colors.dart';
import 'package:visdavet/utils/constants.dart';
import 'package:visdavet/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:visdavet/widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final textFontSizeHeader2 = screenSize.width >= 400 ? 24.0 : 18.0;

    return Scaffold(
      backgroundColor: Colors.white70,
      drawer: const CustomDrawer(),
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(title: "VisDavet", gradientColors: [
                Color.fromRGBO(241, 185, 255, 0.1),
                Color.fromRGBO(241, 185, 255, 0.01),
                Color.fromRGBO(183, 194, 255, 0.1),
                Color.fromRGBO(247, 244, 253, 0.5),
                Color(0xFFF7F4FD),
              ]),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Text(
                        'Neden Biz?',
                        style: GoogleFonts.poppins(
                          fontSize: textFontSizeHeader2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          Constants.mainText2,
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: AppColors.kTextPrimary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 20),
                      Text(
                        'Neler Sunuyoruz?',
                        style: GoogleFonts.poppins(
                          fontSize: textFontSizeHeader2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              Constants.mainText5,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: AppColors.kTextPrimary,
                              ),
                            ),
                            Text(
                              Constants.mainText6,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: AppColors.kTextPrimary,
                              ),
                            ),
                            Text(
                              Constants.mainText7,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: AppColors.kTextPrimary,
                              ),
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
