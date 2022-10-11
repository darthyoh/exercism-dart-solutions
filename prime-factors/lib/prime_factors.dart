class PrimeFactors {
  List<int> factors(int n) {
    List<int> primes = [];
    if (n == 1) return primes;
    while (primes.fold(0, (int a, int c) => a * c) != n) {
      for (int i = 2; i <= n; i++) {
        if (n % i == 0) {
          primes.add(i);
          n = n / i as int;
          break;
        }
      }
    }
    return primes;
  }
}
