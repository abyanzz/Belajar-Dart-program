import 'dart:math';

// Fungsi untuk memeriksa apakah bilangan itu Genap
bool isEven(int number) {
  return number % 2 == 0;
}

// --- PERBAIKAN FUNGSI BILANGAN PRIMA ---
// Nama fungsi diubah menjadi isPrime untuk konsistensi (menjawab ya/tidak)
bool isPrime(int number) {
  // Bilangan prima harus merupakan bilangan asli dan lebih besar dari 1.
  if (number <= 1) {
    return false;
  }
  // Cek faktor dari 2 hingga akar kuadrat dari angka tersebut.
  for (int i = 2; i * i <= number; i++) {
    // Jika ditemukan faktor, maka bukan bilangan prima.
    if (number % i == 0) {
      return false;
    }
  }
  // Jika tidak ada faktor yang ditemukan, maka itu adalah bilangan prima.
  return true;
}

// Fungsi untuk memeriksa apakah bilangan itu Ganjil
bool isOdd(int number) {
  return number % 2 != 0;
}

// Fungsi untuk memeriksa apakah bilangan itu Asli (integer > 0)
bool isNatural(int number) {
  return number > 0;
}

// Fungsi untuk memeriksa apakah bilangan itu Cacah (integer >= 0)
bool isWhole(int number) {
  return number >= 0;
}

// Fungsi untuk memeriksa apakah bilangan itu Bulat Negatif (integer < 0)
bool isNegativeInteger(int number) {
  return number < 0;
}

// Fungsi utama untuk menjalankan program
void main() {
  // Anda bisa mengubah angka ini untuk melihat hasil yang berbeda
  var myNumber = 53; // Diubah ke 53 untuk contoh bilangan prima

  print('Menganalisis angka: $myNumber');
  print('=========================');

  // Dart sudah tahu ini adalah bilangan bulat karena tipenya int
  print('Apakah Bilangan Bulat? true');

  // Menggunakan fungsi-fungsi yang sudah dibuat
  print('Apakah Bilangan Asli? ${isNatural(myNumber)}');
  print('Apakah Bilangan Cacah? ${isWhole(myNumber)}');
  print('Apakah Bilangan Bulat Negatif? ${isNegativeInteger(myNumber)}');
  print('Apakah Bilangan Prima? ${isPrime(myNumber)}'); // <-- Fungsi ditambahkan di sini
  print('Apakah Bilangan Genap? ${isEven(myNumber)}');
  print('Apakah Bilangan Ganjil? ${isOdd(myNumber)}');

  print('\n--- Contoh dengan angka lain ---');
  var anotherNumber = -7; // -0 sama dengan 0, diubah agar lebih jelas
  print('Menganalisis angka: $anotherNumber');
  print('=========================');
  print('Apakah Bilangan Bulat? true');
  print('Apakah Bilangan Asli? ${isNatural(anotherNumber)}');
  print('Apakah Bilangan Cacah? ${isWhole(anotherNumber)}');
  print('Apakah Bilangan Bulat Negatif? ${isNegativeInteger(anotherNumber)}');
  print('Apakah Bilangan Prima? ${isPrime(anotherNumber)}'); // <-- Fungsi ditambahkan di sini
  print('Apakah Bilangan Genap? ${isEven(anotherNumber)}');
  print('Apakah Bilangan Ganjil? ${isOdd(anotherNumber)}');
}
