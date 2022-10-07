class Raindrops {
  String convert(int number) {
    var str = "";
    if (number % 3 == 0) str += "Pling";
    if (number % 5 == 0) str += "Plang";
    if (number % 7 == 0) str += "Plong";

    return str == "" ? "$number" : str;
  }
}
