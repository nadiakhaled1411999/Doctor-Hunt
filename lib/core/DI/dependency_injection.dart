import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled/features/auth/data/repos/auth_repos/signup_repo_implement.dart';
import 'package:untitled/features/auth/logic/auth_cubit/login_cubit/cubit/login_cubit_cubit.dart';
import 'package:untitled/features/auth/logic/auth_cubit/signup_cubit/cubit/signup_cubit_cubit.dart';
import '../../features/auth/data/apis/api_services.dart';
import '../../features/auth/data/repos/auth_repos/login_repo_implement.dart';
final getIt = GetIt.instance;
Future<void>setupDependencyInjection()async{
  getIt.registerSingleton<ApiServices>(ApiServices(dio: Dio()));
  getIt.registerLazySingleton(()=>LoginRepoImplement (apiServices: getIt<ApiServices>()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt<LoginRepoImplement>()));
   getIt.registerLazySingleton(()=>SignupRepoImplement(apiServices: getIt<ApiServices>()));
    getIt.registerLazySingleton<SignupCubit>(() => SignupCubit(getIt<SignupRepoImplement>()));
}
