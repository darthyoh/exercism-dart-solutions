class Pangram {
  bool isPangram(String str) {
    var map = Map<String, int>.fromIterables(
        "abcdefghijklmnopqrstuvwxyz".split(""),
        List<int>.generate(26, (index) => 0));

    str
        .toLowerCase()
        .replaceAll(RegExp(r"[^a-z]"), "")
        .split("")
        .forEach((element) {
      map[element] = map[element]! + 1;
    });

    for (int v in map.values) {
      if (v == 0) return false;
    }
    return true;
  }
}
