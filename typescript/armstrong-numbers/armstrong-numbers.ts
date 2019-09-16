class ArmstrongNumbers {
  public static isArmstrongNumber(number: number) {
    const createNumberArray = (number: number): number[] =>
      number.toString().split('').map(number => +number)

    const numbers = createNumberArray(number)
    const answer = numbers
      .map(num => num ** numbers.length)
      .reduce((sum, num) => sum + num)

    return answer === number
  }
}

export default ArmstrongNumbers
