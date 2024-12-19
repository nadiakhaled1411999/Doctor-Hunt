import 'package:mockito/annotations.dart';
import 'package:untitled/core/constants/api_constants.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';

import 'package:flutter_test/flutter_test.dart';
import 'api_services_test.mocks.dart';
import 'package:mockito/mockito.dart';


@GenerateMocks([Dio])
void main() {
  group('ApiServices', () {
    late MockDio mockDio;
    late ApiServices apiServices;

    setUp(() {
      mockDio = MockDio();
      apiServices = ApiServices(dio: mockDio);
    });

    test('post method returns data correctly', () async {
  
      const endpoint = '/test-endpoint';
      final requestData = {'key': 'value'};
      final responseData = {'success': true};

    
      when(mockDio.post('${ApiConstants.baseUrl}$endpoint',
              data: requestData, options: anyNamed('options')))
          .thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(
            path: '${ApiConstants.baseUrl}$endpoint',
          ),
          data: responseData,
          statusCode: 200,
        ),
      );

     
      final result = await apiServices.post(
        endpoint: endpoint,
        data: requestData,
      );
      
      print('Result from post method: $result');
      
      expect(result, equals(responseData));
      verify(mockDio.post('${ApiConstants.baseUrl}$endpoint',
              data: requestData, options: anyNamed('options')))
          .called(1);
    });
  });
}
