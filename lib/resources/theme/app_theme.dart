import 'package:app_core_login/app_config.dart';
import 'package:app_core_login/models/enum/build_type.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData themeLightVentas = ThemeData.light().copyWith(
      primaryColor: Colors.red,
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue))));

  static final ThemeData themeDarkVentas = ThemeData.dark().copyWith(
      primaryColor: Colors.yellow,
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.yellow))));

  static final ThemeData themeLightEtransfer = ThemeData.light().copyWith(
      primaryColor: Colors.blue,
      buttonTheme: const ButtonThemeData(buttonColor: Colors.amber));

  static final ThemeData themeDarkEtransfer = ThemeData.dark().copyWith(
      primaryColor: Colors.pink,
      buttonTheme: const ButtonThemeData(buttonColor: Colors.amber));

  static getThemeData(BuildContext context) {
    bool isDark = MediaQuery.platformBrightnessOf(context) == Brightness.dark;
    switch (AppConfig.shared.buildType) {
      case BuildType.ventas:
        return isDark ? themeDarkVentas : themeLightVentas;
      case BuildType.etransfer:
        return isDark ? themeDarkEtransfer : themeLightEtransfer;
    }
  }
}
