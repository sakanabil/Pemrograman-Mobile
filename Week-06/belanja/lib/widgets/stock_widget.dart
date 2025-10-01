import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

class StokWidget extends StatefulWidget {
  const StokWidget({super.key, required this.item, this.fontSz});

  final Item item;
  final double? fontSz;

  @override
  State<StokWidget> createState() => _StokRatingWidgetState();
}

class _StokRatingWidgetState extends State<StokWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Stok: ${widget.item.stok.toString()}',
          style: TextStyle(color: Colors.green, fontSize: 12),
        ),
        RatingWidget(item: widget.item, fontSz: widget.fontSz),
      ],
    );
  }
}
