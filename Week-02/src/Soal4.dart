void main() {
  // ===== Null Safety =====
  String? bisaNull; // nullable, otomatis null
  String tidakBolehNull = "Hello"; // non-nullable, harus ada nilai

  print(bisaNull); // Output: null
  bisaNull = "Hai";
  print(bisaNull); // Output: Hai

  // tidakBolehNull = null; // ERROR kalau dicoba
  print(tidakBolehNull); // Output: Hello

  // ===== Late Variable =====
  late String nama; // deklarasi dulu
  nama = "Saka"; // inisialisasi belakangan
  print(nama); // Output: Saka
}
