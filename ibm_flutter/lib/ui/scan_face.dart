import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reto_imb/ui/widgets/live_camera.dart';
import 'package:reto_imb/ui/widgets/person_card.dart';

class ScanFace extends StatefulWidget {
  @override
  _ScanFaceState createState() => _ScanFaceState();
}

class _ScanFaceState extends State<ScanFace> {
  CameraDescription camera;

  @override
  void initState() {
    initCamera();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Votar')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Manten tu rostro enfocado en la pantalla',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              height: 300,
              child: camera == null
                  ? Center(
                      child: Text(
                        'No se ha detectado una camara en su dispositivo',
                      ),
                    )
                  : LiveCamera(camera),
            ),
            SizedBox(height: 40),
            Text(
              'Selecciona al cadidato que deseas',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PersonCard(
                    'https://i.pinimg.com/originals/2d/ab/af/2dabaf85c244dfac886209a2ba7b17d5.jpg',
                    'Miranda',
                    'Partido X',
                  ),
                  PersonCard(
                    'https://www.dzoom.org.es/wp-content/uploads/2020/02/portada-foto-perfil-redes-sociales-consejos-810x540.jpg',
                    'Monica',
                    'Partido Y',
                  ),
                  PersonCard(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOfiQ5jt6UNVmHw7YJy7F6I25FV6LgBX9RS6w3wF7PUhORio-woVIGPyIZUcbNWENrBjI&usqp=CAU',
                    'Eva',
                    'Partido Z',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              color: Color.fromRGBO(151, 0, 93, 1),
              textColor: Colors.white,
              onPressed: () => {},
              child: Text('VOTAR'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> initCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();
    setState(() => camera = cameras[1]);
  }
}
