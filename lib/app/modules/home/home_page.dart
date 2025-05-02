import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/app/modules/home/home_controller.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/core/constant/constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController());
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/konoha.png',
            height: 50,
            width: 50,
          ),
          actions: [
            IconButton(
              onPressed: controller.handleInfo,
              icon: Icon(
                Icons.info,
                color: Constant.onSecondaryColor,
                size: 24,
              ),
            ),
          ],
          bottom: TabBar(
            indicator: BoxDecoration(),
            tabs: controller.listTabBarTitle,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(8),
          child: TabBarView(
            children: controller.listTabBarContent,
          ),
        ),
      ),
    );
  }
}
