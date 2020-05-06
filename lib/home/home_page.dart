import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_bottom_navigation_bar/gradient_bottom_navigation_bar.dart';
import 'package:solar_system/componentes/gradient_app_bar.dart';
import 'package:solar_system/home/widgets/home_widget.dart';

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

  final List<String> titles = ['Sistema Solar', 'Galeria'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> widgets = [
    HomeWidget(
      key: PageStorageKey('Widget Home'),
    ),
    Text('Gallery'),
     // GalleryWidget(
    //   key: PageStorageKey("Widget 1")
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        flexibleSpace: new GradientAppBar(titles[_selectedIndex]),
      ),
      body: new Center(
        child: widgets.elementAt(_selectedIndex),
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