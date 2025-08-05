import 'dart:math'; // 1. Impor library 'dart:math' untuk menggunakan fitur acak

void main() {
  // 2. Buat objek Random untuk menghasilkan nilai acak
  final random = Random();

  // 3. Gunakan operator ternary untuk memilih secara acak (50/50)
  // Jika random.nextBool() menghasilkan 'true', pilih 'sunny'
  // Jika menghasilkan 'false', pilih 'cloudy'
  var weatherForecast = random.nextBool() ? Weather.sunny : Weather.cloudy;

  // Menggunakan metode toString yang sudah Anda buat di enum
  print(weatherForecast);
}

enum Weather {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);

  final int rainAmount;

  const Weather(this.rainAmount);

  @override
  String toString() =>
      "Today's weather forecast is $name with a $rainAmount% chance of rain";
}
