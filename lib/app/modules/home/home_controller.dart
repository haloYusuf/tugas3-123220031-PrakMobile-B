import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../akatsuki/akatsuki_page.dart';
import '../character/character_page.dart';
import '../kara/kara_page.dart';

class HomeController extends GetxController {
  List<Widget> listTabBarTitle = [
    Text('All Characters'),
    Text('Akatsuki'),
    Text('Kara'),
  ];

  List<Widget> listTabBarContent = [
    CharacterPage(),
    AkatsukiPage(),
    KaraPage(),
  ];

  void handleInfo() {
    Get.dialog(
      AlertDialog(
        title: Text('Informasi'),
        content: Text(
          'Aplikasi ini dibuat oleh Diandra Yusuf Arrafi, mahasiswa UPN V Yogyakarta.\nJika anda ingin berkomunikasi lebih lanjut silahkan follow ig: @ysfarrafi :)',
          textAlign: TextAlign.justify,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text('Ok'),
          ),
        ],
      ),
    );
  }
}
