import 'package:flutter/material.dart';
import 'package:visdavet/utils/colors.dart';

import 'package:visdavet/widgets/app_bar_2.dart';

import 'package:visdavet/widgets/custom_drawer.dart';
import 'package:visdavet/widgets/footer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      backgroundColor: Colors.white70,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBarBasic(title: "Hakkımızda", gradientColors: [
                Color(0xFFFBFAF5),
                Color(0xFFF3F3F2),
              ]),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  "VİSDAVET, sadece davetiye masrafından kurtulma fırsatı sunmakla kalmıyor, aynı zamanda doğaya katkı sağlamak ve gelecek nesillere daha yeşil bir hayat vermek amacıyla kurulmuş bir davetiye şirketidir. 2020 yılında, çevremize duyarlılığımızı ve sürdürülebilir bir geleceği destekleme misyonumuzu gerçekleştirmek üzere yola çıktık.",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.kTextPrimary,
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
