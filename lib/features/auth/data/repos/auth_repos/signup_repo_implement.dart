import 'package:dartz/dartz.dart';
import 'package:untitled/core/error/failure.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
import 'package:untitled/features/auth/data/models/auth_models/signup_model.dart';

class SignupRepoImplement implements SignUpRepo {
  final ApiServices apiServices;

  SignupRepoImplement({required this.apiServices});
  @override
  Future<Either<Failure, SignUpModel>> signupUser(
      {required name,
      required email,
      required phone,
      required gender,
      required password,
      required passwordConfirmation}) async {
    try {
      var data = await apiServices.post(endpoint: '/auth/register', data: {
        'name': name,
        'email': email,
        'phone': phone,
        'gender': gender,
        'password': password,
        'password_confirmation': passwordConfirmation,
      });
      return right(SignUpModel.fromJson(data));
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
