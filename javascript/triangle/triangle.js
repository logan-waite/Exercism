export default class Triangle {
  constructor(...sides) {
    this.sides = sides.sort((a,b) => a > b)
    this.isValid = sides.length === 3 && sides[2] < sides[0] + sides[1]
  }

  kind () {
    if (!this.isValid) { throw new Error("Not a valid triangle") }
    let unique = [...new Set(this.sides)]
    if (unique.length === 1) { return 'equilateral' }
    else if (unique.length === 2) { return 'isosceles' }
    else { return 'scalene' }
  }
}