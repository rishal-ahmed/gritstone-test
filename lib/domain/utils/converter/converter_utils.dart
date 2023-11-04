import 'dart:convert';

import 'package:intl/intl.dart';

class ConverterUtils {
  ConverterUtils._();

  static final ConverterUtils _instance = ConverterUtils._();

  factory ConverterUtils() => _instance;

  //* ==--==--==--==-- Round Number --==--==--==--==
  String amountRounderString(num amount) {
    final roundedAmount = num.parse(amount.toStringAsFixed(2));
    return roundedAmount.toString();
  }

  //* ==--==--==--==-- Round Number --==--==--==--==
  num amountRounder(num amount) {
    final roundedAmount = num.parse(amount.toStringAsFixed(2));
    return roundedAmount;
  }

  //* ==--==--==--==-- Strip HTML from STring --==--==--==--==
  String stripHtmlIfNeeded(String text) {
    return text.replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), ' ').trim();
  }

  //* ==--==--==--==-- Convert Amount to Currency depending on the locale --==--==--==--==
  final NumberFormat currency =
      NumberFormat.currency(symbol: '', locale: 'en_US');

  //* ==--==--==--==-- Compare Dates --==--==--==--==
  bool isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  //* ==--==--==--==-- Model to Json String --==--==--==--==
  String modelToJsonString(dynamic model) {
    return jsonEncode(model.toJson());
  }

  //  final NumberFormat roundNumber = NumberFormat("###.0#", "en_US");

  //* ==--==--==--==-- Convert Date and Time to readable Format --==--==--==--==
  final DateFormat dateFormat = DateFormat('dd-MM-yyyy');
  final DateFormat dateShort = DateFormat("dd MMM yyyy");
  final DateFormat dateTimeShort = DateFormat("dd MMM yyyy hh:mm");
  final DateFormat dateTimeShortAmPm = DateFormat("dd MMM yyyy hh:mm a");
  final DateFormat dateFormatReverse = DateFormat('yyyy-MM-dd');
  final DateFormat dateForDatabase = DateFormat('yyyy-MM-dd HH:mm:ss');
  final DateFormat dateFormatEInvoice = DateFormat('yyyy-MM-dd h:mm');
  final DateFormat dateTimeFormatAmPm = DateFormat('dd-MM-yyyy h:mm a');
  final DateFormat dateTimeFormatTransaction =
      DateFormat("dd MMMM yyyy 'at' hh:mm");
  final DateFormat dateTimeFormat = DateFormat('dd-MM-yyyy, h:mm');
  final DateFormat dateTimeForFileName = DateFormat('dd-MM-yyyy-h~mma');
}
