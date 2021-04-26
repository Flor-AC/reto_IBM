import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  PersonCard(this.avatarUrl, this.title, this.subtitle);

  final String avatarUrl;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 200,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(avatarUrl),
              maxRadius: 40,
            ),
            SizedBox(height: 15),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              subtitle,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
