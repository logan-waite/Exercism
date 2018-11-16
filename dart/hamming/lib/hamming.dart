class Hamming {
  int distance(String a, String b) {
    if (a.length != b.length) throw ArgumentError();
    int differences = 0;

    for( int i = 0; i < a.length; i++) {
      if (a[i] != b[i]) differences += 1;
    }

    return differences;
  }
}
