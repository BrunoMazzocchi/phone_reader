import 'package:flutter/foundation.dart';
import 'package:phone_reader/data/datasources/remote/remote_auth_data_source.dart';
import 'package:phone_reader/domain/domain.dart';
import 'package:phone_reader/domain/entities/user/request/user_login_request.dart';
import 'package:phone_reader/domain/entities/user/response/refresh_token_model.dart';

class AuthRepository implements IAuthRepository {
  AuthRepository({
    required IRemoteAuthDataSource remoteDataSource,
  }) : _remoteDataSource = remoteDataSource;

  final IRemoteAuthDataSource _remoteDataSource;
  
  @override
  Future<UserLoginModel> login(UserLoginRequest userLoginRequest) async {
    try {
      return await _remoteDataSource.postLogin(userLoginRequest);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

  @override
  Future<RefreshTokenModel> refreshToken(String refreshToken) async {
    try {
      return await _remoteDataSource.refreshToken(refreshToken);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }

}
