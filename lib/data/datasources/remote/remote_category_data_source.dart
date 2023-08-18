import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:phone_reader/domain/domain.dart';

abstract class IRemoteCategoriesDataSource { 
  Future<List<CategoryModel>> getCategories();
  Future<CategoryModel> getCategory(int id);
}


class CategoryRemoteDataSource implements IRemoteCategoriesDataSource { 
  CategoryRemoteDataSource({
    required Dio client, 
  }) :_client = client;
    
  final Dio _client;
  
  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      final response = await _client.get('http://192.168.1.9:8080/categories/all');
      if(response.statusCode != 200) {
      
        throw Exception();
      }

      final List<CategoryModel> categories = [];

      response.data.map((category) => categories.add(CategoryModel.fromJson(category))).toList();
      
      return categories;
      
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<CategoryModel> getCategory(int id) async {
    
    return  CategoryModel.fromJson({
      'id': 1,
      'name': 'name',
    });
  }
}