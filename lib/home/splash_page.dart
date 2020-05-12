import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:solar_system/home/home_page.dart';
import 'package:solar_system/themes/themes_app.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash>{

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context){
    return Container(
      color: primaryColor,
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Image.asset("assets/img/splash.png"),
        ),
      ),
    );
  }

}