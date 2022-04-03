import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ConversionUtils {
  static const SERVER_FORMAT_DATE_TIME = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";//("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
  static const DISPLAY_DATE_TIME = "dd-MM-yyyy";
  static const DISPLAY_TIME = "hh:mm a";
  static const DISPLAY_DATE = "dd-MM-yyyy";

  static String convertToDisplayDate(String? date,
      {String currentFormat = SERVER_FORMAT_DATE_TIME}) {
    if (date?.isNotEmpty == true) {
      DateTime inputDate = DateTime.parse(date!);
      return toDisplayDate(inputDate);
    } else {
      return "";
    }
  }

  static String toDisplayDate(DateTime date) {
    var formatter = DateFormat(DISPLAY_DATE+"\n"+DISPLAY_TIME);
    if (isToday(date)) {
      formatter = DateFormat(DISPLAY_DATE+"\n"+DISPLAY_TIME);
    }
    return formatter.format(date);
  }

  static bool isToday(DateTime date) {
    final now = DateTime.now();
    return now.day == date.day &&
        now.month == date.month &&
        now.year == date.year;
  }

}