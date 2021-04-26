import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:reto_imb/ui/profile.dart';
import 'package:reto_imb/ui/widgets/live_camera.dart';

class ScanIne extends StatefulWidget {
  @override
  _ScanIneState createState() => _ScanIneState();
}

class _ScanIneState extends State<ScanIne> {
  CameraDescription camera;

  @override
  void initState() {
    initCamera();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Verificar identidad')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              height: 400,
              child: camera == null ? null : LiveCamera(camera),
            ),
            SizedBox(height: 40),
            Text(
              'Escanea el lado frontal de tu INE',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            RaisedButton(
              color: Color.fromRGBO(151, 0, 93, 1),
              textColor: Colors.white,
              onPressed: () => navToProfile(context),
              child: Text('ESCANEAR'),
            )
          ],
        ),
      ),
    );
  }

  Future<void> initCamera() async {
    WidgetsFlutterBinding.ensureInitialized();
    final cameras = await availableCameras();
    setState(() => camera = cameras.first);
  }

  void navToProfile(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => Profile()),
    );
  }
}
