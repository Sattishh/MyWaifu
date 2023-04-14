import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top, left: 16, right: 16),
            child: Image.asset('assets/images/shirt2.jfif'),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              'RM50',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: isLightMode ? Colors.black : Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top, left: 16, right: 16),
            child: Image.asset('assets/images/shirt1.jpg'),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              'RM40',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: isLightMode ? Colors.black : Colors.white),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top, left: 16, right: 16),
            child: Image.asset('assets/images/images.jfif'),
          ),
          Container(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              'RM900',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: isLightMode ? Colors.black : Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
