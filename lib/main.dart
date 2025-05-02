import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/app/routes/route_name.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/app/routes/route_page.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/core/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Si Paling Naruto',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.mainTheme,
      initialRoute: RouteName.splash,
      getPages: RoutePage.routes,
    );
  }
}
