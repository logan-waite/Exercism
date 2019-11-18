//
// This is only a SKELETON file for the 'Pascals Triangle' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

export class Triangle {
  _rows = []
  constructor(numRows) {
    this._rows = calculateRows(numRows)
  }

  pascal (row, column) {
    if (column === 0) {
      return 1
    }

    if (row === 0 && row === column) {
      return 1
    }

    return pascal(row - 1, column - 1) + pascal(row, column - 1)

  }

  get lastRow () {
    throw new Error("Remove this statement and implement this function");
  }

  get rows () {
    return this._rows
  }

  set rows (rows) {
    this._rows = rows
  }
}
