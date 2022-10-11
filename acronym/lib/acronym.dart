class Acronym {
  String abbreviate(String input) => input
      .toUpperCase()
      .replaceAll(RegExp(r'[^A-Z ]'), "")
      .replaceAll(RegExp(r'[ ]{2,}'), " ")
      .split(" ")
      .map((e) => e[0])
      .join("");
}
