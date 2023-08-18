import 'package:phone_reader/domain/entities/category/response/category_model.dart';
import 'package:phone_reader/domain/repositories/icategory_repository.dart';

class GetCategory {
  GetCategory({
    required ICategoriesRepository repository,
  }) : _repository = repository;

  final ICategoriesRepository _repository;

  Future<List<CategoryModel>> call() async {
    return await _repository.getCategories();
  }

  Future<CategoryModel> callById(int id) async {
    return await _repository.getCategory(id);
  }
}