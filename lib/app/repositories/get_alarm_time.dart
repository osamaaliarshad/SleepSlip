import 'package:intl/intl.dart';

class GetAlarmTime {
  DateTime _now = DateTime.now();
  //essentially, 1h:44m passed current time,
  //then 1h:30m passed each consecutive time.

  String getTime(int cycles) {
    if (cycles == 1) {
      return DateFormat('h:mma').format(
        _now.add(Duration(hours: 1, minutes: 44)),
      );
    } else if (cycles == 2) {
      return DateFormat('h:mma').format(
        _now.add(Duration(hours: 3, minutes: 14)),
      );
    } else if (cycles == 3) {
      return DateFormat('h:mma').format(
        _now.add(Duration(hours: 4, minutes: 44)),
      );
    } else if (cycles == 4) {
      return DateFormat('h:mma').format(
        _now.add(Duration(hours: 6, minutes: 14)),
      );
    } else if (cycles == 5) {
      return DateFormat('h:mma').format(
        _now.add(Duration(hours: 7, minutes: 44)),
      );
    } else if (cycles == 6) {
      return DateFormat('h:mma').format(
        _now.add(Duration(hours: 9, minutes: 14)),
      );
    } else {
      return null;
    }
  }

  refreshAlarms() {}
}
