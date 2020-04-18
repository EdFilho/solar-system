import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';
import 'package:solar_system/componentes/gradient_app_bar.dart';
import 'package:solar_system/home/summary_card.dart';

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
          SummaryCard(),
        ],
      ),
      bottomNavigationBar: GradientBottomNavigationBar(
        backgroundColorStart: Color(0xFF333366),
        backgroundColorEnd: Color(0xFF736AB7),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            title: Text('Galeria'),
          ),
        ],
      ),
    );
  }
}
