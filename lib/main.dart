import 'package:flutter/material.dart';
import 'package:solar_system/home/splash_page.dart';
import 'package:solar_system/themes/themes_app.dart';
//test3
void main() {
  runApp(
    new MaterialApp(
      title: 'Sitema Solar',
      theme: appTheme(),
      home: Splash(),
    )
  );
}