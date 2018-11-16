class Anagram {
  List<String> findAnagrams(String word, List<String> possibilities) {
    return possibilities.where((w) => _lettersMatch(word, w)).toList();
  }

  bool _lettersMatch(String test, String word) {
    if (test.toLowerCase() == word.toLowerCase()) return false;
    return _arrangeWord(test) == _arrangeWord(word);
  }

  String _arrangeWord(String word) {
    return (word.toLowerCase().split('')..sort()).join();
  }
}
