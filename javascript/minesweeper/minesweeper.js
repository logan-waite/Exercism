export function annotate (inBoard) {
  if (!inBoard || !inBoard[0]) {
    return inBoard
  }

  const board = inBoard.map(row => row.split(''))
  const beyondRowLimit = checkBounds(board)

  for (let r = 0; r < board.length; r++) {
    let row = board[r]
    const beyondColumnLimit = checkBounds(row)

    for (let c = 0; c < row.length; c++) {
      let column = row[c]
      if (board[r][c] === "*") {

      }
    }
  }
}

[r + 1][c - 1]
[r + 1][c]
[r + 1][c + 1]
[r][c + 1]
[r - 1][c + 1]
[r - 1][c]
[r - 1][c - 1]
[r][c - 1]

function incrementSpace (space) {
  if (space === "*") {
    return space
  } else if (space === ' ') {
    return "1"
  } else if (parseInt(space) !== NaN) {
    return parseInt(space) + 1
  }
}

var checkBounds = curry3((height, width, position) => {
  if (position)
})

function curry3 (f) {
  return function (a) {
    return function (b) {
      return function (c) {
        return f(a, b, c)
      }
    }
  }
}