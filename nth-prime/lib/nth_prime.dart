class NthPrime {
  int prime(int n) {
    if (n == 0)
      throw ArgumentError('There is no zeroth prime',
          'an ArgumentError with the message "There is no zeroth prime"');
    bool isPrime(int n) {
      if (n < 2) return false;
      for (int i = 2; i < n; i++) if (n % i == 0) return false;
      return true;
    }

    var candidate = 2;
    var found = 0;
    while (found != n) {
      if (isPrime(candidate)) found++;
      if (found == n) return candidate;
      candidate++;
    }
    return 0;
  }
}
