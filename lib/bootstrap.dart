// ignore_for_file: unintended_html_in_doc_comment

import 'dart:async';
import 'dart:developer';
import 'package:api_helper/api_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma_test/injection/injection_container.dart' as injection;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger_extension/logger.dart';

/// {@template app-bloc-observer}
/// The `AppBlocObserver` class is a custom implementation of the
/// `BlocObserver` class in Dart that logs changes and errors
/// that occur in BLoCs.
/// {@endtemplate}
class AppBlocObserver extends BlocObserver {
  /// {@macro app-bloc-observer}
  const AppBlocObserver();

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    LoggerEvents().debug('onCreate(${bloc.runtimeType})');
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    LoggerEvents().debug('onClose(${bloc.runtimeType})');
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    LoggerEvents().debug('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    LoggerEvents().error('onError(${bloc.runtimeType}, $error, $stackTrace)');
  }
}

/// The `bootstrap` function sets up error handling, initializes the `Bloc`
/// observer, initializes configuration, adds cross-flavor configuration,
/// and runs the provided builder function to start the Flutter application.
///
/// Args:
///   builder (FutureOr<Widget> Function()): The `builder` parameter is a
/// function that returns a `Widget` or a `Future` that resolves to a `Widget`.
/// It is used to build the root widget of the application.
Future<void> bootstrap({
  required FutureOr<Widget> Function() builder,
  required Environments env,
}) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    log(error.toString(), stackTrace: stack);
    return true;
  };

  if (kIsWeb && const bool.hasEnvironment('DYNATRACE_WEB_ID')) {
  } else if (const bool.hasEnvironment('DYNATRACE_APP_ID') && const bool.hasEnvironment('DYNATRACE_BEACON_URL')) {}

  Bloc.observer = const AppBlocObserver();

  await injection.init(
    environment: env,
    onError: (exception, stack) {},
  );
  runApp(await builder());
}
