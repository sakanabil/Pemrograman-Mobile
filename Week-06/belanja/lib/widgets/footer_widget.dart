import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Saka Nabil'),
        BottomNavigationBarItem(icon: Icon(Icons.phone), label: '2341720108'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'TI-3G'),
      ],
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.black,
    );
  }
}
