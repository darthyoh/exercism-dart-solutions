class Luhn {
  bool valid(String n) {
    if (RegExp(r'^[0-9\- ]+$').allMatches(n) == false) return false;
    return n
                .replaceAll(RegExp(r'[^0-9]'), '')
                .split("")
                .reversed
                .toList()
                .asMap()
                .entries
                .map((entry) {
              if (entry.key % 2 != 0) return int.parse(entry.value);
              return int.parse(entry.value) * 2 > 9
                  ? int.parse(entry.value) * 2 - 9
                  : int.parse(entry.value) * 2;
            }).fold(0, (int a, int c) => a + c) %
            10 ==
        0;
  }
}
