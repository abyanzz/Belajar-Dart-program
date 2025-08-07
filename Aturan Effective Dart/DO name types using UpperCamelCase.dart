abstract class Animal {}
abstract class Mammal extends Animal {}
mixin Flyable {}
class Cat extends Mammal with Walkable {}
