import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:meta/meta.dart';
import 'package:phone_reader/data/repositories/auth_repository.dart';
import 'package:phone_reader/domain/domain.dart';
import 'package:phone_reader/domain/entities/user/request/user_login_request.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  AuthRepository remoteAuth;
  LoginBloc(this.remoteAuth) : super(LoginInitial()) {
    on<LoginInitialEvent>(_validate);

    on<LoginButtonPressed>(_login);
  }

  FlutterSecureStorage storage = const FlutterSecureStorage();

  void _validate(LoginInitialEvent event, Emitter<LoginState> emit) async {
    emit(LoginLoading());
    final refreshToken = await storage.read(key: 'refreshToken');
    try {
      if (refreshToken == null || refreshToken.isEmpty) {
        return emit(LoginNeeded());
      }

      final response = await remoteAuth.refreshToken(refreshToken);
      storage.write(key: 'refreshToken', value: response.refreshToken);
      storage.write(key: 'token', value: response.accessToken);

      emit(
        LoginSuccess(
          UserLoginModel(
            email: "",
            id: 0,
            username: "",
            refreshToken: response.refreshToken,
            token: response.accessToken,
            type: "",
            roles: [],
          ),
        ),
      );
    } catch (e) {
      print(e);
    }
  }

  void _login(LoginButtonPressed event, Emitter<LoginState> emit) async {
    emit(LoginLoading());

    try {
      final response = await remoteAuth.login(
          UserLoginRequest(email: event.username, password: event.password));

      if (response.token.isNotEmpty) {
        storage.write(key: 'token', value: response.token);
        storage.write(key: 'refreshToken', value: response.refreshToken);
        emit(LoginSuccess(UserLoginModel.fromJson(response.toJson())));
      } else {
        emit(LoginError('Error al iniciar sesión'));
      }
    } catch (e) {
      emit(LoginError('Error al iniciar sesión'));
    }
  }
}
