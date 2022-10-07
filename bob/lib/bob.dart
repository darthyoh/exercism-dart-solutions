class Bob {
  String response(String question) {
    if (question.replaceAll(" ", "") == "") return "Fine. Be that way!";

    var isYelling = question == question.toUpperCase();

    //is a question?
    if (question[question.length - 1] == "?") {
      if (isYelling) {
        return "Calm down, I know what I'm doing!";
      } else {
        return "Sure";
      }
    }

    if (isYelling) {
      return "Whoa, chill out!";
    } else {
      return "Whatever.";
    }
  }
}
