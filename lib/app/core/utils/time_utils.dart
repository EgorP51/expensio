class TimeUtils {
  String formatDateTime(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  String dateTimeFromMilliseconds(int milliseconds) {
    if (milliseconds == 0) {
      return formatDateTime(DateTime.now());
    } else {
      final dateTime = DateTime.fromMillisecondsSinceEpoch(milliseconds * 1000);
      return formatDateTime(dateTime);
    }
  }

  int getUnixTimeForPreviousDay(int n) {
    DateTime targetDate = DateTime.now().subtract(Duration(days: n));

    if (n == 0) {
      DateTime today = DateTime.now();
      targetDate = DateTime(today.year, today.month, today.day);
    }

    return targetDate.millisecondsSinceEpoch ~/ 1000;
  }
}
