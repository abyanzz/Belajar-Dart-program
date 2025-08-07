if(stock?.isEnough) {
  print('Making you a cup of coffee...');
}

//* Kode di atas akan menghasilkan exception ketika stock-nya null. Untuk mengatasinya kita perlu memberikan nilai default ketika nilai awalnya null. 
Sehingga kodenya akan menjadi seperti berikut: *//

stock?.isEnough ?? false;
