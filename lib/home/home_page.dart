import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';
import 'package:solar_system/componentes/gradient_app_bar.dart';
import 'package:solar_system/componentes/subtitle.dart';
import 'package:solar_system/home/planets/horizontal_list_planets.dart';
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

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new GradientAppBar('Sistema Solar'),
            new SummaryCard(),
            new SubTitle('Planetas'),
            new HorizontalListPlanets(),
            new SummaryCard(),
          ],
        ),
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
            icon: Icon(Icons.photo_library),
            title: Text('Galeria'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        fixedColor: Color(0xff00c6ff),
      ),
    );
  }
}