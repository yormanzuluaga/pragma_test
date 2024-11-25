import 'package:api_helper/api_helper.dart';
import 'package:api_repository/api_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:pragma_ui/pragma_ui.dart';

class ExampleRepositoryImpl extends ExampleRepository {
  ExampleResource exampleResource;

  ExampleRepositoryImpl({
    required this.exampleResource,
  });

  @override
  Future<Either<Failure, dynamic>> example({required String type, Map<String, String>? headers}) async {
    try {
      final exampleModel = await exampleResource.getExampleList(type: type, headers: headers);

      return Right(exampleModel);
    } on GeneralException catch (e) {
      return Left(GeneralFailure(e.msg));
    }
  }
}
