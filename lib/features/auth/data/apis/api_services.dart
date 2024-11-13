import 'package:dio/dio.dart';

class ApiServices {
  final String baseUrl = "https://vcare.integration25.com/api";
  final Dio dio;
    //final String token;
  ApiServices({required this.dio,/*required this.token*/});
  Future<Map<String, dynamic>> post({required endpoint, required data}) async {
    var response = await dio.post('$baseUrl$endpoint',
        data: data, options: Options(headers: {
          // 'Authorization': 'Bearer $token',
        }));
    return response.data;
  }
}
