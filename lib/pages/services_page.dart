import 'package:flutter/material.dart';
import 'package:visdavet/utils/colors.dart';
import 'package:visdavet/utils/constants.dart';

import 'package:visdavet/widgets/app_bar_2.dart';

import 'package:visdavet/widgets/custom_drawer.dart';
import 'package:visdavet/widgets/footer.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double kTextSize = 20;

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
              const CustomAppBarBasic(title: "Hizmetlerimiz", gradientColors: [
                Color(0xFFFBFAF5),
                Color(0xFFF3F3F2),
              ]),
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/bg1.png",
                    ),
                    fit: BoxFit.cover,
                    opacity: 0.3,
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
                              Constants.servicesText1,
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
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: Constants.servicesText2,
                            style: TextStyle(
                              fontSize: kTextSize,
                              color: AppColors.kTextPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      RichText(
                        textAlign: TextAlign.start,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: Constants.servicesText3,
                              style: TextStyle(
                                fontSize: kTextSize,
                                color: AppColors.kTextPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: Constants.servicesText4,
                            style: TextStyle(
                              fontSize: kTextSize,
                              color: AppColors.kTextPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: Constants.servicesText5,
                          style: TextStyle(
                            fontSize: kTextSize,
                            color: AppColors.kTextPrimary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: Constants.servicesText6,
                            style: TextStyle(
                              fontSize: kTextSize,
                              color: AppColors.kTextPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: Constants.servicesText7,
                          style: TextStyle(
                            fontSize: kTextSize,
                            color: AppColors.kTextPrimary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: Constants.servicesText8,
                            style: TextStyle(
                              fontSize: kTextSize,
                              color: AppColors.kTextPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: Constants.servicesText9,
                          style: TextStyle(
                            fontSize: kTextSize,
                            color: AppColors.kTextPrimary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            text: Constants.servicesText10,
                            style: TextStyle(
                              fontSize: kTextSize,
                              color: AppColors.kTextPrimary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: Constants.servicesText11,
                          style: TextStyle(
                            fontSize: kTextSize,
                            color: AppColors.kTextPrimary,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                              Constants.servicesText12,
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
                      Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: Constants.servicesText13,
                            style: TextStyle(
                              fontSize: kTextSize - 4,
                              color: AppColors.kTextPrimary,
                            ),
                          ),
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
