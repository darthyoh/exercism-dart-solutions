class Minesweeper {
  List<String> matrix;

  Minesweeper(this.matrix);

  List<String> get annoted {
    int adjacents(int r, int c) {
      return [
        [r - 1, c],
        [r + 1, c],
        [r - 1, c - 1],
        [r - 1, c + 1],
        [r + 1, c - 1],
        [r + 1, c + 1],
        [r, c + 1],
        [r, c - 1],
      ]
          .where((element) =>
              element[0] >= 0 &&
              element[0] < this.matrix.length &&
              element[1] >= 0 &&
              element[1] < this.matrix[0].length)
          .map((element) => this.matrix[element[0]][element[1]])
          .where((element) => element == "*")
          .length;
    }

    List<String> output = [];
    for (int r = 0; r < this.matrix.length; r++) {
      String line = "";
      for (int c = 0; c < this.matrix[r].length; c++) {
        if (this.matrix[r][c] == "*")
          line += "*";
        else
          line += adjacents(r, c) == 0 ? " " : adjacents(r, c).toString();
      }
      output.add(line);
    }
    return output;
  }
}
