class Bob {
  String response(String question) {
    question = question.replaceAll(RegExp(r'\s'), "");
    if (question == "") return "Fine. Be that way!";

    var isYelling = question == question.toUpperCase() &&
        RegExp(r'[A-Z]').hasMatch(question.toUpperCase());

    //is a question?
    if (question[question.length - 1] == "?") {
      if (isYelling) {
        return "Calm down, I know what I'm doing!";
      } else {
        return "Sure.";
      }
    }

    if (isYelling) {
      return "Whoa, chill out!";
    } else {
      return "Whatever.";
    }
  }
}
