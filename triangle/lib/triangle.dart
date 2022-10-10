class Triangle {
  bool isValid(double f, double s, double t) =>
      f > 0 && s > 0 && t > 0 && f + s >= t && f + t >= s && s + t >= f;
  bool equilateral(double f, double s, double t) =>
      isValid(f, s, t) && f == s && f == t;
  bool isosceles(double f, double s, double t) =>
      isValid(f, s, t) && (f == s || f == t || s == t);
  bool scalene(double f, double s, double t) =>
      isValid(f, s, t) && f != s && f != t && s != t;
}
