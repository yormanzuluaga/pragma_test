import 'dart:convert';
import 'dart:io';

import 'package:api_helper/api_helper.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class _MockApiClient extends Mock implements ApiClient {}

class _MockResponse extends Mock implements http.Response {}

void main() {
  group('ExampleResource', () {
    late ApiClient apiClient;
    late http.Response response;
    late ExampleResource resource;

    setUp(() {
      apiClient = _MockApiClient();
      response = _MockResponse();

      resource = ExampleResource(apiClient: apiClient);
    });

    group('getExampleList', () {
      setUp(() {
        when(
          () => apiClient.get(
            any(),
            queryParameters: any(named: 'queryParameters'),
          ),
        ).thenAnswer((_) async => response);
      });

      test('gets correct list', () async {
        const exampleList = ['example1', 'example2', 'example3'];

        when(() => response.statusCode).thenReturn(HttpStatus.ok);
        when(() => response.body).thenReturn(jsonEncode({'list': exampleList}));
        final result = await resource.getExampleList(type: 'example');

        expect(result, equals(exampleList));
      });
    });
  });
}
