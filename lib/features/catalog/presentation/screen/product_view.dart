import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Glow up'), backgroundColor: Colors.amber),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                padding: EdgeInsets.all(40),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 69, 69, 68),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("Succes", style: TextStyle()),
              ),
              SizedBox(height: 30),
              Center(child: Text("fille")),
              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 180,
                      padding: EdgeInsets.all(40),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 69, 69, 68),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Succes", style: TextStyle()),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 180,
                      padding: EdgeInsets.all(40),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 69, 69, 68),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Succes", style: TextStyle()),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      height: 180,
                      padding: EdgeInsets.all(40),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 69, 69, 68),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Succes", style: TextStyle()),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      height: 180,
                      padding: EdgeInsets.all(40),
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 69, 69, 68),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Succes", style: TextStyle()),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
