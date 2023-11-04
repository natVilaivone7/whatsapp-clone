import 'package:flutter/material.dart';
import 'package:whatsapp/common/extension/custom_theme_extension.dart';
import 'package:whatsapp/common/utills/coloors.dart';

ThemeData darkTheme() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
      backgroundColor: Coloors.backgroundDark,
      scaffoldBackgroundColor: Coloors.backgroundDark,
      extensions: [CustomThemeExtension.darkMode],
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(
            backgroundColor: Coloors.greenDark,
            foregroundColor: Colors.black,
            splashFactory: NoSplash.splashFactory,
            elevation: 0,
            shadowColor: Colors.transparent,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Coloors.greyBackground,
          elevation: 0,
          modalBackgroundColor: Coloors.greyBackground,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)))),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Coloors.backgroundLight,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Coloors.backgroundDark),
      dialogBackgroundColor: Coloors.greyBackground,
      dialogTheme: DialogTheme(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))));
}
