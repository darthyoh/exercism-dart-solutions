import 'dart:math';

class Darts {
  int score(double x, double y) {
    var distance = sqrt(x * x + y * y);

    if (distance <= 1.0)
      return 10;
    else if (distance <= 5.0)
      return 5;
    else if (distance <= 10.0) return 1;
    return 0;
  }
}
