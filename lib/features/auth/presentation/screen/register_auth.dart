import 'package:flutter/material.dart';

class RegisterAuth extends StatelessWidget {
  const RegisterAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(
      //     'REGISTER',
      //     style: TextStyle(color: Colors.white),
      //     textAlign: TextAlign.center,
      //   ),
      //   backgroundColor: Colors.blue,
      // ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Register",
              style: TextStyle(fontSize: 40, color: Colors.blue),
            ),
            Text("Bienvenue sur of GLOW UP", style: TextStyle(fontSize: 20)),
            SizedBox(height: 50),

            TextFormField(
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 30),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Mot de passe',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Valider",
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
