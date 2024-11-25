// ignore_for_file: unintended_html_in_doc_comment

import 'dart:async';
import 'dart:developer';
// import 'dart:io' as io;
import 'package:api_helper/api_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma_test/injection/injection_container.dart' as injection;
// import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart'
//     as dynatrace;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
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
    if (!kIsWeb) {
      FirebaseCrashlytics.instance.recordError(error, stackTrace, fatal: true);
      // final platform = io.Platform.isAndroid ? dynatrace.Platform.Android : dynatrace.Platform.iOS;
      // dynatrace.Dynatrace().reportZoneStacktrace(error, stackTrace, platform: platform);
    }
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
    if (!kIsWeb) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(details);
      if (details.stack != null) {
        // final platform = io.Platform.isAndroid ? dynatrace.Platform.Android : dynatrace.Platform.iOS;
        // dynatrace.Dynatrace().reportZoneStacktrace(details, details.stack!, platform: platform);
      } else {
        /// Define error code to [1000]
        // dynatrace.Dynatrace().reportError(details.exceptionAsString(), 1000);
      }
    }
  };

  // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
  PlatformDispatcher.instance.onError = (error, stack) {
    log(error.toString(), stackTrace: stack);
    if (!kIsWeb) {
      // FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      // final platform = io.Platform.isAndroid ? dynatrace.Platform.Android : dynatrace.Platform.iOS;
      // dynatrace.Dynatrace().reportZoneStacktrace(error, stack, platform: platform);
    }
    return true;
  };

  if (kIsWeb && const bool.hasEnvironment('DYNATRACE_WEB_ID')) {
  } else if (const bool.hasEnvironment('DYNATRACE_APP_ID') && const bool.hasEnvironment('DYNATRACE_BEACON_URL')) {
    // Add cross-flavor configuration here
    // await dynatrace.Dynatrace().startWithoutWidget(
    //   configuration: const dynatrace.Configuration(
    //     applicationId: String.fromEnvironment('DYNATRACE_APP_ID'),
    //     beaconUrl: String.fromEnvironment('DYNATRACE_BEACON_URL'),
    //     userOptIn: true,
    //   ),
    // );
  }

  Bloc.observer = const AppBlocObserver();

  await injection.init(
    environment: env,
    onError: (exception, stack) {
      if (!kIsWeb) {
        FirebaseCrashlytics.instance.recordError(exception, stack);
        // final platform = io.Platform.isAndroid ? dynatrace.Platform.Android : dynatrace.Platform.iOS;
        // dynatrace.Dynatrace().reportZoneStacktrace(exception, stack ?? StackTrace.fromString(''), platform: platform);
      }
    },
  );
  runApp(await builder());
}
