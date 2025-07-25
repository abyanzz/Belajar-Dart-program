import 'dart:io';

void main() {
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  var fahrenheit = num.parse(stdin.readLineSync()!);
  var celsius = (fahrenheit - 32) * 5 / 9;
  var kelvin = celsius + 273.15;
  var reamur = celsius * 4 / 5;
  var Rankine = fahrenheit + 459.67;
  stdout.writeln('Suhu dalam Celsius: $celsius');
  stdout.writeln('Suhu dalam Kelvin: $kelvin');
  print('Suhu dalam Reamur: $reamur');
  print('suhu dalam Rankine: $Rankine');
}
