import 'package:get/get.dart';

import '../../models/character_model.dart';
import '../../models/debut_model.dart';
import '../../models/family_model.dart';
import '../../models/personal_model.dart';

class DetailController extends GetxController {
  late final CharacterModel _data;

  @override
  void onInit() {
    super.onInit();
    _data = Get.arguments as CharacterModel;
  }

  String getCharName() {
    return _data.name;
  }

  List<String> getCharImages() {
    return _data.images;
  }

  PersonalModel getCharPersonal() {
    return _data.personal;
  }

  FamilyModel getCharFamily() {
    return _data.family;
  }

  DebutModel getCharDebut() {
    return _data.debut;
  }

  void handleBack() {
    Get.back();
  }
}
