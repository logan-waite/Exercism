import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    // print(number.toString().split('').map((n) => int.parse(n)));
    final Iterable<int> numberList = _convertToNumberArray(number);
    final num answer = _calculateNumber(numberList);
    
    return answer == number;
  }

  Iterable<int> _convertToNumberArray(int number) {
    return number.toString().split('')
      .map((n) => int.parse(n));
  }

  num _calculateNumber(Iterable<int> numbers) {
    return numbers.map<num>((n) => pow(n, numbers.length))
      .fold<num>(0, (total, n) => total + n);
  }
}
