import 'package:flutter/material.dart';
import '../extension/custom_theme_extension.dart';
import '../utills/coloors.dart';

ThemeData lightTheme() {
  ThemeData base = ThemeData.light();
  return base.copyWith(
      backgroundColor: Coloors.backgroundLight,
      scaffoldBackgroundColor: Coloors.backgroundLight,
      extensions: [CustomThemeExtension.lightMode],
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: TextButton.styleFrom(
            backgroundColor: Coloors.greenDark,
            foregroundColor: Coloors.blueLight,
            splashFactory: NoSplash.splashFactory,
            elevation: 0,
            shadowColor: Colors.transparent,
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Coloors.backgroundLight,
          elevation: 0,
          modalBackgroundColor: Coloors.backgroundLight,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)))),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Coloors.backgroundDark,
              fontSize: 20,
              fontWeight: FontWeight.bold),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Coloors.backgroundLight),
      dialogBackgroundColor: Coloors.backgroundLight,
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ));
}
