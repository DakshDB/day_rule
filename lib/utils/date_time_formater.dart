import 'package:intl/intl.dart';

String formatDate(DateTime dateTime) {
  final formatter = DateFormat('EEE, dd MMM yyyy');
  return formatter.format(dateTime);
}
