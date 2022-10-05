import "dart:math";

class DifferenceOfSquares {
  int squareOfSum(int n) => pow(List<int>.generate(n, (i) => i+1).fold(0,(a, c) => a+c),2).toInt();
  int sumOfSquares(int n) => List<int>.generate(n, (i) => i+1).fold(0, (a,c) => a+pow(c,2).toInt());
  int differenceOfSquares(int n) => squareOfSum(n)-sumOfSquares(n);
}

