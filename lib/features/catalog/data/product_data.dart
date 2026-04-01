import 'package:flutter/material.dart';

import '../models/product_model.dart';

final List<ProductModel> listProduct = [
  ProductModel(
    id: '1',
    image: 'assets/images/image1.jpg',
    name: 'Creme visage',
    description: 'Hydratant24h',
    price: 2000,
    // color: Colors.amber,
  ),
  ProductModel(
    id: '2',
    image: 'assets/images/image2.jpg',
    name: 'Sérum',
    description: 'Anti-taches',
    price: 2200,
    // color: Color.fromARGB(255, 255, 7, 52),
  ),
  ProductModel(
    id: '3',
    image: 'assets/images/image3.jpg',
    name: 'Huile Karité',
    description: 'Nourrissante',
    price: 8000,
    // color: Color.fromARGB(255, 81, 2, 2),
  ),
  ProductModel(
    id: '4',
    image: 'assets/images/image4.jpg',
    name: 'Masque Argile',
    description: 'Purifiant',
    price: 12000,
    // color: Color.fromARGB(255, 7, 255, 44),
  ),
];

final List<String> Categorie = [
  'Tout',
  'Visage',
  'Corps',
  'Cheveux',
  'Solaire',
];
