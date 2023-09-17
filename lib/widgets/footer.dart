import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   width: double.infinity,
        //   color: Colors.black45,
        //   padding: const EdgeInsets.symmetric(vertical: 20),
        //   child: Column(
        //     mainAxisSize: MainAxisSize.max,
        //     children: const [
        //       Text(
        //         'İletişim Bilgileri',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 20,
        //         ),
        //       ),
        //       SizedBox(height: 10),
        //       Text(
        //         'Adres: İstanbul, Türkiye',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 16,
        //         ),
        //       ),
        //       Text(
        //         'E-posta: info@visdavet.com',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 16,
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        Container(
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
          child: const Center(
              child: Text("2023 © VisDavet. Tüm hakları saklıdır.")),
        )
      ],
    );
  }
}
