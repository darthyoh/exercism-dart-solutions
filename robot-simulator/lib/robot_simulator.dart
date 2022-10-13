import "position.dart";
import "orientation.dart";

class Robot {
  Position position;
  Orientation orientation;

  Robot(this.position, this.orientation);

  void turn(bool clockwise) {
    switch (this.orientation) {
      case Orientation.east:
        {
          this.orientation =
              clockwise == true ? Orientation.south : Orientation.north;
        }
        break;
      case Orientation.west:
        {
          this.orientation =
              clockwise == true ? Orientation.north : Orientation.south;
        }
        break;
      case Orientation.north:
        {
          this.orientation =
              clockwise == true ? Orientation.east : Orientation.west;
        }
        break;
      case Orientation.south:
        {
          this.orientation =
              clockwise == true ? Orientation.west : Orientation.east;
        }
        break;
    }
  }

  void run() {
    switch (this.orientation) {
      case Orientation.north:
        {
          this.position = Position(this.position.x, this.position.y + 1);
        }
        break;
      case Orientation.south:
        {
          this.position = Position(this.position.x, this.position.y - 1);
        }
        break;
      case Orientation.east:
        {
          this.position = Position(this.position.x + 1, this.position.y);
        }
        break;
      case Orientation.west:
        {
          this.position = Position(this.position.x - 1, this.position.y);
        }
        break;
    }
  }

  void move(String movement) {
    for (String m in movement.split('')) {
      if (m == "R") this.turn(true);
      if (m == "L") this.turn(false);
      if (m == 'A') this.run();
    }
  }
}
