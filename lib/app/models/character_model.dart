import 'package:tugas3_diandrayusufarrafi_123220031/app/models/debut_model.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/app/models/family_model.dart';
import 'package:tugas3_diandrayusufarrafi_123220031/app/models/personal_model.dart';

class CharacterModel {
  String name;
  List<String> images;
  DebutModel debut;
  FamilyModel family;
  PersonalModel personal;

  CharacterModel({
    required this.name,
    required this.images,
    required this.debut,
    required this.family,
    required this.personal,
  });

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      name: map['name'] ?? 'Not Found',
      images: List<String>.from(map['images']),
      debut: DebutModel.fromMap(map['debut'] ?? {'': ''}),
      family: FamilyModel.fromMap(map['family'] ?? {'': ''}),
      personal: PersonalModel.fromMap(map['personal'] ?? {'': ''}),
    );
  }
}
