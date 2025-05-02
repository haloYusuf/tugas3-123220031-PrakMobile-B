import 'dart:convert';

import 'package:tugas3_diandrayusufarrafi_123220031/app/models/character_model.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/core/constant/constant.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<CharacterModel>> getCharData({
    required int page,
  }) async {
    final url = '${Constant.baseUrl}/characters?limit=50&page=$page';

    try {
      final res = await http.get(
        Uri.parse(url),
      );

      if (res.statusCode == 200) {
        final data = jsonDecode(res.body);
        final val = data['characters'];

        return List<CharacterModel>.from(
          val.map(
            (item) => CharacterModel.fromMap(item),
          ),
        );
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  static Future<List<CharacterModel>> getAkatsukiData({
    required int page,
  }) async {
    final url = '${Constant.baseUrl}/akatsuki?limit=20&page=$page';

    try {
      final res = await http.get(
        Uri.parse(url),
      );

      if (res.statusCode == 200) {
        final data = jsonDecode(res.body);
        final val = data['akatsuki'];

        return List<CharacterModel>.from(
          val.map(
            (item) => CharacterModel.fromMap(item),
          ),
        );
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  static Future<List<CharacterModel>> getKaraData({
    required int page,
  }) async {
    final url = '${Constant.baseUrl}/kara?limit=20&page=$page';

    try {
      final res = await http.get(
        Uri.parse(url),
      );

      if (res.statusCode == 200) {
        final data = jsonDecode(res.body);
        final val = data['kara'];

        return List<CharacterModel>.from(
          val.map(
            (item) => CharacterModel.fromMap(item),
          ),
        );
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
