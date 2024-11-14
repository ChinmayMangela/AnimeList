
import 'package:intl/intl.dart';

class Utils {

  static String getFormattedDate(DateTime date) {
    final formatter = DateFormat('yMd');
    return formatter.format(date);
  }
}