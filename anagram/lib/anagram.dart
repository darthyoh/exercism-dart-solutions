import 'package:collection/collection.dart';

class Anagram {
  List<String> findAnagrams(String str, List<String> candidates) {
    Map<String, int> generateMap(String s) {
      return s.split('').fold({}, (a, c) {
        if (a[c] == null) a[c] = 0;
        a[c] = a[c]! + 1;
        return a;
      });
    }

    var strMap = generateMap(str.toUpperCase());

    return candidates
        .where((c) =>
            MapEquality<String, int>()
                .equals(strMap, generateMap(c.toUpperCase())) &&
            c.toUpperCase() != str.toUpperCase())
        .toList();
  }
}
