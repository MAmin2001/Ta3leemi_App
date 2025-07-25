import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ta3leemi_project/core/helpers/constants.dart';
import 'package:ta3leemi_project/core/helpers/secured_shared_pref.dart';
import 'package:ta3leemi_project/core/networking/dio_factory.dart';
import 'package:ta3leemi_project/features/login/data/models/login_request_body.dart';
import 'package:ta3leemi_project/features/login/data/repos/login_repo.dart';
import 'package:ta3leemi_project/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        await saveUserToken(loginResponse.userData?.token ?? '');
        emit(LoginState.loginSuccess(loginResponse));
      },
      failure: (apiErrorModel) {
        emit(LoginState.loginError(apiErrorModel));
      },
    );

    //   response.fold(
    //   (apiErrorModel) {
    //     emit(LoginState.loginError(apiErrorModel));
    //   },
    //   (loginResponse) async {
    //     await saveUserToken(loginResponse.userData?.token ?? '');
    //     emit(LoginState.loginSuccess(loginResponse));
    //   },
    // );
  }

  Future<void> saveUserToken(String token) async {
    await SecuredSharedPref.setSecuredString(
      SecuredSharedPrefKeys.userToken,
      token,
    );
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
