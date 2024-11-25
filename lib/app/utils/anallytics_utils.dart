// import 'package:dynatrace_flutter_plugin/dynatrace_flutter_plugin.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger_extension/logger.dart';

///
class AnalyticsUtils {
  ///
  AnalyticsUtils();

  ///
  FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.instance;

  ///
  // Dynatrace dynatrace = Dynatrace();

  ///
  Future<void> reportScreenView({required String screenId, required String screenName, String? screenClass}) async {
    LoggerEvents().debug('Report ScreenView: screenClass: $screenClass, screenName: $screenName, screen_id: $screenId');
    try {
      await firebaseAnalytics.logScreenView(
        screenClass: screenClass,
        screenName: screenName,
        parameters: {'screen_id': screenId},
      );
      // dynatrace
      //   ..reportStringValue('screen_view', screenName)
      //   ..reportStringValue('screen_id', screenId);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  ///
  Future<void> reportAction({
    required String name,
    required String actionName,
    Map<String, Object>? parameters,
  }) async {
    LoggerEvents().debug('Reports action: name: $name, actionName: $actionName');
    final newParameters = parameters ?? {};
    newParameters['action_name'] = actionName;
    try {
      await firebaseAnalytics.logEvent(
        name: name,
        parameters: newParameters,
      );
      // dynatrace.reportStringValue(name, actionName);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
