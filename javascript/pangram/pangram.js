function isAlpha(l) {
  return /^[a-z]$/.test(l)
}

export function isPangram(string) {
  let alphaArray = string.toLowerCase()
    .split('').filter(isAlpha)

  let unique = new Set(alphaArray)
  return unique.size === 26
}