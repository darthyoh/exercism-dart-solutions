class Isogram {
  bool isIsogram(String str) {
    List<String> mapping = [];
    for (String c
        in str.toLowerCase().replaceAll(RegExp(r'\W'), '').split("")) {
      if (mapping.contains(c)) {
        return false;
      }
      mapping.add(c);
    }

    return true;
  }
}
