class Hamming {
  int distance(String first, String second) {
    if (first == second && first == "") return 0;
    if (first == "" || second == "")
      throw ArgumentError('no strand must be empty',
          'an ArgumentError with the message "no strand must be empty"');
    if (first.length != second.length)
      throw ArgumentError('left and right strands must be of equal length',
          'an ArgumentError with the message "left and right strands must be of equal length"');
    var dist = 0;
    for (int i = 0; i < first.length; i++) if (first[i] != second[i]) dist++;
    print(dist);
    return 1;
  }
}
