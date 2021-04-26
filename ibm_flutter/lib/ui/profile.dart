import 'package:flutter/material.dart';
import 'package:reto_imb/ui/scan_face.dart';
import 'package:reto_imb/ui/widgets/person_actions_card.dart';
import 'package:reto_imb/ui/widgets/profile_header.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi perfil'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(
                'Flor Denise',
                'Romero Reyes',
                'https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos-810x540.jpg',
              ),
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: RaisedButton(
                  color: Color.fromRGBO(151, 0, 93, 1),
                  textColor: Colors.white,
                  onPressed: () => navToScan(context),
                  child: Text('EMPEZAR A VOTAR'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Candidatos:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PersonActionsCard(
                      'https://i.pinimg.com/originals/2d/ab/af/2dabaf85c244dfac886209a2ba7b17d5.jpg',
                      'Miranda',
                      'Partido X',
                    ),
                    PersonActionsCard(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOfiQ5jt6UNVmHw7YJy7F6I25FV6LgBX9RS6w3wF7PUhORio-woVIGPyIZUcbNWENrBjI&usqp=CAU',
                      'Eva',
                      'Partido Z',
                    ),
                    PersonActionsCard(
                      'https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos-810x540.jpg',
                      'Monica',
                      'Partido Y',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void navToScan(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => ScanFace()),
    );
  }
}
