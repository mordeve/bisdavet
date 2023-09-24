import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(241, 185, 255, 0.1),
          Color.fromRGBO(241, 185, 255, 0.01),
          Color.fromRGBO(183, 194, 255, 0.1),
          Color.fromRGBO(247, 244, 253, 0.5),
          Color(0xFFF7F4FD),
        ])),
        child: const Text(
          "2023 © VisDavet. Tüm hakları saklıdır.",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
