import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nla_author_app/model/storeValues.dart';
import 'package:nla_author_app/services/themeService.dart';
import 'package:nla_author_app/view/Pages/login.dart';

void main() {
  runApp(MyApp());
  ThemeServce().setThemeFromTime();
  initHive();
}

initHive() async {
  await Hive.initFlutter();
  await Hive.openBox(StoreValues.mainBox);
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
