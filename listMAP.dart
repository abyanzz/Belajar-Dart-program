void main2() {
  var capital = {'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
    'Australia': 'Canberra'};

  print(capital['Australia']);
}

/// Output:
/// Indonesia

void main3() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  var mapKeys = capital.keys;
  print("mapKeys: $mapKeys");

  var mapValues = capital.values;
  print("mapValues: $mapValues");
}

/// Output:
/// mapKeys = (Jakarta, London, Tokyo)
/// mapValues = (Indonesia, England, Japan)
///
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  capital['New Delhi'] = 'India';

  print(capital);
}

/// Output:
/// {Jakarta: Indonesia, London: England, Tokyo: Japan, New Delhi: India}
