import 'package:flutter/material.dart';
import 'stream.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream Saka')),
      body: Container(decoration: BoxDecoration(color: bgColor)),
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
    super.initState();
    colorStream = ColorStream();
    changeColor();
  }
}
