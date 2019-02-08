class Diamond {
  List<String> _alphabet = <String>["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];

  String _getSpaces(int number) {
    String _spaces = "";
    if (number > 0) {
      for (int i = 0; i < number; i++) {
        _spaces += " ";
      }
    }
    return _spaces;
  }

  List<String> rows(String letter) {
    int _letterIndex = _alphabet.indexOf(letter);
    List<String> _rows = new List<String>();
    int i = 0;
    bool goingUp = true;

    while(i > -1) {
      
      if (i == 0) {
        print(_letterIndex - i);
        _rows.add(_getSpaces(_letterIndex - i) + _alphabet[0] + _getSpaces(_letterIndex - i));
      } else {

      }
    }

    return _rows;
  }
}
