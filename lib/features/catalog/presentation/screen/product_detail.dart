import 'package:commerce/features/catalog/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name), backgroundColor: product.color),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 200,
            height: 300,
            color: product.color,
            child: Icon(Icons.image, size: 80, color: Colors.amber),
            decoration: BoxDecoration(
              // color: product.color,
              borderRadius: BorderRadius.circular(10),
              image: product.image != null
                  ? DecorationImage(
                      image: AssetImage(product.image!),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name, style: TextStyle(fontSize: 24)),
                SizedBox(height: 10),
                Text(product.description, style: TextStyle(fontSize: 24)),
                SizedBox(height: 10),
                Text('${product.price}cfa', style: TextStyle(fontSize: 24)),

                SizedBox(
                  height: 10,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black12,
                      padding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text(
                      'Ajouter au panier',
                      style: TextStyle(color: Colors.amber, fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
