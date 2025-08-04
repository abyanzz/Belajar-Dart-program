class Animal {
  String name = '';
  int age = 0;
  double weight = 0.0;

  Animal(this.name, this.age, this.weight);

  void eat() {
    print('$name sedang makan.');
    weight = weight + 5.0;
  }
  void sleep() {
    print('$name sedang tidur.');
    weight = weight - 0.2;
  }
}

class Cat extends Animal {
  final String furColor;
  Cat(String name, int age, double weight , String furColor)
      : this.furColor = furColor, super(name, age, weight);

  void meow() {
    print('$name sedang mengeong.');
  }
  void berak() {
    print('$name sedang berak.');
    weight = weight - 1.5;
  }
}

void main() {
  var AbyanCAT = Cat('Grayson', 2, 4.5, 'Gray');

  print('Berat sebelum makan: ${AbyanCAT.weight} ${AbyanCAT.name} ${AbyanCAT.age} ${AbyanCAT.furColor}');

  AbyanCAT.eat();
  AbyanCAT.sleep();
  AbyanCAT.meow();
  AbyanCAT.berak();
  print('Berat setelah makan: ${AbyanCAT.weight}');
  print('Berat setelah tidur: ${AbyanCAT.weight}');
}
