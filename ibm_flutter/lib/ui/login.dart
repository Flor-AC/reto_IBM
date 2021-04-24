import 'package:flutter/material.dart';
import 'package:reto_imb/ui/scan_face.dart';
import 'package:reto_imb/ui/scan_ine.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Acceso')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              child: Image.network(
                'https://sie.ine.mx/images/custom/ine-logo.png',
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Ingrese su CURP',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(border: OutlineInputBorder()),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () => {},
                      child: Text('INGRESAR')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
