import 'package:flutter/material.dart';
import 'package:visdavet/utils/utils.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromRGBO(241, 185, 255, 0.1),
          Color.fromRGBO(241, 185, 255, 0.01),
          Color.fromRGBO(183, 194, 255, 0.1),
          Color.fromRGBO(247, 244, 253, 0.5),
          Color(0xFFF7F4FD),
        ])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 24.0, right: 4.0),
              child: Text(
                "2023 © VisDavet. Tüm hakları saklıdır.",
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      launchInstagram("visdavet");
                    },
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/2048px-Instagram_logo_2016.svg.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(width: 4.0),
                  // InkWell(
                  //   onTap: () {
                  //     // launchYoutube("visdavet");
                  //   },
                  //   child: Container(
                  //     width: 25.60 * 1.1,
                  //     height: 17.71 * 1.1,
                  //     decoration: const BoxDecoration(
                  //       image: DecorationImage(
                  //         image: NetworkImage(
                  //             "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/2560px-YouTube_full-color_icon_%282017%29.svg.png"),
                  //         fit: BoxFit.cover,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
