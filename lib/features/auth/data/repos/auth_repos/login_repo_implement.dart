import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:untitled/core/error/failure.dart';
import 'package:untitled/features/auth/data/apis/api_services.dart';
import 'package:untitled/features/auth/data/models/auth_models/login_model.dart';
import 'package:untitled/features/auth/data/repos/auth_repos/repo_auth.dart';

class LoginRepoImplement implements LoginRepo {
  final ApiServices apiServices;

  LoginRepoImplement({required this.apiServices});
  @override
  Future<Either<Failure, LoginModel>> loginUser(
      {required email, required password}) async {
    try {
      //! TODO: Create an API constants class and add this endpoint to it.
      var data = await apiServices.post(endpoint: '/auth/login', data: {
        'email': email,
        'password': password,
      });
      return right(LoginModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
