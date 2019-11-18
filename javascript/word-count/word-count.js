function countWords (acc, cur) {
  const word = cur.toLowerCase()
  if (word !== '') {
    acc[word] = (acc[word] || 0) + 1
  }
  return acc
}

export class Words {
  count (string) {
    return string.split(/\s/).reduce(countWords, {})
  }
}
