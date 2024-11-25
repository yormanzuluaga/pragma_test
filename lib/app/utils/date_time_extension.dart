import 'package:pragma_test/app/utils/format_helpers.dart';

/// Extension to make displaying [DateTime] objects simpler.
extension DateTimeEx on DateTime {
  ///
  String toFormat({
    required TypeFormat typeFormat,
    LocationFormat locationFormat = LocationFormat.es,
  }) {
    return AppFormatters.instance.dateFormatUtil(dateTime: this, typeFormat: typeFormat);
  }
}
