void main() {
  final List<String?> list = List.filled(5, null);
  list[1] = 'Saka Nabil';
  list[2] = '2341720108';

  for (int i = 0; i < list.length; i++) {
    print('Index $i: ${list[i]}');
  }
}
