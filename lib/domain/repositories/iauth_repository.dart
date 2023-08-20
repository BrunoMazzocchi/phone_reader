import 'package:phone_reader/domain/entities/user/request/user_login_request.dart';
import 'package:phone_reader/domain/entities/user/response/refresh_token_model.dart';
import 'package:phone_reader/domain/entities/user/response/user_login_model.dart';

abstract class IAuthRepository{ 
  Future<UserLoginModel> login(UserLoginRequest userLoginRequest);
  Future<RefreshTokenModel> refreshToken(String refreshToken);
}