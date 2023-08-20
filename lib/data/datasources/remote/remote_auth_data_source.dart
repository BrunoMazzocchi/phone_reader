import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:phone_reader/domain/domain.dart';
import 'package:phone_reader/domain/entities/user/request/user_login_request.dart';
import 'package:phone_reader/domain/entities/user/response/refresh_token_model.dart';

abstract class IRemoteAuthDataSource { 
  Future<UserLoginModel> postLogin(UserLoginRequest userLoginRequest);
  Future<RefreshTokenModel> refreshToken(String refreshToken);

}


class AuthRemoteDataSource implements IRemoteAuthDataSource { 
  AuthRemoteDataSource({
    required Dio client, 
  }) :_client = client;
    
  final Dio _client;
  
  @override
  Future<UserLoginModel> postLogin(UserLoginRequest userLoginRequest) async {
    try {
      final response = await _client.post('${_client.options.baseUrl}/auth/signin', data: {
        'username': userLoginRequest.email,
        'password': userLoginRequest.password,
      });
      
      if(response.statusCode != 200) {
        throw Exception();
      }

      return UserLoginModel.fromJson(response.data);

      
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }

  }

  @override
  Future<RefreshTokenModel> refreshToken(String refreshToken) async {
    try {
      final response = await _client.post('${_client.options.baseUrl}/auth/refreshtoken', data: {
        'refreshToken': refreshToken,
      });
      
      if(response.statusCode != 200) {
        throw Exception();
      }

      return RefreshTokenModel.fromJson(response.data);
      
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}