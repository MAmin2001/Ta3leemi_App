import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ta3leemi_project/core/networking/api_service.dart';
import 'package:ta3leemi_project/core/networking/dio_factory.dart';
import 'package:ta3leemi_project/features/login/data/repos/login_repo.dart';
import 'package:ta3leemi_project/features/login/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
