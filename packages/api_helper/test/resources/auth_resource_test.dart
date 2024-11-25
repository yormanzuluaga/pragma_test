/* import 'dart:convert';
import 'dart:io';

import 'package:api_helper/api_helper.dart';
import 'package:api_helper/src/models/login_request_model/login_request.dart';
import 'package:api_helper/src/models/login_response_model/login_response.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class _MockApiClient extends Mock implements ApiClient {}

class _MockResponse extends Mock implements http.Response {}

void main() {
  group('AuthResource', () {
    late ApiClient apiClient;
    late http.Response response;
    late AuthResource resource;
    late LoginResponse responseLogin;
    late LoginRequest request;

    setUp(() {
      apiClient = _MockApiClient();
      response = _MockResponse();

      resource = AuthResource(apiClient: apiClient);
      responseLogin = LoginResponse.fromJson({
        'token':
            '9qv0AHpu5xJ7Vfrrmtx7s6dMPPIB3+efw5JO8igf6zZPmvoRI8kWpfzKmnAXOSHS358BA6XAoXeqgVoqupf+OjpuPS83LZ02w+5h7s2b6Yd2Sorb89pbO2fMa5ukEiTg7sGAW4qsJ/SVbrvMMwtCfU12lwp7MurAFsyLnOL03kIt3zDsnCtg5+NhSGk2DQ3dHOFSYeJgQ23doR27/4TrCGazfEzlD6GrNkrKDXv7nadHdnlp6iGt4xujP83Jb2ow2RKyNfuTHFcnnAAlaDa+obSMB/xpzeGnACnT8RFJNffd5NpZwXG/78EXlSun9d0iUPOc/zzpsiysiY/0uAUo1Q+vhYGpCWGCj2V4zp5WwPYIxVOrqpAX01y2u/GaoXmNNlUdA8h4EPLN3QUFwhnuadgEJ3yu82eSL1zueUQspPAkAZMiH7UpHWk7XRWrU+x5BBhZFcO0+fa7OGV+JX0+RDMakArcgajvahl2nryD3p+O4Mw/p2ncizjjUXX0nP6TKl6lyTyPg/x1kRswIfe7Cd9dR1Ft+LlEAnnqznh+bqv+kKGxpPi5NdhpYHgbt2vOZiDwPmELramX9TPA+knyWrc3rIUbgHIpDpK0XPeyJ10sVjqeXFD7Ep6syuZqiorsnUPq8BXzDE2fw6e2Ge7jxa684DwBB1mO1ZkDNqvXXANYfoHCvY963LSZaDxyVQtiJWmX/zn+faZs1KIlkYU4+ZZMH/bs54UPlVUoxnmY/lmZ/Qo/6KDi8smvr/8QoFT0WUyaary2jmTE2BZov86fwe9wFA8t7iF38U3K0dLNNqXCzp+BbZewsB5o6leWkrf3HWeayJHl3eyr/AuuRIdSeomV6mT1ixECmjYO1ICSQEw=',
        'exp': '20230818101739',
        'modelEspecifico': {
          'id_user': 1289564,
          'nombre': 'DE+SISTEMAS',
          'apellido': 'PRUEBA',
          'docu_tipo': 'DU',
          'docu_nro': 11447777,
          'sexo': 'F',
          'email': 'mariaeugenia.picciariello%40swissmedical.com.ar',
          'estado': 'p',
          'passNew': 0,
          'contra': '3901943',
          'inte': '01',
          'polizaLife': '',
          'polizaSeguros': '',
          'prepaga': '3',
          'nacimiento': '19640407'
        },
        'seguridad': {'appFechaExpiracion': null, 'prepagaAsociada': true}
      });
      request = LoginRequest.fromJson({
        'apiKey': 'cfe67e56f3c90368a238',
        'tipodoc': 'DU',
        'usrLoginName': 'userWebClient',
        'documento': '11447777',
        'password': 'Swiss1234',
        'device': {
          'bloqueado': true,
          'recordar': true,
          'deviceid': 'daro-device-id',
          'messagingid': 'EsteEsElIDDeMensajeria',
          'devicename': 'Juauei 0.8 Mate'
        }
      });
    });

    group('login', () {
      setUp(() {
        when(
          () => apiClient.post(
            any(),
            queryParameters: any(named: 'queryParameters'),
          ),
        ).thenAnswer((_) async => response);
      });

      test('login success', () async {
        when(() => response.statusCode).thenReturn(HttpStatus.ok);
        when(() => response.body).thenReturn(jsonEncode(responseLogin));

        final result = await resource.login(userData: request);

        result.fold(
          (l) => fail('Should not be a left'),
          (r) => expect(r, equals(responseLogin)),
        );
      });
    });
  });
}
 */
