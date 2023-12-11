import 'package:app_core_login/app_config.dart';
import 'package:app_core_login/models/enum/build_type.dart';
import 'package:app_core_login/main.dart';
import 'package:flutter/material.dart';

void main() {
  AppConfig.create(
      appName: "Ventas",
      baseUrl: "https://Ventas",
      buildType: BuildType.ventas);
  runApp(const MyApp());
}
