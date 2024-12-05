import 'package:dio/dio.dart';
import 'package:untitled/core/constants/api_constants.dart';

class ApiServices {
  //! TODO: Create an API constants class and include this URL in it.
  //??? -----------------DOne.
 
  final Dio dio;
  //final String token;
  ApiServices({
    required this.dio,
    /*required this.token*/
  });
  Future<Map<String, dynamic>> post({required endpoint, required data}) async {
    var response = await dio.post('${ApiConstants.baseUrl}$endpoint',
        data: data,
        options: Options(headers: {
          // 'Authorization': 'Bearer $token',
        }));
    return response.data;
  }
}
