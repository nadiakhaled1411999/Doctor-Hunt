import 'package:dartz/dartz.dart';
import 'package:untitled/core/error/failure.dart';
import 'package:untitled/features/auth/data/models/auth_models/login_model.dart';
import 'package:untitled/features/auth/data/models/auth_models/signup_model.dart';
 

abstract class LoginRepo {
  Future<Either<Failure, LoginModel>> loginUser(
      {required email, required password});
}

abstract class SignUpRepo {
  Future<Either<Failure,SignUpModel>> signupUser(
      {required name,
      required email,
      required phone,
      required gender,
      required password,
      required passwordConfirmation});
}
