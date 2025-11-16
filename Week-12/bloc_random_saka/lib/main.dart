import 'package:flutter/material.dart';
import 'random_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RandomScreen(),
    );
  }
}

// Soal 13
// Praktikum ini mendemonstrasikan cara memisahkan logika bisnis dari UI (pola BLoC) dengan menggunakan kelas RandomNumberBloc, yang menerima event melalui sink generateRandom dan mengeluarkan state baru (angka acak) melalui stream randomNumber.
