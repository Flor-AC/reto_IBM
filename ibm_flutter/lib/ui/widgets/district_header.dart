import 'package:flutter/material.dart';

class DistrictHeader extends StatelessWidget {
  DistrictHeader(this.number, this.name);

  final String number;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(10.0),
          color:  Color.fromRGBO(94, 97, 107, 1)),
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                number,
                style: TextStyle(fontSize: 25),
              ),
              Text(
                name,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
