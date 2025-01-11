 import 'package:mockito/annotations.dart';
import 'package:untitled/core/constants/api_constants.dart';
import 'package:untitled/core/routing/route_export_features/export_auth/export_login.dart';
import 'package:flutter_test/flutter_test.dart';
import 'api_services_test.mocks.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late ApiServices apiServices;

  const endpoint = '/test-endpoint';
  const requestData = {'key': 'value'};
  const responseData = {'success': true};
  final fullPath = '${ApiConstants.baseUrl}$endpoint';

  setUp(() {
    mockDio = MockDio();
    apiServices = ApiServices(dio: mockDio);
  });

  group('ApiServices', () {
    test('post method returns data correctly', () async {
      when(mockDio.post(fullPath, data: requestData, options: anyNamed('options')))
          .thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: fullPath),
          data: responseData,
          statusCode: 200,
        ),
      );

      final result = await apiServices.post(
        endpoint: endpoint,
        data: requestData,
      );

      // Assertions
      expect(result, equals(responseData));
      verify(mockDio.post(fullPath, data: requestData, options: anyNamed('options')))
          .called(1);
    });
  });
}
