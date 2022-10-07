class Anagram {
  List<String> findAnagrams(String str, List<String> candidates) {
    return candidates
        .where((c) => str == c.split('').reversed.join(''))
        .toList();
  }
}
