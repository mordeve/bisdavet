import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/utils/colors.dart';
import 'package:visdavet/utils/constants.dart';
import 'package:visdavet/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:visdavet/widgets/custom_drawer.dart';
import 'package:visdavet/widgets/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final textFontSizeHeader2 = screenSize.width >= 400 ? 24.0 : 20.0;

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
                  child: SizedBox(
                    width: 700,
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
                            Constants.mainText3,
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
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: SizedBox(
                    width: 700,
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
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 79, 129, 82), // Light green
                      Color.fromARGB(255, 76, 169, 79), // Light green
                      Color(0xFF4CAF50), // Green
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: SizedBox(
                        width: 700,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              Constants.treeText1,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: AppColors.kTextWhite,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              softWrap: true,
                            ),
                            const SizedBox(height: 10),
                            // a richtext widget to display multiple text styles
                            RichText(
                              text: TextSpan(
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: AppColors.kTextWhite,
                                ),
                                children: <TextSpan>[
                                  const TextSpan(
                                    text: Constants.treeText2,
                                  ),
                                  TextSpan(
                                    text: Constants.treeText3,
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: Constants.treeText4,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              Constants.treeText5,
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: AppColors.kTextWhite,
                              ),
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
