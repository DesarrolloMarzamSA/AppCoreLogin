import 'package:app_core_login/models/entities/item_screen.dart';
import 'package:app_core_login/screens/screens.dart';
import 'package:flutter/material.dart';

class RoutesApp {
  static const String initRoute = LoginScreen.id;

  static final mapRoutes = <String, ItemScreen>{
    DashboardScreen.id: ItemScreen(
        route: DashboardScreen.id,
        name: 'Dashboard',
        screen: const DashboardScreen())
  };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoute = {};

    appRoute.addAll(
        {LoginScreen.id: (BuildContext context) => const LoginScreen()});

    for (var item in mapRoutes.entries) {
      appRoute.addAll(
          {item.value.route: (BuildContext context) => item.value.screen});
    }

    return appRoute;
  }
}
