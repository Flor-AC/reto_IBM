import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:reto_imb/ui/profile.dart';

class ScanIne extends StatefulWidget {
  @override
  _ScanIneState createState() => _ScanIneState();
}

class _ScanIneState extends State<ScanIne> {
  CameraDescription camera;
  CameraController controller;
  Future<void> initController;

  @override
  void initState() {
    initCamera();

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (camera != null) {
      controller = CameraController(
        camera,
        ResolutionPreset.medium,
      );
      initController = controller.initialize();
    }

    return Scaffold(
      appBar: AppBar(title: Text('Verificar identidad')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              height: 400,
              child: camera == null
                  ? Center(
                      child: Text(
                        'No se ha detectado una camara en su dispositivo',
                      ),
                    )
                  : FutureBuilder(
                      future: initController,
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return CameraPreview(controller);
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      },
                    ),
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
              onPressed: takePicture,
              child: Text('ESCANEAR'),
            ),
            SizedBox(height: 20),
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

  Future<void> takePicture() async {
    try {
      await initController;
      final image = await controller.takePicture();

      print('-------------------------- Image Path --------------------------');
      print(image.path);

      navToProfile(context);
    } catch (e) {
      print(e);
    }
  }

  void navToProfile(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => Profile()),
    );
  }
}
