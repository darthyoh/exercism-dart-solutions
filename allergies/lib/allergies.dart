class Allergies {
  static const allergies = [
    "eggs",
    "peanuts",
    "shellfish",
    "strawberries",
    "tomatoes",
    "chocolate",
    "pollen",
    "cats",
  ];

  bool allergicTo(String element, int score) => allergies
      .asMap()
      .entries
      .where((entry) => (score >> entry.key) % 2 != 0)
      .map((entry) => entry.value)
      .contains(element);

  List<String> list(int num) => allergies
      .asMap()
      .entries
      .where((entry) => (num >> entry.key) % 2 != 0)
      .map((entry) => entry.value)
      .toList();
}
