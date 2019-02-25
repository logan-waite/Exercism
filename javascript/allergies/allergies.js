export class Allergies {
  constructor (num) {
    this.num = num

    this.allergies = {
      eggs: 1,
      peanuts: 2,
      shellfish: 4,
      strawberries: 8,
      tomatoes: 16,
      chocolate: 32,
      pollen: 64,
      cats: 128
    }
  }

  allergicTo (allergy) {
    return this.list().filter(key => key === allergy).length > 0
  }

  list () {
    return Object.keys(this.allergies)
      .map(key => (this.allergies[key] & this.num ? key : ''))
      .filter(x => x != '')
  }
}
