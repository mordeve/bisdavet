import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:visdavet/utils/colors.dart';
import 'package:visdavet/utils/constants.dart';
import 'package:visdavet/utils/utils.dart';
import 'package:visdavet/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:visdavet/widgets/custom_drawer.dart';
import 'package:visdavet/widgets/footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final textFontSizeHeader2 = screenSize.width >= 400 ? 24.0 : 20.0;
    const double kTextSize = 18;

    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: Colors.white70,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(
                title: "VisDavet",
              ),
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFBFAF5),
                      Color(0xFFF3F3F2),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                  color: Colors.white,
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
                                color: AppColors.kTextPrimary,
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
                                  color: AppColors.kTextPrimary,
                                ),
                                children: <TextSpan>[
                                  const TextSpan(
                                    text: Constants.treeText2,
                                  ),
                                  TextSpan(
                                    text: Constants.treeText3,
                                    style: GoogleFonts.poppins(
                                      fontSize: 16,
                                      color: AppColors.kTextPrimary,
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
                                color: AppColors.kTextPrimary,
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
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.rootDelegate.toNamed("/services");
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      backgroundColor: AppColors.mainColor2,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      "Hizmetlerimiz ve Servislerimiz Hakkında Daha Fazla Bilgi Almak İçin Tıklayın",
                      style: TextStyle(
                        fontSize: kTextSize,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenSize.width * 0.8,
                    child: Text(
                      Constants.sloganText2,
                      style: GoogleFonts.poppins(
                        fontSize: kTextSize + 2,
                        color: AppColors.kTextPrimary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: screenSize.width * 0.8,
                    child: Text(
                      Constants.sloganText3,
                      style: GoogleFonts.poppins(
                        fontSize: kTextSize + 2,
                        color: AppColors.kTextPrimary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // add our social media links
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      launchInstagram("visdavet");
                    },
                    child: Container(
                      width: 28,
                      height: 28,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/2048px-Instagram_logo_2016.svg.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  InkWell(
                    onTap: () {
                      // launchYoutube("visdavet");
                    },
                    child: Container(
                      width: 25.60 * 1.5,
                      height: 17.71 * 1.5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
