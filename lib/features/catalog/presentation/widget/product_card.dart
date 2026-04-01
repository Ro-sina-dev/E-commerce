import 'package:commerce/features/catalog/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  // final double? width;
  // final double? heigth;
  final ProductCardSize? size;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    // this.width,
    // this.heigth,
    required this.onTap,
    this.size = ProductCardSize.medium,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final double cardWidth = switch (size) {
      ProductCardSize.small => 140,
      ProductCardSize.medium => 200,
      ProductCardSize.large => 300,
    };
    final double cardHeight = switch (size) {
      ProductCardSize.small => 140,
      ProductCardSize.medium => 200,
      ProductCardSize.large => 180,
    };
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: cardWidth,
        height: cardHeight,
        padding: EdgeInsets.all(1),
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
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            ),
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                product.name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              Text(
                '{product.price}FCFA',
                style: TextStyle(color: Colors.white10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
