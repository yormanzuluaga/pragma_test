import 'package:dartz/dartz.dart';
import 'package:pragma_ui/pragma_ui.dart';

abstract class ExampleRepository {
  Future<Either<Failure, dynamic>> example({required String type, Map<String, String>? headers});
}
