import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solar_system/componentes/gradient_app_bar.dart';
import 'package:solar_system/home/resume_card.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          GradientAppBar('Solar System'),
          ResumeCard(),
        ],
      ),
    );
  }
}
