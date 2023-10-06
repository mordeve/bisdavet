import 'package:get/get.dart';
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
      bottomNavigationBar: const Footer(),
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
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColors.kTextPrimary,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              softWrap: true,
                            ),
                            const SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.kTextPrimary,
                                  fontWeight: FontWeight.w500,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: Constants.treeText2,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: AppColors.kTextPrimary,
                                    ),
                                  ),
                                  TextSpan(
                                    text: Constants.treeText3,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: AppColors.kTextPrimary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: Constants.treeText4,
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: AppColors.kTextPrimary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              Constants.treeText5,
                              style: TextStyle(
                                fontSize: 18,
                                color: AppColors.kTextPrimary,
                                fontWeight: FontWeight.normal,
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
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://marketplace.canva.com/EAFCytpuJ08/1/0/1600w/canva-green-wateroclor-leaf-linktree-background-0Mp0WYk6_8E.jpg",
                    ),
                    fit: BoxFit.cover,
                    opacity: 0.4,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
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
                                style: TextStyle(
                                  fontSize: textFontSizeHeader2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Text(
                                  Constants.mainText3,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.kTextPrimary,
                                    fontWeight: FontWeight.normal,
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
                                style: TextStyle(
                                  fontSize: textFontSizeHeader2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      Constants.mainText5,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.kTextPrimary,
                                      ),
                                    ),
                                    Text(
                                      Constants.mainText6,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: AppColors.kTextPrimary,
                                      ),
                                    ),
                                    Text(
                                      Constants.mainText7,
                                      style: TextStyle(
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
                            elevation: 0,
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
                              fontSize: kTextSize - 2,
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
                            style: TextStyle(
                              fontSize: kTextSize + 2,
                              color: AppColors.kTextPrimary,
                            ),
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
                            style: TextStyle(
                              fontSize: kTextSize + 2,
                              color: AppColors.kTextPrimary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Daha fazla bilgi almak için hemen bizimle iletişime geçin
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.8,
                          child: Text(
                            Constants.sloganText4,
                            style: TextStyle(
                              fontSize: kTextSize,
                              color: AppColors.kTextPrimary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
