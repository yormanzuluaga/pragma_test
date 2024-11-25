import 'dart:convert';
import 'dart:io';
import 'package:api_helper/api_helper.dart';
import 'package:pragma_ui/pragma_ui.dart';

/// An API resource for authentication related calls.
class BreedsResource {
  BreedsResource({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<List<BreedsModel>> getBreeds({
    Map<String, String>? headers,
  }) async {
    final response = await _apiClient.get(
      'v1/breeds',
      modifiedHeaders: headers,
    );
    if (response.statusCode == HttpStatus.ok) {
      final data = (jsonDecode(response.body));
      final loginResponse = (data as List)
          .map(
            (e) => BreedsModel.fromJson(e),
          )
          .toList();
      return loginResponse;
    } else {
      throw GeneralFailure('Error en la solicitud: ${response.statusCode}');
    }
  }
}
