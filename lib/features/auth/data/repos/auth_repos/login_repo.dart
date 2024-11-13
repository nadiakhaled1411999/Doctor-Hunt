import 'package:dartz/dartz.dart';
import 'package:untitled/core/error/failure.dart';
import 'package:untitled/features/auth/data/models/auth_models/login_model.dart';

abstract class LoginRepo {
  Future  <Either<Failure,LoginModel>> loginUser({required email,required password});
}
