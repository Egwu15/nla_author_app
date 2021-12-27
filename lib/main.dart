import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';
import 'package:nla_author_app/services/themeService.dart';
import 'package:nla_author_app/view/Pages/login.dart';

void main() {
  runApp(MyApp());
  ThemeServce().setThemeFromTime();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nla',
      home: Login(),
      defaultTransition: Transition.zoom,
    );
  }
}
