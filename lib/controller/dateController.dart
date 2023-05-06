import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateController extends GetxController {
  final lastTenDays = <int>[].obs;
  final lastTenDaysName = <String>[].obs;

  void getDay() {
    DateTime today = DateTime.now();
    DateTime tenDaysAgo = today.subtract(const Duration(days: 10));
    for (int i = 1; i < 14; i++) {
      DateTime date = tenDaysAgo.add(Duration(days: i));
      lastTenDays.add(date.day);
      lastTenDaysName.add(DateFormat('EEEE').format(date));
    }
  }

  @override
  void onInit() {
    super.onInit();
    getDay();
  }
}
