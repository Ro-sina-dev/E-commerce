import 'package:commerce/features/catalog/data/product_data.dart';
import 'package:commerce/features/catalog/presentation/screen/product_detail.dart';
import 'package:commerce/features/catalog/presentation/widget/product_card.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  void _goToProductDetail(BuildContext context, product) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProductDetail(product: product)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Glow up'),
        backgroundColor: const Color.fromARGB(255, 242, 242, 241),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listProduct
                    .map(
                      (product) => Row(
                        children: [
                          ProductCard(
                            // width: 230,
                            // heigth: 120,
                            onTap: () => _goToProductDetail(context, product),
                            product: product,
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(7),
            child: Row(
              children: [
                Text('Conseil', style: TextStyle(fontSize: 25)),
                SizedBox(width: 220),
                Text('TOUT afficher', style: TextStyle(fontSize: 13)),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,

              child: Row(
                children: Categorie.map(
                  (cat) => Padding(
                    padding: EdgeInsets.only(right: 12),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 8,
                      ),

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        cat,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ).toList(),
              ),
            ),
          ),

          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(6),
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 13,
              ),
              itemCount: listProduct.length,
              itemBuilder: (context, index) {
                final product = listProduct[index];
                return ProductCard(
                  product: product,
                  onTap: () => _goToProductDetail(context, product),
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: listProduct
                    .map(
                      (product) => Row(
                        children: [
                          ProductCard(
                            // width: 300,
                            // heigth: 20,
                            onTap: () => _goToProductDetail(context, product),
                            product: product,
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_ic_call),
            label: "Accueil",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "Contact"),

          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm_outlined),
            label: "Recherche",
          ),
        ],
      ),
    );
  }
}
