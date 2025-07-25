// try catch

void main() {
  // Blok 'try' digunakan untuk membungkus kode yang berpotensi menyebabkan eror.
  // Jika eror terjadi di dalam blok ini, program tidak akan langsung crash.
  try {
    var a = 7;
    var b = 0;
    // Baris ini akan menyebabkan eror karena dalam matematika,
    // sebuah angka tidak bisa dibagi dengan nol (0).
    // Eror yang terjadi adalah 'UnsupportedError'.
    print(a ~/ b);
  }
  // Blok 'on' digunakan untuk menangkap jenis eror yang SPESIFIK.
  // Kode ini akan berjalan HANYA JIKA eror yang terjadi adalah 'UnsupportedError'.
  on UnsupportedError {
    print('Can not divide by zero.');
  }
  // Blok 'catch' ini bersifat umum.
  // Ia akan menangkap eror jenis APAPUN yang tidak ditangkap oleh blok 'on' di atasnya.
  // 'e' berisi pesan erornya, dan 's' berisi jejak detail eror (stack trace).
  catch (e, s) {
    print('Exception happened: $e');
    print('Stack trace: $s');
  }
  // Blok 'finally' adalah bagian yang PASTI akan selalu dijalankan,
  // baik ada eror maupun tidak ada eror.
  // Biasanya digunakan untuk 'membersihkan' sesuatu, seperti menutup file.
  finally {
    print('This line still executed');
  }
}
