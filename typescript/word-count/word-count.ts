const getWords = (string: string): string[] => {
  return string
    .toLowerCase()
    .trim()
    .split(/\s+/)
}

class Words {
  count(string: string): Map<string, number> {
    return getWords(string)
      .reduce((acc: Map<string, number>, word): Map<string, number> =>
        acc.set(word, (acc.get(word) || 0) + 1),
        new Map<string, number>())

  }
}

export default Words
