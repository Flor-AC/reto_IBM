import 'package:flutter/material.dart';

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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    child: Image.asset(
                      'assets/images/facebook.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    child: Image.asset(
                      'assets/images/twitter.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    child: Image.asset(
                      'assets/images/instagram.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            OutlinedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(BorderSide(color: Colors.blue)),
              ),
              onPressed: () => {},
              child: Text('VER MÁS'),
            ),
          ],
        ),
      ),
    );
  }
}
