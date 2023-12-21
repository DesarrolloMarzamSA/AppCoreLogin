import 'package:app_core_login/app_config.dart';
import 'package:app_core_login/models/enum/build_type.dart';
import 'package:app_core_login/resources/theme/app_theme.dart';
import 'package:app_core_login/routes/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void initMain(BuildType typeApplication) async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await _initDotEnv(typeApplication);
  AppConfig.create(
      appName: typeApplication.name,
      baseUrl: dotenv.env['URL_BASE'] ?? "",
      buildType: typeApplication);
  runApp(const MyApp());
}

_initDotEnv(BuildType typeApplication) async {
  String extName = kReleaseMode ? "_prod" : "_debug";
  String name = typeApplication.name;
  String fileNameStr = ".env.$name$extName";
  await dotenv.load(fileName: fileNameStr);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppConfig.shared.appName,
      theme: AppThemes.getThemeData(context),
      initialRoute: RoutesApp.initRoute,
      routes: RoutesApp.getAppRoutes(),
    );
  }
}
