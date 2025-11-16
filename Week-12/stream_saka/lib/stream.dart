import 'package:flutter/material.dart';
import 'dart:async';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.purple,
  ];

  Stream<Color> getColors() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      // fungsi keyword 'yield*' digunakan untuk meneruskan nilai-nilai dari stream yang dihasilkan oleh Stream.periodic
      int index = t % colors.length;
      return colors[index];
    });
  }
}

class NumberStream {
  final StreamController<int> controller = StreamController<int>();

  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  close() {
    controller.close();
  }
}
