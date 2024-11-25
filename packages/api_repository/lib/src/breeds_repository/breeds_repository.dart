import 'package:api_helper/api_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:pragma_ui/pragma_ui.dart';

abstract class BreedsRepository {
  Future<Either<Failure, List<BreedsModel>>> getBreeds({Map<String, String>? headers});
}
