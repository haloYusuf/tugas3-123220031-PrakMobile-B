import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/constant.dart';
import '../components/info_detail.dart';
import 'detail_controller.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    DetailController controller = Get.put(DetailController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: controller.handleBack,
          icon: Icon(
            Icons.arrow_back,
            size: 24,
          ),
        ),
        title: Text(
          controller.getCharName(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 15,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  controller.getCharImages().isEmpty ||
                          controller.getCharImages()[0].isEmpty
                      ? ''
                      : controller.getCharImages()[0],
                  width: double.infinity,
                  gaplessPlayback: true,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    if (controller.getCharImages().length > 1 &&
                        controller.getCharImages()[1].isNotEmpty) {
                      return Image.network(
                        controller.getCharImages()[1],
                        width: double.infinity,
                        gaplessPlayback: true,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Image.asset(
                            'assets/images/error_load.png',
                            width: 75,
                            height: 75,
                          );
                        },
                      );
                    } else {
                      return Image.asset(
                        'assets/images/error_load.png',
                        width: 75,
                        height: 75,
                      );
                    }
                  },
                ),
              ),
              Column(
                spacing: 1,
                children: [
                  Text(
                    controller.getCharName(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Constant.onSecondaryColor,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 2,
                      width: 250,
                      color: Constant.onSecondaryColor,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 5,
                children: [
                  InfoDetail(
                    title: 'Personal',
                    content: Text(
                      'Birthday Date\t: ${controller.getCharPersonal().birthDate}\nGender\t: ${controller.getCharPersonal().sex}\nBlood Type\t: ${controller.getCharPersonal().bloodType}',
                    ),
                  ),
                  InfoDetail(
                    title: 'Family',
                    content: Text(
                      'Father\t: ${controller.getCharFamily().father}\nMother\t: ${controller.getCharFamily().mother}\nCreator\t: ${controller.getCharFamily().creator}',
                    ),
                  ),
                  InfoDetail(
                    title: 'Debut',
                    content: Text(
                      'Manga\t: ${controller.getCharDebut().manga}\nAnime\t: ${controller.getCharDebut().anime}\nNovel\t: ${controller.getCharDebut().novel}\nMovie\t: ${controller.getCharDebut().movie}\nGame\t: ${controller.getCharDebut().game}\nOva\t: ${controller.getCharDebut().ova}',
                    ),
                  ),
                  InfoDetail(
                    title: 'KekkeiGenkai',
                    content: Text(
                      controller.getCharPersonal().kekkeiGenkai.isEmpty
                          ? '-'
                          : controller.getCharPersonal().kekkeiGenkai,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
