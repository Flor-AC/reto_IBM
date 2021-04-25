import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  ProfileHeader(this.name, this.lastName, this.profilePicture);

  final String name;
  final String lastName;
  final String profilePicture;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                lastName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          width: 50,
          height: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(profilePicture, fit: BoxFit.fill),
          ),
        )
      ],
    );
  }
}
