import 'package:intl/intl.dart';

class CFormatter {
  CFormatter._();

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'id-ID', symbol: 'Rp').format(amount);
  }
}
