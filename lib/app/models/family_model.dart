class FamilyModel {
  String father;
  String mother;
  String creator;

  FamilyModel({
    this.father = 'Not Found',
    this.mother = 'Not Found',
    this.creator = 'Not Found',
  });

  factory FamilyModel.fromMap(Map<String, dynamic> map) {
    return FamilyModel(
      father: map['father'] ?? 'Not Found',
      mother: map['mother'] ?? 'Not Found',
      creator: map['creator'] ?? 'Not Found',
    );
  }
}
