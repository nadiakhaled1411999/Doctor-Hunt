class CalendarFormatters {
  static String dowTextFormatter(DateTime date, dynamic locale) {
    const days = ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'];
    return days[date.weekday - 1];
  }
}
