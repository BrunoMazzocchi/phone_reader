import 'package:flutter/foundation.dart';
import 'package:phone_reader/domain/domain.dart';

import '../datasources/remote/remote_category_data_source.dart';

class CategoryRepository implements ICategoriesRepository { 
  CategoryRepository({
    required IRemoteCategoriesDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource; 
   

  final  IRemoteCategoriesDataSource _remoteDataSource;

  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      return await _remoteDataSource.getCategories();
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
  
  @override
  Future<CategoryModel> getCategory(int id) {
    // TODO: implement getCategory
    throw UnimplementedError();
  }
  
}