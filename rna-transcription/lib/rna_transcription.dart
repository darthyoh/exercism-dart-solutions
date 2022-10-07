class RnaTranscription {
  static const trans = {"G": "C", "C": "G", "T": "A", "A": "U"};
  String toRna(String input) =>
      input.split("").map((e) => RnaTranscription.trans[e]).join("");
}
