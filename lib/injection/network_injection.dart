part of 'injection_container.dart';

void _initNetworkInjections(Environments environment, void Function(dynamic, StackTrace?)? onError) {
  sl
    ..registerSingleton<Env>(Env(value: environment))
    // ..registerSingleton<AnalyticsUtils>(AnalyticsUtils())
    ..registerLazySingleton<ApiClient>(() => ApiClient(env: sl(), onError: onError));
}
