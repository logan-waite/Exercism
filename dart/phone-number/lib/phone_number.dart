class PhoneNumber {
  String clean(String number) {
    final RegExp exp = new RegExp(r"([0-9])");
    final String cleanedNumber = exp.allMatches(number).map((n) => n.group(0)).join('');

    if ((cleanedNumber.length == 11 && cleanedNumber[0] == "1") 
      && _isValidNumber(cleanedNumber.substring(1))) {
        return cleanedNumber.substring(1);
    }
    
    if (cleanedNumber.length == 10 && _isValidNumber(cleanedNumber)) return cleanedNumber;

    return null;
  }

  bool _isValidNumber(String number) {
    return (int.parse(number[0]) > 1 && int.parse(number[3]) > 1);
  }
}
