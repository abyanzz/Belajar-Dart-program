import 'dart:io';

void main() {
  // Menggunakan print()
  print('Print digunakan untuk menampilkan output ke konsol / Sama seperti writeln().');
  print('contoh penggunaan print:');
  // Output:
  // Halo
  // Dunia

  // Menggunakan stdout.write()
  stdout.write('write() digunakan untuk menampilkan output ke konsol tanpa baris baru.');
  stdout.write('contoh penggunaan write()');
  // Output:
  // Halo Dunia

  // Menggunakan stdout.writeln()
  stdout.writeln('STDOUT.Writeln digunakan untuk menampilkan output ke konsol dengan baris baru.');
  stdout.writeln('contoh penggunaan stdout.writeln:');
  // Output:
  // Halo
  // Dunia


    // Menggunakan stdout.write()
    stdout.write('write() V2 digunakan untuk menampilkan output ke konsol tanpa baris baru.');

    // UBAH BARIS INI
    stdout.writeln('contoh penggunaan write()'); // <-- Diubah dari write ke writeln

    // Menggunakan stdout.writeln()
    stdout.writeln('STDOUT.Writeln digunakan untuk menampilkan output ke konsol dengan baris baru.');
    stdout.writeln('contoh penggunaan stdout.writeln:');

}
