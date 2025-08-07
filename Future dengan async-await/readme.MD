Future dengan async-await
Pada materi sebelumnya kita telah mempelajari Future untuk berurusan dengan proses asynchronous. Seperti yang kita tahu, penulisan kode asynchronous akan sedikit berbeda dengan proses synchronous. Contohnya program pesan kopi kita sebelumnya jika dituliskan secara asynchronous akan seperti berikut:

https://d17ivq9b7rppb3.cloudfront.net/original/academy/2020033111050081b9f735708c1036c2bbb0892ab68b38.jpeg

Dart memiliki keyword async dan await yang merupakan sebuah alternatif supaya kita bisa menuliskan proses asynchronous layaknya proses synchronous. Bagaimana caranya?

Dengan gaya penulisan synchronous, kira-kira kode program pesan kopi kita akan seperti berikut:

void main() {
  print('Getting your order...');
  var order = getOrder();
  print('You order: $order');
}
Namun ketika kode di atas dijalankan hasilnya tidak akan sesuai yang kita harapkan karena fungsi getOrder() merupakan objek Future.

Getting your order...
You order: Instance of 'Future<String>'
Output ini disebabkan karena fungsi main() masih merupakan fungsi synchronous. Untuk mengubahnya menjadi fungsi asynchronous tambahkan keyword async sebelum function body.

void main() async { … }
Kemudian tambahkan keyword await sebelum fungsi yang mengembalikan nilai Future.

var order = await getOrder();
Dari perubahan di atas yang memanfaatkan async-await kita telah berhasil menuliskan proses asynchronous dengan gaya synchronous.

main.dart
1
void main() async {
2
  print('Getting your order...');
3
  var order = await getOrder();
4
  print('You order: $order');
5
}
6
​
7
Future<String> getOrder() {
8
  return Future.delayed(Duration(seconds: 3), () {
9
    return 'Coffee Boba';
10
  });
11
}
 Input  Reset
 Jalankan

            
Lalu bagaimana menangani ketika terjadi eror? Caranya cukup sederhana yaitu dengan memanfaatkan try-catch:

main.dart
1
void main() async {
2
  print('Getting your order...');
3
  try {
4
    var order = await getOrder();
5
    print('You order: $order');
6
  } catch (error) {
7
    print('Sorry. $error');
8
  } finally {
9
    print('Thank you');
10
  }
11
}
12
​
13
Future<String> getOrder() {
14
  return Future.delayed(Duration(seconds: 3), () {
15
    return 'Coffee Boba';
16
  });
17
}
 Input  Reset
 Jalankan

            
Begitu juga seperti yang telah disebutkan, method whenComplete() bisa digantikan dengan blok finally. Sehingga keseluruhan kode akan menjadi seperti berikut:

https://d17ivq9b7rppb3.cloudfront.net/original/academy/20200331110937ec96183151b69f4e8243f18fb7a5516d.jpeg

Anda dapat mengunjungi tautan berikut jika ingin melihat sumber dari keseluruhan interactive code di atas.

Future dengan async-await
Selain itu, untuk memperdalam materi terkait Future dengan async-await, Anda dapat membaca beberapa tautan berikut.

Asynchronous support
Asynchronous programming - Working with futures: async and await



