import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/footer_widget.dart';
import 'package:belanja/widgets/image_widget.dart';
import 'package:belanja/widgets/detail_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: "Sugar",
      price: 5000,
      stok: 56,
      rating: 5,
      image: Image.asset('images/sugar.jpg', fit: BoxFit.cover),
      deskripsi:
          'Gula Pasir Putih, manis alami untuk segala kebutuhan memasak dan minuman.',
    ),
    Item(
      name: "Salt",
      price: 2000,
      stok: 80,
      rating: 5,
      image: Image.asset('images/salt.jpg', fit: BoxFit.cover),
      deskripsi:
          'Garam Laut Alami, kaya akan mineral dan rasa yang lebih lezat.',
    ),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            SizedBox(width: 4),
            Icon(Icons.shopping_cart, color: Colors.black),
            SizedBox(width: 8),
            Text(
              'Saka Store',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
        backgroundColor: Colors.grey[100],
      ),
      body: Container(
        margin: const EdgeInsets.all(8.0),
        child: GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    ImageWidget(item: item),
                    DetailWidget(item: item),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const FooterWidget(),
    );
  }
}
