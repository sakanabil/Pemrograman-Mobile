(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = (1, 2);
  print('Sebelum tukar: $record');

  record = tukar(record);
  print('Sesudah tukar: $record');

  (String, int) mahasiswa;
  mahasiswa = ('Saka Nabil', 2341720108);
  print('Mahasiswa: $mahasiswa');

  var mahasiswa2 = ('first', a: 'Saka Nabil', b: 2341720108, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 'Saka Nabil'
  print(mahasiswa2.b); // Prints '2341720108'
  print(mahasiswa2.$2); // Prints 'last'
}
