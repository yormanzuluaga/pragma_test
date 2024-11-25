part of 'injection_container.dart';

void _initResourcesInjections() {
  sl.registerLazySingleton<BreedsResource>(
    () => BreedsResource(
      apiClient: sl(),
    ),
  );
}
