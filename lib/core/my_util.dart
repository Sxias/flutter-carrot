import 'package:intl/intl.dart';

String formatToMoney(String price) {
  final formatter = NumberFormat('#,###');
  return formatter.format(int.parse(price));
}

// 클래스 내부 함수의 확장 기능 : extension on
extension MoneyFormatter on String {
  String toMoney() {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(this));
  }
}
