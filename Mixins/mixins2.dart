// KELAS DASAR (BAGIAN YANG HILANG)
// Kita buat kelas dasar ini agar Mammal dan Bird punya "induk".
abstract class Animal {}

class Mammal extends Animal {}
class Bird extends Animal {}

// MIXINS (SUDAH BENAR)
// "Paket Kemampuan" yang bisa ditambahkan ke kelas lain.
mixin Flyable {
  void fly() {
    print("Saya sedang terbang...");
  }
}

mixin Walkable {
  void walk() {
    print("Saya sedang berjalan...");
  }
}

mixin Swimmable {
  void swim() {
    print("Saya sedang berenang...");
  }
}

// KELAS HEWAN SPESIFIK (SUDAH BENAR)
// Menggabungkan kelas dasar dengan mixin menggunakan 'with'.
class Cat extends Mammal with Walkable {}

class Duck extends Bird with Walkable, Flyable, Swimmable {}


// FUNGSI UTAMA UNTUK MENJALANKAN KODE
void main() {
  var garfield = Cat();
  print("Aksi Garfield si Kucing:");
  garfield.walk(); // Memanggil kemampuan dari mixin Walkable

  print("\n========================\n");

  var donald = Duck();
  print("Aksi Donald si Bebek:");
  donald.walk();   // Kemampuan dari Walkable
  donald.swim();   // Kemampuan dari Swimmable
  donald.fly();    // Kemampuan dari Flyable
}
