class RnaTranscription {
  Map<String, String> _nucleotides = {
    "G": "C",
    "C": "G",
    "T": "A",
    "A": "U"
  };

  String toRna(String sequence) {
    return sequence.splitMapJoin(new RegExp(r"([A-Z])"), onMatch: (m) => _mapNucleotide(m.group(0)));
  }

  String _mapNucleotide(String n) {
    if (_nucleotides.containsKey(n)) {
      return _nucleotides[n];
    }

    throw ArgumentError();
  }
}