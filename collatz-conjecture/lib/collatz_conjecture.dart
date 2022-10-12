class CollatzConjecture {
  int steps(int n, {int step = 0}) {
    if (n <= 0)
      throw ArgumentError('Only positive numbers are allowed',
          'an ArgumentError with the message "Only positive numbers are allowed"');
    if (n == 1) return step;
    return n % 2 == 0
        ? steps(n ~/ 2, step: step + 1)
        : steps(3 * n + 1, step: step + 1);
  }
}
