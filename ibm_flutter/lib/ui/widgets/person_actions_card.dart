import 'package:flutter/material.dart';
import 'package:reto_imb/ui/person_detail.dart';

class PersonActionsCard extends StatelessWidget {
  PersonActionsCard(this.avatarUrl, this.title, this.subtitle);

  final String avatarUrl;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 280,
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
            SizedBox(height: 15),
            SizedBox(height: 10),
            OutlinedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(BorderSide(color: Colors.blue)),
              ),
              onPressed: () => navigateDetails(context),
              child: Text('VER MÁS'),
            ),
          ],
        ),
      ),
    );
  }

  void navigateDetails(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => PersonDetail()),
    );
  }
}
