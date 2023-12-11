import 'package:app_core_login/models/enum/build_type.dart';

class AppConfig {
  String appName = "";
  String baseUrl = "";
  BuildType buildType = BuildType.ventas;

  static AppConfig shared = AppConfig.create();

  factory AppConfig.create({
    String appName = "",
    String baseUrl = "",
    BuildType buildType = BuildType.ventas,
  }) {
    return shared = AppConfig(appName, baseUrl, buildType);
  }

  AppConfig(this.appName, this.baseUrl, this.buildType);
}
