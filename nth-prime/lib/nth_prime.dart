class NthPrime {
  int prime(int n) {
    var candidate = 2;
    var found = 0;
    while (found != n) {
      if (List.generate(candidate - 2, (e) => n % (e + 2) == 0)
              .where((e) => e == false)
              .length ==
          0) {
        found++;
        break;
      }
      candidate++;
    }
    return candidate;
  }
}
