import 'package:flutter/material.dart';

class ProductModel {
  final String id;
  final String name;
  final String description;
  final double price;
  final Color? color;
  final String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.color,
    required this.image,
  });
}
