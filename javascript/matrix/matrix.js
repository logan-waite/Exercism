export class Matrix {
  constructor(matrixString) {
    this.matrix = matrixString
  }

  get rows() {
    return this.matrix.split("\n")
    .map(row => 
      row.split(" ")
        .map(number => 
          parseInt(number)
        )
    )
        
  }

  get columns() {
    return this.rows[0].map((col, i) => 
      this.rows.map(row => row[i]))
  }
}
