/*

void main() {
  greet();
}

void greet() {
  print('Hello!');
}
 */

/// Output:
/// Hello!

/*
void main() {
  greet('Dicoding', 2025);
}

void greet(String name, int bornYear) {
  var age = 1997 - bornYear;
  print('Halo $name! Tahun ini Anda berusia $age tahun');
}

*/

/// Output:
/// Halo Dicoding! Tahun ini Anda berusia 28 tahun
///
///

/*
void main() {
  var firstNumber = 7;
  var secondNumber = 10;
  print(
      'Rata-rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}');
}

double average(num num1, num num2) {
  return (num1 + num2) / 2;
}
*/

/// Output:
/// Rata-rata dari 7 & 10 adalah 8.5
///
void main() {
  // Panggil fungsi greetNewUser dari sini
  greetNewUser('Widy', 20, true);
  greetNewUser('Budi', 25, false); // Contoh pemanggilan lain
}

// Definisikan fungsi di sini
void greetNewUser(String name, int age, bool isVerified) {
  // Isi fungsi TIDAK memanggil dirinya sendiri
  print('Hello $name, you are $age years old. Verified: $isVerified');
}
