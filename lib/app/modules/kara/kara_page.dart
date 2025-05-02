import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../components/card_data.dart';
import '../components/main_loading.dart';
import 'kara_controller.dart';

class KaraPage extends StatelessWidget {
  const KaraPage({super.key});

  @override
  Widget build(BuildContext context) {
    KaraController controller = Get.put(KaraController());
    return Scaffold(
      body: Center(
        child: Obx(
          () {
            if (controller.isInitLoad() && !controller.isLoadMore()) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 8,
                children: [
                  MainLoading(
                    width: 75,
                    height: 75,
                  ),
                  Text(
                    'Loading ...',
                  )
                ],
              );
            } else {
              return ListView.builder(
                controller: controller.scrollController,
                cacheExtent: 0.0,
                itemCount: controller.getLengthData() +
                    (controller.hasMorePage() ? 1 : 0),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                      top: 6,
                      bottom: 6,
                      left: 6,
                      right: 6,
                    ),
                    child: index < controller.getLengthData()
                        ? CardData(
                            data: controller.getCurrentData(index: index),
                            handlePress: () => controller.handleItemClick(
                              index: index,
                            ),
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            spacing: 8,
                            children: [
                              MainLoading(
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                'Loading ...',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
