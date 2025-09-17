void main() {
  var mhs1 = Map<String, String>();
  mhs1['Nama'] = 'Saka Nabil';
  mhs1['NIM'] = '2341720108';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Saka Nabil';
  mhs2[2] = '2341720108';

  print('mhs1: $mhs1');
  print('mhs2: $mhs2');

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  print(gifts);
  print(nobleGases);

  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  print(gifts);
  print(nobleGases);
}
