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
}
