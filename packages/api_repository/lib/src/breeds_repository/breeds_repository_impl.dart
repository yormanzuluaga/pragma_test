import 'package:api_helper/api_helper.dart';
import 'package:api_repository/api_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:pragma_ui/pragma_ui.dart';

class BreedsRepositoryImpl extends BreedsRepository {
  BreedsResource breedsResource;

  BreedsRepositoryImpl({
    required this.breedsResource,
  });

  @override
  Future<Either<Failure, List<BreedsModel>>> getBreeds({Map<String, String>? headers}) async {
    try {
      final breedsModel = await breedsResource.getBreeds(headers: headers);

      return Right(breedsModel);
    } on GeneralException catch (e) {
      return Left(GeneralFailure(e.msg));
    }
  }
}
