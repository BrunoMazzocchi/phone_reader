class CategoryModel {
  int id; 
  String name;
  bool isSelected = false;

  CategoryModel({ required this.id, required this.name, });

  
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        id: json['id'] as int,
        name: json['category'] as String,
      );
  }

  Map<String, dynamic> toJson() => { 'id': id, 'name': name, };

  
}