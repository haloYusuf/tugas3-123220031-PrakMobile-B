class PersonalModel {
  String birthDate;
  String kekkeiGenkai;
  String sex;
  String bloodType;

  PersonalModel({
    this.birthDate = 'Not Found',
    this.kekkeiGenkai = '-',
    this.sex = '-',
    this.bloodType = '-',
  });

  factory PersonalModel.fromMap(Map<String, dynamic> map) {
    return PersonalModel(
      birthDate: map['birthdate'] ?? 'Not Found',
      kekkeiGenkai: _handleKekkeiGenkai(
        data: map['kekkeiGenkai'] ?? 'Not Found',
      ),
      sex: map['sex'] ?? 'Not Found',
      bloodType: map['bloodType'] ?? 'Not Found',
    );
  }
}

String _handleKekkeiGenkai({required dynamic data}) =>
    data is List ? data.join(', ') : data;
