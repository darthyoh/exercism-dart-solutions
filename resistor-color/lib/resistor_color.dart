class ResistorColor {
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

  int colorCode(String color) => theColors.indexOf(color);

  List<String> get colors => theColors;
}
