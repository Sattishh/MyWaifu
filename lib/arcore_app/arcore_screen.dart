import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ArCoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter AR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: ArCoreScreen(
      //   title: 'Flutter AR',
      // ),
      home: ModelViewer(
        src: "assets/images/Astronaut.glb",
        alt: "A 3D model of an Astronaut",
        ar: true,
        autoRotate: true,
        cameraControls: true,
      ),
    );
  }
}

class ArCoreScreen extends StatefulWidget {
  ArCoreScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ArCoreAppState createState() => _ArCoreAppState();
}

class _ArCoreAppState extends State<ArCoreScreen> {
  late ArCoreController arCoreController;

  _onArCoreViewCreated(ArCoreController _arcoreController) {
    arCoreController = _arcoreController;
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
      ),
    );
  }
}
