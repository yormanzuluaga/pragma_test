import 'dart:async';
import 'dart:io';

import 'package:api_helper/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class _MockHttpClient extends Mock {
  Future<http.Response> get(
    Uri uri, {
    Map<String, String>? headers,
  });
  Future<http.Response> delete(
    Uri uri, {
    Object? body,
    Map<String, String>? headers,
  });
  Future<http.Response> post(
    Uri uri, {
    Object? body,
    Map<String, String>? headers,
  });
  Future<http.Response> patch(
    Uri uri, {
    Object? body,
    Map<String, String>? headers,
  });
  Future<http.Response> put(
    Uri uri, {
    Object? body,
    Map<String, String>? headers,
  });
}

GetIt getIt = GetIt.instance;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton<Env>(Env(value: Environments.qa));
  setUpAll(() {
    registerFallbackValue(Uri.parse('http://localhost'));
  });

  group('ApiClient', () {
    final testJson = {'data': 'test'};
    final expectedResponse = http.Response(testJson.toString(), 200);

    late ApiClient subject;
    late _MockHttpClient httpClient;

    setUp(() {
      httpClient = _MockHttpClient();

      when(
        () => httpClient.get(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => expectedResponse);

      when(
        () => httpClient.post(
          any(),
          body: any(named: 'body'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => expectedResponse);

      when(
        () => httpClient.patch(
          any(),
          body: any(named: 'body'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => expectedResponse);

      when(
        () => httpClient.delete(
          any(),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => expectedResponse);

      when(
        () => httpClient.put(
          any(),
          body: any(named: 'body'),
          headers: any(named: 'headers'),
        ),
      ).thenAnswer((_) async => expectedResponse);

      subject = ApiClient(
        env: getIt<Env>(),
        getCall: httpClient.get,
        postCall: httpClient.post,
        patchCall: httpClient.patch,
        putCall: httpClient.put,
        deleteCall: httpClient.delete,
      );
    });

    test('can be instantiated without header', () {
      expect(
        ApiClient(
          env: getIt<Env>(),
        ),
        isNotNull,
      );
    });

    test('can be instantiated with header', () {
      expect(
        ApiClient(
          env: getIt<Env>(),
          headers: {'Authorization': 'Bearear token'},
        ),
        isNotNull,
      );
    });

    group('get', () {
      test('returns the response', () async {
        final response = await subject.get('/');

        expect(response.statusCode, equals(expectedResponse.statusCode));
        expect(response.body, equals(expectedResponse.body));
      });

      test('sends the request correctly', () async {
        await subject.get(
          '/path/to/endpoint',
          queryParameters: {
            'param1': 'value1',
            'param2': 'value2',
          },
        );

        verify(
          () => httpClient.get(
            Uri.parse('${getIt<Env>().baseURL}/path/to/endpoint?param1=value1&param2=value2'),
            headers: {},
          ),
        ).called(1);
      });
    });

    group('delete', () {
      setUp(() {
        when(
          () => httpClient.delete(
            any(),
            headers: any(named: 'headers'),
          ),
        ).thenAnswer((_) async => expectedResponse);
      });
      test('returns the response', () async {
        final response = await subject.delete('/');

        expect(response.statusCode, equals(expectedResponse.statusCode));
        expect(response.body, equals(expectedResponse.body));
      });

      test('sends the request correctly', () async {
        await subject.delete(
          '/path/to/endpoint',
          queryParameters: {
            'param1': 'value1',
            'param2': 'value2',
          },
        );

        verify(
          () => httpClient.delete(
            Uri.parse('${getIt<Env>().baseURL}/path/to/endpoint?param1=value1&param2=value2'),
            headers: {},
          ),
        ).called(1);
      });
    });

    group('post', () {
      test('returns the response', () async {
        final response = await subject.post('/');

        expect(response.statusCode, equals(expectedResponse.statusCode));
        expect(response.body, equals(expectedResponse.body));
      });

      test('sends the request correctly', () async {
        await subject.post(
          '/path/to/endpoint',
          queryParameters: {'param1': 'value1', 'param2': 'value2'},
          body: 'BODY_CONTENT',
        );

        verify(
          () => httpClient.post(
            Uri.parse('${getIt<Env>().baseURL}/path/to/endpoint?param1=value1&param2=value2'),
            body: 'BODY_CONTENT',
            headers: {HttpHeaders.contentTypeHeader: ContentType.json.value},
          ),
        ).called(1);
      });
    });

    group('patch', () {
      test('returns the response', () async {
        final response = await subject.patch('/');

        expect(response.statusCode, equals(expectedResponse.statusCode));
        expect(response.body, equals(expectedResponse.body));
      });

      test('sends the request correctly', () async {
        await subject.patch(
          '/path/to/endpoint',
          queryParameters: {'param1': 'value1', 'param2': 'value2'},
          body: 'BODY_CONTENT',
        );

        verify(
          () => httpClient.patch(
            Uri.parse('${getIt<Env>().baseURL}/path/to/endpoint?param1=value1&param2=value2'),
            body: 'BODY_CONTENT',
            headers: {HttpHeaders.contentTypeHeader: ContentType.json.value},
          ),
        ).called(1);
      });
    });

    group('put', () {
      test('returns the response', () async {
        final response = await subject.put('/');

        expect(response.statusCode, equals(expectedResponse.statusCode));
        expect(response.body, equals(expectedResponse.body));
      });

      test('sends the request correctly', () async {
        await subject.put(
          '/path/to/endpoint',
          body: 'BODY_CONTENT',
        );

        verify(
          () => httpClient.put(
            Uri.parse('${getIt<Env>().baseURL}/path/to/endpoint'),
            body: 'BODY_CONTENT',
            headers: {HttpHeaders.contentTypeHeader: ContentType.json.value},
          ),
        ).called(1);
      });
    });
  });
}
