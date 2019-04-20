export const isIsogram = string => {
  let set = new Set()
  let spaceSlash = 0
  string
    .toLowerCase()
    .split('')
    .map(letter => {
      if (letter === ' ' || letter === '-') {
        spaceSlash += 1
      } else {
        set.add(letter)
      }
    })
  return set.size + spaceSlash === string.length
}
