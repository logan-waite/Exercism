class Acronym {
  String abbreviate(String phrase) {
    return new RegExp(r"\b\w")
      .allMatches(phrase)
      .map((m) => m.group(0))
      .join('').toUpperCase();
  }
}
