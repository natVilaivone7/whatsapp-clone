
import 'package:flutter/material.dart';
import 'package:whatsapp/common/utills/coloors.dart';

class Privacyandterm extends StatelessWidget {
  const Privacyandterm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 20, vertical: 30),
      child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
              style: TextStyle(height: 1.5, fontSize: 17,color: Coloors.greyDark),
              text: "Read Our" ,
              children: [
                TextSpan(
                    text: "Privacy Policy ",
                    style: TextStyle(color: Color(0xff53bdeb))),
                TextSpan(
                    text:
                        "Tap 'Agree And Continue to acept the ", style: TextStyle(color: Coloors.greyDark)),
                TextSpan(
                    text: "Terms of Services.",
                    style: TextStyle(color: Color(0xff53bdeb))),
              ])),
    );
  }
}
