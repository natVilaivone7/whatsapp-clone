import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';

showAlertDialog({
  required BuildContext context,
  required String message,
  String? btnTeext,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text(
          message,
          style: TextStyle(fontSize: 15, color: context.theme.greyColor),
        ),
        contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              btnTeext ?? "OK",
              style: TextStyle(color: context.theme.circleImageColor),
            ),
          )
        ],
      );
    },
  );
}
