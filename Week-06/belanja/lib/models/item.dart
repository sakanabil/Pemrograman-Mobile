import 'package:flutter/material.dart';

class Item {
  String name;
  int price;
  int stok;
  double rating;
  Image image;
  String deskripsi;

  Item({
    required this.name,
    required this.price,
    required this.stok,
    required this.rating,
    required this.image,
    this.deskripsi = "",
  });
}
