const range = (max: number, min: number = 0): number[] => [...Array(max).keys()].map(i => i + min)
const sumArray = (numbers: number[]): number => numbers.reduce((acc, cur) => acc + cur)

class Squares {
  private numbers: number[]

  constructor(number: number) {
    this.numbers = range(number, 1)
  }

  get sumOfSquares(): number {
    return this.numbers.reduce((acc, cur) => acc + (cur ** 2), 0)
  }

  get squareOfSum(): number {
    return sumArray(this.numbers) ** 2
  }

  get difference(): number {
    return this.squareOfSum - this.sumOfSquares
  }

}

export default Squares
