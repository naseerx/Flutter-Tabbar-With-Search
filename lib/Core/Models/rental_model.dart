class RentalsModel {
  late String name;
  late String image;
  late String status;
  late String lNumber;
  late String carName;
  late String eDate;
  late String sDate;

  RentalsModel({
    required this.name,
    required this.image,
    required this.status,
    required this.sDate,
    required this.eDate,
    required this.carName,
    required this.lNumber,
  });

  // Json to Dart Object

  factory RentalsModel.fromJSON(Map<String, dynamic> map) {
    return RentalsModel(
      name: map['name'],
      carName: map['carName'],
      eDate: map['eDate'],
      sDate: map['sDate'],
      status: map['status'],
      image: map['image'],
      lNumber: map['lNumber'],
    );
  }
}
