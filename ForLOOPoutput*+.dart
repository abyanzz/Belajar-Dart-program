void main() { // Fungsi utama, titik awal eksekusi program.
  // Loop luar ini bertanggung jawab untuk membuat setiap baris (total 10 baris).
  for (int i = 1; i <= 10; i++) {
    // Mendeklarasikan sebuah String kosong untuk menampung bintang '*' di setiap baris.
    // Variabel ini akan di-reset setiap kali loop luar (baris baru) dimulai.
    String output = '';

    // Loop dalam ini bertanggung jawab untuk menambahkan bintang '*' ke dalam variabel 'output'.
    // Jumlah bintang yang ditambahkan akan sama dengan nomor baris saat ini (nilai 'i').
    for (int j = 1; j <= i; j++) {
      // Menambahkan satu karakter '*' ke dalam string 'output'.
      output += '*';
    }
    for (int k = 1; k <= i; k++) {
      // Menambahkan satu karakter ' ' (spasi) ke dalam string 'output'.
      output += '+';
    }

    // Mencetak hasil string bintang untuk baris saat ini ke konsol.
    print(output);
  }
}
