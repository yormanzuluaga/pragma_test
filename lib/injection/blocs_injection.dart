part of 'injection_container.dart';

void _initBlocsInjections() {
  sl.registerFactory(
    () => AppBloc(
      env: sl(),
    ),
  );
  sl.registerFactory(
    () => AuthBloc(),
  );
  sl.registerFactory(
    () => BreedsBloc(breedsRepository: sl()),
  );
}
