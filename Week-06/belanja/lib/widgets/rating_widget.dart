import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({super.key, required this.item, this.fontSz});

  final Item item;
  final double? fontSz;

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 16),
        const SizedBox(width: 4),
        Text(
          widget.item.rating.toString(),
          style: TextStyle(fontSize: widget.fontSz),
        ),
      ],
    );
  }
}
