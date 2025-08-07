Pengenalan Dart Type System

Dalam bahasa pemrograman, type system adalah sistem logis yang terdiri dari seperangkat aturan yang menetapkan properti atau tipe ke berbagai konstruksi program komputer, seperti variabel, expression, fungsi, atau modul. Type system ini memformalkan atau memberikan standar kategori tersirat yang digunakan programmer untuk tipe data, struktur data, atau komponen lainnya.

Dart menyebut type system-nya sebagai sound type system. Soundness ini berarti program Anda tidak akan pernah bisa memasuki keadaan di mana sebuah ekspresi mengevaluasi nilai yang tidak cocok dengan jenis tipenya.

Sound type system pada Dart ini sama dengan type system pada Java atau C#. Di mana kondisi soundness ini dicapai dengan menggunakan kombinasi pemeriksaan statis (compile-time error) dan pemeriksaan saat runtime. Sebagai contoh, menetapkan String ke variabel int adalah kesalahan compile-time. Casting Object ke String dengan as String akan gagal ketika runtime jika objek tersebut bukan String.

Manfaat dari sound type system ini, antara lain:

Mengungkap bug terkait tipe pada saat compile time.
Sound type system memaksa kode untuk tidak ambigu tentang tipenya, sehingga bug terkait tipe yang mungkin sulit ditemukan saat runtime, bisa ditemukan pada waktu kompilasi.
Kode lebih mudah dibaca.
Kode menjadi lebih mudah dibaca karena Anda dapat mengandalkan nilai yang benar-benar memiliki tipe yang ditentukan. Tipe pada Dart tidak bisa berbohong.
Kode lebih mudah dikelola.
Ketika Anda mengubah satu bagian kode, type system dapat memperingatkan Anda tentang bagian kode mana yang baru saja rusak.
Kompilasi ahead of time (AOT) yang lebih baik.
Kode yang dihasilkan saat kompilasi AOT menjadi jauh lebih efisien
