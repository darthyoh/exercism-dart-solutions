class Node {
  String data;
  Node? left;
  Node? right;

  Node(this.data);

  void insert(String value) {
    if (int.parse(value) <= int.parse(this.data)) {
      if (left == null) {
        this.left = Node(value);
      } else {
        this.left!.insert(value);
      }
    } else {
      if (right == null) {
        this.right = Node(value);
      } else {
        this.right!.insert(value);
      }
    }
  }

  List<String> sortedData() => [
        if (this.left != null) ...this.left!.sortedData(),
        this.data,
        if (this.right != null) ...this.right!.sortedData()
      ];
}

class BinarySearchTree {
  late Node root;
  BinarySearchTree(String initialRootValue) {
    this.root = Node(initialRootValue);
  }

  BinarySearchTree insert(String value) {
    this.root.insert(value);
    return this;
  }

  List<String> get sortedData => this.root.sortedData();
}
