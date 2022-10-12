class MatchingBrackets {
  bool isPaired(String str) {
    str = str.replaceAll(RegExp(r'[^\(\{\[\]\}\)]'), "");

    List<String> current = [];
    for (String c in str.split("")) {
      if (current.length == 0 && "])}".contains(c)) return false;
      if ("({[".contains(c)) {
        current.add(c);
      }
      if ((c == ")" && current[current.length - 1] == "(") ||
          (c == "}" && current[current.length - 1] == "{") ||
          (c == "]" && current[current.length - 1] == "[")) {
        current.removeLast();
      } else if ((c == ")" && current[current.length - 1] != "(") ||
          (c == "}" && current[current.length - 1] != "{") ||
          (c == "]" && current[current.length - 1] != "[")) {
        return false;
      }
    }
    return current.length == 0;
  }
}
