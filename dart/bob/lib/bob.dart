class Bob {
  String hey(String actualComment) {
    final comment = actualComment.trim();
    
    if (comment == '') return "Fine. Be that way!";
    if (_isQuestion(comment) && _isYelled(comment)) return "Calm down, I know what I'm doing!";
    if (_isQuestion(comment)) return "Sure.";
    if (_isYelled(comment)) return "Whoa, chill out!";

    return "Whatever.";
  }

  bool _isQuestion(String comment) {
    return comment.endsWith('?');
  }

  bool _isYelled(String comment) {
    final RegExp exp = new RegExp(r"([A-Za-z]+)");
    final strippedComment = exp.allMatches(comment).map((m) => m.group(0)).join(' ');

    return strippedComment == '' ? false : strippedComment.toUpperCase() == strippedComment;
  }
}
