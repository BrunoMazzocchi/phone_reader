import 'package:phone_reader/domain/entities/user/request/user_login_request.dart';
import 'package:phone_reader/domain/entities/user/response/refresh_token_model.dart';
import 'package:phone_reader/domain/repositories/iauth_repository.dart';

class PostLogin {
  PostLogin({
    required IAuthRepository repository
  }) : _repository = repository; 

  final IAuthRepository _repository;

  Future<dynamic> call(UserLoginRequest userLoginRequest) async {
    return await _repository.login(userLoginRequest);
  }

  Future<RefreshTokenModel> callRefreshToken(String refreshToken) async {
    return await _repository.refreshToken(refreshToken);
  }
}