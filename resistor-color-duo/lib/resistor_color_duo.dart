class ResistorColorDuo {
  static const theColors = [
    'black',
    'brown',
    'red',
    'orange',
    'yellow',
    'green',
    'blue',
    'violet',
    'grey',
    'white',
  ];
  int value(List<String> colors) => int.parse(colors
      .map((color) => theColors.indexOf(color))
      .toList()
      .sublist(0, 2)
      .join(""));
}
