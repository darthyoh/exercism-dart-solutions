class PrimeFactors {
  List<int> factors(int n) {
    List<int> primes = [];
    if (n == 1) return primes;
    while (n != 1) {
      for (int i = 2; i <= n; i++) {
        if (n % i == 0) {
          primes.add(i);
          n = n ~/ i;
          break;
        }
      }
    }
    return primes;
  }
}
