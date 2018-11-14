import 'dart:math';

class DifferenceOfSquares {
  // Put your code here
  num squareOfSum(int n) {
    return _square(_sum(_range(n)));
  }

  num sumOfSquare(int n) {
    return _sum(_range(n).map(_square));
  }

  num differenceOfSquares(int n) {
    return squareOfSum(n) - sumOfSquare(n);
  }

  Iterable<int> _range(int end) {
    return Iterable.generate(end, (n) => n + 1);
  }

  int _sum(Iterable<int> numbers) {
    return numbers.fold(0, (total, number) => total + number);
  }

  int _square(int n) {
    return pow(n, 2).toInt();
  }
}
