class HotelModel{
  String? name;
  String? location;
  int? price;
  int? id;
  int? discount;

  // Named constructor | refactoring
  HotelModel.fromJson({required Map<String,dynamic> data})
  {
    id = data['id'].toInt();
    location = data['location'].toString();
    name = data['name'].toString();
    price = data['price'].toInt();
    discount = data['discount'].toInt();
  }
}