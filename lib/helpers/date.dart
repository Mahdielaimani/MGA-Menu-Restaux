import 'package:intl/intl.dart';

String getDashboardDate() {
  DateTime now = DateTime.now();

  return DateFormat("EEEE, dd MMMM hh:mm").format(now);
}
