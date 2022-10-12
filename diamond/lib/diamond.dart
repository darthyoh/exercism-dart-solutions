class Diamond {
  List<String> rows(String letter) {
    if (letter == "A") return ["A"];

    var letterRune = letter.codeUnitAt(0);

    //add first lines
    var lines = ['${" " * (letterRune - 65)}A${" " * (letterRune - 65)}'];

    //add intermediate lines
    for (int i = 1; i < letterRune - 65; i++) {
      lines.add(
          '${" " * (letterRune - 65 - i)}${String.fromCharCode(65 + i)}${" " * ((i - 1) * 2 + 1)}${String.fromCharCode(65 + i)}${" " * (letterRune - 65 - i)}');
    }

    return lines = [
      ...lines,
      '$letter${" " * ((letterRune - 65) * 2 - 1)}$letter',
      ...lines.reversed
    ];
  }
}
