/*
void main() {
  var isAvailableForDiscount = true;
  var price = 300000;
  num discount = 0;
  if (isAvailableForDiscount) {
    discount = 10 / 100 * price;
  }
  print('You need to pay: ${price - discount}');
}

*/
/*
void main() {
  var price = 300000;
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;      // pembuatan variabel baru dengan scope lebih kecil
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }

  return discount;
}

*/
/*
var price = 300000;

void main() {
  var discount = checkDiscount(price);  // variabel price dapat diakses di main()
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  if (price >= 100000) {                // selain itu, ia dapat diakses juga di checkDiscount(),
    discount = 10 / 100 * price;        // bahkan, di level pengondisian if.
  }

  return discount;
}
*/
var price = 300000;

void main() {
  var discount = checkDiscount(price);
  print('You need to pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  // Deklarasikan variabel di sini, di awal fungsi.
  var discountApplied = false;

  // Cek apakah diskon sudah diaplikasikan. Awalnya pasti false.
  if (!discountApplied) {
    if (price >= 100000) {
      discount = 10 / 100 * price;
      // Ubah nilainya menjadi true setelah diskon diberikan.
      discountApplied = true;
    }
  }

  return discount;
}
