import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive  Timeout with ApiServer');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');

      case DioExceptionType.unknown:
        return ServerFailure('No Internet Connection');

      default:
        return ServerFailure('Opps There was an Error, please try again!');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 ||
        statusCode == 401 ||
        statusCode == 403 ||
        statusCode == 422) {
      return ServerFailure(response["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(response["error"]);
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, please try later');
    } else {
      return ServerFailure('Opps There was an Error, please try again!');
    }
  }
}
