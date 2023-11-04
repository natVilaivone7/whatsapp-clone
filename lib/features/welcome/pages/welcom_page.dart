import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/hepler/fuction_repos.dart';
import '../../../common/widgets/custom_elevate_button.dart';
import '../widgets/privavy_and_term.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // backgroundColor: Coloors.backgroundDark,
          body: Column(
        children: [
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Image(
                image: const AssetImage(
                  "images/circle.png",
                ),
                color: context.theme.circleImageColor,
              ),
            ),
          )),
          Expanded(
              child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Wellcone to WhatsApp",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Privacyandterm(),
              CustomElevatedButton(
                Onpressed: () {},
                text: "agree and continue".toUpperCase(),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 180,
                height: 40,
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff182229),
                  child: InkWell(
                    onTap: () =>
                        showBottomsheet(context), // how bottomshet here
                    splashFactory: NoSplash.splashFactory,
                    borderRadius: BorderRadius.circular(20),
                    highlightColor: Color(0xff09141a),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.language,
                          color: Colors.green,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "English",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.green,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
        ],
      )),
    );
  }
}
