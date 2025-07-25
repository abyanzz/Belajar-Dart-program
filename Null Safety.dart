void main() {
  String? favoriteFood = 'Mie Goreng';
  // Sebaiknya gunakan tipe data yang jelas jika memungkinkan
  String favorpood = 'MIE Gado Gado';

  // Panggil fungsi untuk setiap variabel makanan
  buyAMeal(favoriteFood!);
  buyAMeal(favorpood);
}

// Ubah fungsi agar hanya menerima satu parameter String
void buyAMeal(String food) {
  print('I bought a $food');
}
