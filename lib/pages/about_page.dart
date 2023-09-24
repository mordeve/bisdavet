import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/utils/colors.dart';
import 'package:visdavet/utils/constants.dart';

import 'package:visdavet/widgets/app_bar_2.dart';

import 'package:visdavet/widgets/custom_drawer.dart';
import 'package:visdavet/widgets/footer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

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
              const CustomAppBarBasic(title: "Hakkımızda", gradientColors: [
                Color(0xFFFBFAF5),
                Color(0xFFF3F3F2),
              ]),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/free-vector/square-gold-frame-with-foliage-pattern-background-vector_53876-109054.jpg?w=2000"),
                    fit: BoxFit.cover,
                    opacity: 0.2,
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
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                              Constants.aboutText1,
                              style: TextStyle(
                                fontSize: kTextSize + 4,
                                color: AppColors.kTextPrimary,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        Constants.aboutText2,
                        style: TextStyle(
                          fontSize: kTextSize,
                          color: AppColors.kTextPrimary,
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: Constants.aboutText3,
                              style: TextStyle(
                                fontSize: kTextSize,
                                color: AppColors.kTextPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: Constants.aboutText4,
                              style: TextStyle(
                                fontSize: kTextSize,
                                color: AppColors.kTextPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: Constants.aboutText5,
                              style: TextStyle(
                                fontSize: kTextSize,
                                color: AppColors.kTextPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: Constants.aboutText6,
                              style: TextStyle(
                                fontSize: kTextSize,
                                color: AppColors.kTextPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: Constants.aboutText7,
                              style: TextStyle(
                                fontSize: kTextSize,
                                color: AppColors.kTextPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: Constants.aboutText8,
                              style: TextStyle(
                                fontSize: kTextSize,
                                color: AppColors.kTextPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: Constants.aboutText9,
                              style: TextStyle(
                                fontSize: kTextSize,
                                color: AppColors.kTextPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "\n\n",
                              style: TextStyle(
                                fontSize: kTextSize,
                                color: AppColors.kTextPrimary,
                              ),
                            ),
                            TextSpan(
                              text: Constants.aboutText10,
                              style: TextStyle(
                                fontSize: kTextSize,
                                color: AppColors.kTextPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
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
