import 'package:bisdavet/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          const CustomAppBar(title: "BiSDavet", gradientColors: [
            Color.fromRGBO(241, 185, 255, 0.1),
            Color.fromRGBO(241, 185, 255, 0.01),
            Color.fromRGBO(183, 194, 255, 0.1),
            Color.fromRGBO(247, 244, 253, 0.5),
            Color(0xFFF7F4FD),
          ]),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                SizedBox(height: 20),
                Text(
                  'Modern Davetiye Sistemi',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Davetiyenizi oluşturun ve paylaşın.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Davetlileriniz davetiyenizi görüntüleyebilir ve yanıtlayabilir.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
