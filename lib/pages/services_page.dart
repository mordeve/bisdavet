import 'package:flutter/material.dart';
import 'package:visdavet/utils/colors.dart';

import 'package:visdavet/widgets/app_bar_2.dart';

import 'package:visdavet/widgets/custom_drawer.dart';
import 'package:visdavet/widgets/footer.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

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
              const CustomAppBarBasic(title: "Hizmetlerimiz", gradientColors: [
                Color(0xFFFBFAF5),
                Color(0xFFF3F3F2),
              ]),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla euismod, nisl eget ultricies ultrices, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Nulla euismod, nisl eget ultricies ultrices, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Nulla euismod, nisl eget ultricies ultrices, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Nulla euismod, nisl eget ultricies ultrices, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Nulla euismod, nisl eget ultricies ultrices, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Nulla euismod, nisl eget ultricies ultrices, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Nulla euismod, nisl eget ultricies ultrices, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl. Nulla euismod, nisl eget ultricies ultrices, nunc nisl ultricies nunc, eget ultricies nisl nisl eget nisl.",
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
