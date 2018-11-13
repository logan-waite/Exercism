export function compute (strandA, strandB) {
  let a = strandA.split('')
  let b = strandB.split('')
  let changes = 0

  if (a.length !== b.length) {
    throw new Error('left and right strands must be of equal length')
  }

  for (let i = 0; i < a.length; i++) {
    if (a[i] !== b[i]) {
      changes += 1
    } 
  }

  return changes
}