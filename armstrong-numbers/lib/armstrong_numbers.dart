import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    if (number < 10) return true;
    String str = number.toString();
    return str
            .split("")
            .fold(0, (num a, String c) => a + pow(int.parse(c), str.length)) ==
        number;
  }
}
