class CategoryModel {
  int? id;

  String? vehicleName;

  // Refactoring Json
  CategoryModel.fromJson({required Map<String, dynamic> data}) {
    id = data['id'];

    vehicleName = data['name'];
  }
}
