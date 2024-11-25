part of 'injection_container.dart';

void _initRepositoriesInjections() {
  sl.registerLazySingleton<BreedsRepository>(
    () => BreedsRepositoryImpl(breedsResource: sl()),
  );
}
