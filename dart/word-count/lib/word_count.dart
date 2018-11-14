class WordCount {
  Map<String, int>countWords(String string) {
    final RegExp exp = new RegExp(r"(\w+('\w+)?)");
    return exp.allMatches(string.toLowerCase())
      .map((m) => m.group(0))
      .fold(new Map<String, int>(), (Map<String, int> wordCounts, String word) {
        if (wordCounts.containsKey(word)) {
          wordCounts[word] += 1;
        } else {
          wordCounts[word] = 1;
        }

        return wordCounts;
      });
  }
}
