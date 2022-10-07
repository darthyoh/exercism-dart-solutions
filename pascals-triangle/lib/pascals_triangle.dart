class PascalsTriangle {
  List<List<int>> rows(int row) {
    if (row == 0) return [];
    if (row == 1)
      return [
        [1]
      ];
    var triangle = rows(row - 1);
    var lastLine = triangle[row - 2];
    var newLine = List<int>.generate(row, (i) => 1);
    for (int i = 1; i <= row - 2; i++) {
      newLine[i] = lastLine[i - 1] + lastLine[i];
    }
    triangle.add(newLine);
    return triangle;
  }
}
