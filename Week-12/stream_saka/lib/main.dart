import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Saka',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  late StreamTransformer transformer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream Saka')),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(lastNumber.toString()),
            ElevatedButton(
              onPressed: () => addRandomNumber(),
              child: Text('New Random Number Saka'),
            ),
          ],
        ),
      ),
    );
  }

  void changeColor() async {
    // await for (Color eventColor in colorStream.getColors()) {
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    // }
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
    // perbedaan await for dan listen adalah await for akan menunggu setiap event selesai diproses sebelum melanjutkan ke event berikutnya,
    // sedangkan listen akan memproses setiap event secara asinkron tanpa menunggu event
  }

  @override
  void initState() {
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream;

    transformer = StreamTransformer<int, int>.fromHandlers(
      handleData: (value, sink) {
        sink.add(value * 10);
      },
      handleError: (error, trace, sink) {
        sink.add(-1);
      },
      handleDone: (sink) => sink.close(),
    );

    stream
        .transform(transformer)
        .listen((event) {
          setState(() {
            lastNumber = event;
          });
        })
        .onError((error) {
          setState(() {
            lastNumber = -1;
          });
        });

    super.initState();
  }

  @override
  void dispose() {
    numberStreamController.close();
    super.dispose();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
  }

  // Soal 7
  // Langkah 13: Membuat Pemicu Error
  // Membuat sebuah fungsi baru bernama addError(). Tugas fungsi ini adalah memasukkan (inject) sebuah data error (dalam hal ini, string 'error') secara manual ke dalam stream. Ini adalah cara untuk "sengaja" membuat stream mengalami kondisi error untuk keperluan pengujian.
  // Langkah 14: Membuat Penangkap Error
  // Menambahkan blok .onError() pada stream.listen(). Ini adalah penangkap error.
  // Langkah 15: Menggunakan Pemicu Error
  // Mengubah apa yang dilakukan oleh fungsi addRandomNumber(). Fungsi ini terhubung dengan tombol 'New Random Number'

  // Soal 8
  // Langkah 1: Mendeklarasikan Variabel Transformer
  // Membuat sebuah "wadah" (variabel) bernama transformer. Ini akan diisi dengan logika untuk mengubah stream.
  // Langkah 2: Menentukan Logika Transformer
  // mendefinisikan cara kerja
  // Langkah 3: Menerapkan Transformer
  // Mengubah cara Anda "mendengarkan" stream.
}
