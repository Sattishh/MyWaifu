import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:flutter/material.dart';

class InviteFriend extends StatefulWidget {
  @override
  _InviteFriendState createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isLightMode = brightness == Brightness.light;
    return Container(
      color: isLightMode ? AppTheme.white : AppTheme.nearlyBlack,
      child: SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: isLightMode ? AppTheme.white : AppTheme.nearlyBlack,
          body: Column(
            children: <Widget>[
              Container(
                child: Image.asset(
                    'assets/images/group.png'), // change image crop needed
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top,
                    left: 16,
                    right: 16),
                child: Image.asset('assets/images/group.jpg'),
              ),
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  'We are a group formed during the Flutter Bootcamp organized by GDSC APU & UM. Yeo Yee Tao (1st from left) from Johor, Malaysia, is a 2nd year Computer Science student in specialism of Data Analytics in Asia Pacific University of Technology & Innovation. Sattish Pratap Shewkani (2nd from left) from Bandung, Indonesia, is a 2nd year Computer Science student in specialism of Data Analytics in Asia Pacific University of Technology & Innovation. Quah Seng Kit (3rd from left) from Kuala Lumpur, Malaysia, is a 2nd year Computer Science student in specialism of Data Analytics in Asia Pacific University of Technology & Innovation. Lastly, Elias Yap (most right side) is a Postgraduate student in Business Administration from University of Malaya.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: isLightMode ? Colors.black : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
