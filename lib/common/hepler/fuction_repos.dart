import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';

showBottomsheet(context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 5,
              width: 40,
              decoration: BoxDecoration(color: context.theme.greyColor),
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close_outlined),
                  iconSize: 30,
                  splashRadius: 22,
                  splashColor: context.theme.greyColor,
                  constraints: const BoxConstraints(minWidth: 22),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "App Lungages",
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            Divider(
              color: context.theme.greyColor,
              thickness: .5,
            ),
            RadioListTile(
              splashRadius: 22,
              value: true,
              groupValue: true,
              onChanged: (bool) {},
              title: const Text(
                "Eaglish",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: const Text(
                "(phone's langluang)",
                style: TextStyle(fontSize: 20),
              ),
            ),
            RadioListTile(
              splashRadius: 22,
              value: true,
              groupValue: false,
              onChanged: (bool) {},
              title: const Text(
                "Lao",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: const Text(
                "my luanguage",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      );
    },
  );
}
