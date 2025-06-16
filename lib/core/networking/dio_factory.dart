import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:ta3leemi_project/core/helpers/constants.dart';
import 'package:ta3leemi_project/core/helpers/secured_shared_pref.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    dio = Dio();
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
    Duration timeOut = Duration(seconds: 30);
    if (dio == null) {
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      // addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    dio?.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${await SecuredSharedPref.getSecuredString(SecuredSharedPrefKeys.userToken)}',
    };
  }

  static void setTokenIntoHeaderAfterLogin(String token) {
    dio?.options.headers = {'Authorization': 'Bearer $token'};
  }

  // static void addDioInterceptor() {
  //   dio?.interceptors.add(
  //     PrettyDioLogger(
  //       requestBody: true,
  //       requestHeader: true,
  //       responseHeader: true,
  //     ),
  //   );
  // }
}
