import 'package:phone_reader/domain/entities/category/response/category_model.dart';

abstract class ICategoriesRepository {
  Future<List<CategoryModel>> getCategories();
  Future<CategoryModel> getCategory(int id);

}