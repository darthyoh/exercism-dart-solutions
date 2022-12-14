class PhoneNumber {
  String clean(String str) {
    if (RegExp(r'[a-zA-Z]').hasMatch(str))
      throw FormatException('letters not permitted');
    str = str.replaceAll(RegExp(r'[\+\.\-\(\) ]'), "");
    if (RegExp(r'[^0-9]').hasMatch(str))
      throw FormatException('punctuations not permitted');

    if (str.length == 11 && str[0] != "1")
      throw FormatException('11 digits must start with 1');
    if (str.length > 11) throw FormatException('more than 11 digits');
    if (str.length < 10) throw FormatException('incorrect number of digits');
    var re = RegExp(r'^\d*([0-9])\d{2}([0-9])\d{6}$');
    var match = re.firstMatch(str);
    if (match != null) {
      if (match.group(1) == "0")
        throw FormatException('area code cannot start with zero');
      if (match.group(1) == "1")
        throw FormatException('area code cannot start with one');
      if (match.group(2) == "0")
        throw FormatException('exchange code cannot start with zero');
      if (match.group(2) == "1")
        throw FormatException('exchange code cannot start with one');
    }
    return str.length == 10 ? str : str.substring(1);
  }
}
