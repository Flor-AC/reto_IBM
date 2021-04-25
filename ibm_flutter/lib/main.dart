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
        primaryColor: Color.fromRGBO(151, 0, 93, 1),
        primaryColorLight: Color.fromRGBO(204, 70, 138, 1),
        primaryColorDark: Color.fromRGBO(100, 0, 51, 1),
        accentColor: Color.fromRGBO(151, 0, 93, 1),
        cursorColor: Color.fromRGBO(151, 0, 93, 1),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
