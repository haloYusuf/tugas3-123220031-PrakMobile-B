import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/constant.dart';
import 'splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController controller = Get.put(SplashController());
    return Scaffold(
      backgroundColor: Constant.primaryColor,
      body: Center(
        child: Obx(
          () => AnimatedOpacity(
            opacity: controller.opacity.value,
            duration: const Duration(milliseconds: 1000),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/konoha.png',
                  height: 200,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  Constant.appName,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Constant.onPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
