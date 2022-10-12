class SecretHandshake {
  List<String> commands(int n) {
    List<String> list = ["wink", "double blink", "close your eyes", "jump"]
        .asMap()
        .entries
        .where((entry) => (n >> entry.key) % 2 != 0)
        .map((entry) => entry.value)
        .toList();

    return (n >> 4) % 2 == 0 ? list : list.reversed.toList();
  }
}
