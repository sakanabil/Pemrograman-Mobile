import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Hero(tag: 'imageHero${item.name}', child: item.image),
    );
  }
}
