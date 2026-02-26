import 'package:flutter/material.dart';

class LoginAuth extends StatefulWidget {
  const LoginAuth({super.key});

  @override
  State<LoginAuth> createState() => _LoginAuth();
}

class _LoginAuth extends State<LoginAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text("Login", style: TextStyle(fontSize: 40, color: Colors.blue)),

            Text(
              "Remplissez tous les champs",
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),

            SizedBox(height: 30),

            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Mot de passe",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Valider",
                style: TextStyle(fontSize: 15, color: Colors.blue),
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
