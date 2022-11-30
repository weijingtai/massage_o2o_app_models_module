import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

final _dateFormatter = DateFormat('M/d/yyyy');
final _isoFormatter = DateFormat('yyyy-MM-ddTHH:mm:ss.SSSZ');

class DatetimeUTCISOJsonToLocalConvetor
    implements JsonConverter<DateTime, String> {
  const DatetimeUTCISOJsonToLocalConvetor();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json).toLocal();
  }

  @override
  String toJson(DateTime object) {
    var res = object.toUtc().toIso8601String();
    // check if res container microseconds
    var splited = res.split('.');
    var milliseconds = splited[1];
    if (milliseconds.length > 4) {
      // remove microseconds
      res = '${splited[0]}.${milliseconds.substring(0, 3)}Z';
    }

    return res;
  }
}
