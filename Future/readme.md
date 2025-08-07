Apa itu Future
Untuk melakukan pemrograman secara asynchronous dengan Dart, kita menggunakan Future. Future adalah sebuah objek yang mewakili nilai potensial atau kesalahan yang akan tersedia pada suatu waktu di masa mendatang. Anda dapat membayangkan future sebagai sebuah kotak paket. Saat Anda menerima paket tersebut, akan ada tiga kondisi yang mungkin terjadi, antara lain paket masih tertutup (uncompleted), paket dibuka lalu berisi barang sesuai pesanan (completed with data), dan paket dibuka namun terjadi kesalahan atau tidak sesuai (completed with error). Penerima dari future dapat menentukan callbacks yang akan menangani nilai atau kesalahan tersebut.

20200331105254736a05f2a7300670e27c894c7bb37a91.jpeg

Sekarang coba perhatikan kode berikut:

void main() {
  print('Creating the future');
  print('main() done');
}
Tentunya Anda sudah tahu urutan program dan apa yang akan ditampilkan pada konsol. Lalu bagaimana jika perintah print yang pertama kita pindahkan ke dalam objek future.

main.dart
1
void main() {
2
  final myFuture = Future(() {
3
    print('Creating the future');
4
    return 12;
5
  });
6
  print('main() done');
7
}
 Input  Reset
 Jalankan

            
Jika kode di atas dijalankan, seluruh fungsi main akan dieksekusi sebelum fungsi yang ada di dalam Future(). Ini disebabkan karena future masih berstatus uncompleted. Sehingga ketika program dijalankan, konsol akan tampil seperti berikut:

main() done
Creating the future
Lantas bagaimana caranya kita membuat dan memanfaatkan future ini?



Uncompleted
Mari kita buat sebuah fungsi yang mengembalikan nilai Future.

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee Boba';
  });
}
Pada Future kita bisa menambahkan method delayed untuk menunda eksekusi kode di dalam Future. Di mana parameter pertama berisi durasi penundaan dan parameter kedua adalah blok kode atau fungsi yang akan dijalankan. Pada kasus ini kita menggunakan delayed untuk menunda waktu eksekusi seolah kita sedang mengambil data dari internet. Karena nilai yang dikembalikan pada Future berupa String, kita bisa secara eksplisit menentukan tipe parameter generic Future<String>.

Completed with data
Kemudian setelah Future dijalankan, kita memerlukan handler untuk menangani status completed with data. Caranya gunakan method .then() dari objek Future.

main.dart
void main() {
  getOrder().then((value) {
    print('Your ordered: $value');
  });
  print('Getting your order...');
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffee Boba';
  });
}
1
void main() {
2
  getOrder().then((value) {
3
    print('Your ordered: $value');
4
  });
5
  print('Getting your order...');
6
}
7
​
8
Future<String> getOrder() {
9
  return Future.delayed(Duration(seconds: 3), () {
10
    return 'Coffee Boba';
11
  });
12
}
 Input  Reset
 Jalankan

            
Fungsi getOrder() akan dijalankan secara asynchronous hingga setelah 3 detik kode Future akan dijalankan dan mengembalikan nilai.

Getting your order...
Your ordered: Coffee Boba  // Muncul setelah 3 detik
Bagaimana jika objek Future menghasilkan kondisi “completed with error?” Bagaimana menanganinya?

Completed with error
Kita dapat menambahkan method .catchError() setelah then. Sehingga ketika terjadi eror atau exception di dalam Future, blok kode ini akan dijalankan. Mari kita ubah sedikit kode di atas untuk mendukung skenario completed with error.

main.dart
1
void main() {
2
  getOrder().then((value) {
3
    print('Your ordered: $value');
4
  }).catchError((error) {
5
    print('Sorry. $error');
6
  });
7
  print('Getting your order...');
8
}
9
​
10
Future<String> getOrder() {
11
  return Future.delayed(Duration(seconds: 3), () {
12
    var isStockAvailable = false;
13
    if (isStockAvailable) {
14
      return 'Coffee Boba';
15
    } else {
16
      throw 'Our stock is not enough.';
17
    }
18
  });
19
}
 Input  Reset
 Jalankan

            
Menurut Anda apa yang akan ditampilkan di konsol? Coba jalankan aplikasinya untuk membuktikan.

Sampai sini harusnya Anda sudah paham dengan ketiga state yang ada pada Future serta bagaimana menuliskan kode untuk menanganinya. Seperti pada fungsi main() ada tiga blok kode yang mewakili state Future:

Fungsi getOrder() yang berisi Future yang masih uncompleted.
Method then() yang menangani kondisi completed with data.
Method catchError() yang menangani kondisi completed with error.
Ada satu method lagi yang bisa kita gunakan yaitu whenComplete(). Method ini akan dijalankan ketika suatu fungsi Future selesai dijalankan, tak peduli apakah menghasilkan nilai atau eror. Ini seperti blok finally pada try-catch-finally.

main.dart
1
void main() {
2
  getOrder().then((value) {
3
    print('Your ordered: $value');
4
  }).catchError((error) {
5
    print('Sorry. $error');
6
  }).whenComplete(() {
7
    print('Thank you');
8
  });
9
  print('Getting your order...');
10
}
11
​
12
Future<String> getOrder() {
13
  return Future.delayed(Duration(seconds: 3), () {
14
    var isStockAvailable = false;
15
    if (isStockAvailable) {
16
      return 'Coffee Boba';
17
    } else {
18
      throw 'Our stock is not enough.';
19
    }
20
  });
21
}
 Input  Reset
 Jalankan

            
Jika ingin melihat sumber dari keseluruhan interactive code di atas, Anda dapat mengunjungi tautan berikut.

Future - Code
Selain itu, berikut tautan yang dapat Anda baca apabila ingin menambah wawasan terkait Future.

Asynchronous Programming - What is a future?



