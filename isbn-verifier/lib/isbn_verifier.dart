// Put your code here
bool isValid(String number) {
  number = number.replaceAll("-", "");
  if (number.length != 10) return false;
  var re = RegExp(r'^[0-9]{9}[0-9X]{1}$');
  if (!re.hasMatch(number)) return false;

  var sum = 0;
  for (int i = 0; i < number.length; i++) {
    if (i == 9 && number[i] == "X")
      sum += 10;
    else
      sum += int.parse(number[i]) * (10 - i);
  }
  return sum % 11 == 0;
}
