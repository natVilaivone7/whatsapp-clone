import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/hepler/show_alert_dialog.dart';
import 'package:whatsapp/common/widgets/custom_elevate_button.dart';
import 'package:whatsapp/common/widgets/custom_icon_buttom.dart';
import 'package:whatsapp/features/auth/widget/custom_textfield.dart';

import '../../../common/utills/coloors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController contryNamecontrolor;
  late TextEditingController contryCodenontrolor;
  late TextEditingController contryPhoneNumbercontrolor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    contryCodenontrolor = TextEditingController(text: "85620");
    contryNamecontrolor = TextEditingController(text: "Laos");
    contryPhoneNumbercontrolor = TextEditingController(text: "2059645500");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    contryNamecontrolor.dispose();
    contryCodenontrolor.dispose();
    contryPhoneNumbercontrolor.dispose();
  }

  showCountryPickerBottomSheet() {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      favorite: ['LA'],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 600,
        backgroundColor: Theme.of(context).backgroundColor,
        flagSize: 22,
        borderRadius: BorderRadius.circular(20),
        textStyle: TextStyle(color: context.theme.greyColor),
        inputDecoration: InputDecoration(
          labelStyle: TextStyle(color: context.theme.greyColor),
          prefixIcon: const Icon(
            Icons.language,
            color: Coloors.greenDark,
          ),
          hintText: 'Search country by code or name',
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: context.theme.greyColor!.withOpacity(.2),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Coloors.greenDark,
            ),
          ),
        ),
      ),
      onSelect: (country) {
        contryNamecontrolor.text = country.name;
        contryCodenontrolor.text = country.phoneCode;
      },
    );
  }

// we send the code to phone number here
  sendCodeToPhone() {
    final phone = contryPhoneNumbercontrolor.text;
    final name = contryNamecontrolor.text;
    if (phone.isEmpty) {
      return showAlertDialog(
          context: context, message: "Please Enter your phone numbers");
    } else if (phone.length < 9) {
      return showAlertDialog(
          context: context,
          message:
              "The phone number you enter is too short for the $name.\n\n");
    } else if (phone.length > 10) {
      return showAlertDialog(
          context: context,
          message:
              "The phone number you enter is too long for the phone number $name");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Enter your phone number",
          ),
          actions: [CustomIconBottom(Onpresed: () {}, icon: Icons.more_vert)],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
              child: Text(
                "what's App will need to veryfield your phone number ",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Text(
              "what's your numbers ?",
              style: TextStyle(fontSize: 17),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: CustomTextField(
                controller: contryNamecontrolor,
                onTap: showCountryPickerBottomSheet,
                readOnly: true,
                suffixIcon: IconButton(
                    onPressed: showCountryPickerBottomSheet,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      size: 30,
                      color: Colors.lightGreen,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: CustomTextField(
                      controller: contryCodenontrolor,
                      prefixText: "+",
                      readOnly: true,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: CustomTextField(
                      controller: contryPhoneNumbercontrolor,
                      hintText: "Phone number",
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
            width: 160,
            child: CustomElevatedButton(
                Onpressed: () => sendCodeToPhone(), text: "NEXT")));
  }
}
