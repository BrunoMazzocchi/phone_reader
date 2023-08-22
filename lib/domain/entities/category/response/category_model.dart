class CategoryModel {
  int id; 
  String name;
  bool isSelected = false;

  CategoryModel({ required this.id, required this.name, this.isSelected = false });

  
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
        id: json['id'] as int,
        name: json['category'] as String,
      );
  }

  Map<String, dynamic> toJson() => { 'id': id, 'name': name, };

  CategoryModel copyWith({
    int? id,
    String? name,
    bool? isSelected,
  }) {
    return CategoryModel(
      id: id ?? this.id,
      name: name ?? this.name,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  
}