class Pangram {
  bool isPangram(String str) {
    if (str == '') return false;
    List<String> mapping = [];

    for (String c in str.toLowerCase().replaceAll(" ", "").split("")) {
      if (mapping.contains(c)) return false;
      mapping.add(c);
    }
    return true;
  }
}
