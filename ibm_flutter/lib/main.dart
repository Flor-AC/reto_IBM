import 'package:flutter/material.dart';
import 'package:reto_imb/ui/login.dart';

void main() {
  runApp(Ibm());
}

class Ibm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ibm challenge',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        accentColor: Colors.brown,
        cursorColor: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Login(),
    );
  }
}
