class Bicycle {
  int cadence;
  int _speed = 0;
  int gear;

  Bicycle(this.cadence, this.gear);
  /* The code above is equivalent to the following, which uses an initializer list:
      Bicycle(int cadence, int speed, int gear)
      : this.cadence = cadence,
        this.speed = speed,
        this.gear = gear;*/

  int get speed => _speed;

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

void main() {
  //use final instead of var if variable won't change.
  var bike = Bicycle(2, 1);

  print(bike);
  print(bike.cadence);
  bike.cadence = 100;
  print(bike.cadence);
  bike.speedUp(10);
  print(bike);
  //print() function accepts any object (not just strings).
  //It converts it to a String using the object's toString() method.
}
