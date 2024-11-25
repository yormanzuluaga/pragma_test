import 'dart:convert';
import 'dart:io';

import 'package:api_helper/src/api_client.dart';
import 'package:http/http.dart' as http;

/// {@template example_resource}
/// An api resource to get the prompt terms.
/// {@endtemplate}
class ExampleResource {
  /// {@macro example_resource}
  ExampleResource({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  // ignore: unused_field
  final ApiClient _apiClient;

  /// Get /game/prompt/terms
  ///
  /// Returns a [List<String>].
  Future<List<String>> getExampleList({
    required String type,
    Map<String, String>? headers,
  }) async {
    /// Example of a get call.
    ///
    /// final responseApi = await _apiClient.get(
    ///   '/example/list/type',
    ///   queryParameters: {'type': type},
    /// );
    ///
    /// final responseApiWithNewHeader = await _apiClient.get(
    ///   '/example/list/type',
    ///   queryParameters: {'type': type},
    ///   modifiedHeaders: headers,
    /// );

    final response = await Future.delayed(const Duration(seconds: 1), () {
      return http.Response(
        jsonEncode({
          'list': ['example1', 'example2', 'example3'],
        }),
        HttpStatus.ok,
      );
    });

    if (response.statusCode == HttpStatus.notFound) {
      return [];
    }

    if (response.statusCode != HttpStatus.ok) {
      throw ApiClientError(
        'GET /prompt/terms returned status ${response.statusCode} with the following response: "${response.body}"',
        StackTrace.current,
      );
    }

    try {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return (json['list'] as List).cast<String>();
    } catch (e) {
      throw ApiClientError(
        'GET /prompt/terms returned invalid response "${response.body}"',
        StackTrace.current,
      );
    }
  }
}
