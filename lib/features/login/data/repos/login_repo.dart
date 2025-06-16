//import 'package:dartz/dartz.dart';
import 'package:ta3leemi_project/core/networking/api_error_handler.dart';
//import 'package:ta3leemi_project/core/networking/api_error_model.dart';
import 'package:ta3leemi_project/core/networking/api_result.dart';
import 'package:ta3leemi_project/core/networking/api_service.dart';
import 'package:ta3leemi_project/features/login/data/models/login_request_body.dart';
import 'package:ta3leemi_project/features/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
// class LoginRepo {
//   final ApiService _apiService;

//   LoginRepo(this._apiService);

//   Future<Either<ApiErrorModel, LoginResponse>> login(
//     LoginRequestBody loginRequestBody,
//   ) async {
//     try {
//       final response = await _apiService.login(loginRequestBody);
//       return right(response);
//     } catch (error) {
//       return left(ApiErrorHandler.handle(error));
//     }
//   }
// }
