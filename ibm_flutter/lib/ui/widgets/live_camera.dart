import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class LiveCamera extends StatefulWidget {
  const LiveCamera(this.camera);

  final CameraDescription camera;

  @override
  LiveCameraState createState() => LiveCameraState();
}

class LiveCameraState extends State<LiveCamera> {
  CameraController controller;
  Future<void> initController;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.camera,
      ResolutionPreset.medium,
    );

    initController = controller.initialize();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initController,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return CameraPreview(controller);
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
