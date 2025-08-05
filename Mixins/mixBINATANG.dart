// MIXIN (Paket Kemampuan)
mixin berjalan {
  void jalan() {
  print("Saya sedang berjalan...");
  }
}
mixin berenang {
  void renang() {
    print("Saya sedang berenang... byur byur!");
  }
}
mixin melayang {
  void terbang() {
    print("Saya sedang terbang... wushhh!");
  }
}
// KELAS DASAR binatang //
abstract class binatang {}

// KELAS TURUNAN DARI binatang //
class mamalia extends binatang {}
class ikan extends binatang {}
class burung extends binatang {}

class kucing extends mamalia with berjalan {}
class kelelawar extends mamalia with melayang {}
class bebek extends burung with berjalan, berenang {}
class lumba_lumba extends mamalia with berenang {}
class ikan_terbang extends ikan with berenang, melayang {}
class DINOSAURUS extends binatang with berjalan, berenang, melayang {}

void main() {

  // Membuat objek bebek
  var ANGSA = bebek();
  print("Aksi BEBEK :");
  ANGSA.jalan(); // <-- Kemampuan dari mixin berjalan
  ANGSA.renang(); // <-- Kemampuan dari mixin berenang
  print("\n---------------------\n");


  // Membuat objek kucing
  var KOCENG = kucing();
  print("Aksi KUCING :");
  KOCENG.jalan(); // <-- Kemampuan dari mixin berjalan
  print("\n---------------------\n");

  // Membuat objek kelelawar

  // Membuat objek kelelawar
  var KELAWAR = kelelawar();
  print("Aksi KELELAWAR :");
  KELAWAR.terbang(); // CORRECT: Call the 'terbang()' method from the 'melayang' mixin
  print("\n---------------------\n");

  // Membuat objek lumba-lumba
  var LUMBA_LUMBA = lumba_lumba();
  print("Aksi LUMBA-LUMBA :");
  LUMBA_LUMBA.renang(); // <-- Kemampuan dari mixin beren
  print("\n---------------------\n");

  // Membuat objek ikan terbang
  var IKAN_TERBANG = ikan_terbang();
  print("Aksi IKAN TERBANG :");
  IKAN_TERBANG.terbang(); // <-- Kemampuan dari mixinBEAM
  IKAN_TERBANG.renang(); // <-- Kemampuan dari mixin berenang
  print("\n---------------------\n");

  var DINOtakurus = DINOSAURUS();
  print("Aksi DINOSAURUS :");
  DINOtakurus.jalan(); // <-- Kemampuan dari mixin berjalan
  DINOtakurus.renang(); // <-- Kemampuan dari mixin berenang
  DINOtakurus.terbang();
}
