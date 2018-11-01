export const steps = function(n) {
  if (n <= 0) { throw new Error("Only positive numbers are allowed")}
  return process(n, 0)
}

function process(n, step) {
  if (n > 1) {
    if (n % 2 === 0) {
      return process(n / 2, step + 1)
    } else {
      return process((3 * n) + 1, step + 1)
    }
  } else {
    return step
  }
}