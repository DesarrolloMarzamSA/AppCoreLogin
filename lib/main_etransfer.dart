import 'package:app_core_login/app_config.dart';
import 'package:app_core_login/models/enum/build_type.dart';
import 'package:app_core_login/main.dart';
import 'package:flutter/material.dart';

void main() {
  AppConfig.create(
      appName: "Etransfer",
      baseUrl: "https://Etransfer",
      buildType: BuildType.etransfer);
  runApp(const MyApp());
}
