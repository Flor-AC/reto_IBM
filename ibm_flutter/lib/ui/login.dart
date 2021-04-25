import 'package:flutter/material.dart';
import 'package:reto_imb/ui/profile.dart';

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
                  RaisedButton(
                      color: Color.fromRGBO(151, 0, 93, 1),
                      textColor: Colors.white,
                      onPressed: () => navToProfile(context),
                      child: Text('INGRESAR')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navToProfile(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => Profile()),
    );
  }
}
