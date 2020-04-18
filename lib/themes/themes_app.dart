import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = const Color(0xFF333366);
const accentColor = const Color(0xFF736AB7);

final titleTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 22.0,
  fontWeight: FontWeight.w300,
);

final subTitleTextStyle = TextStyle(
  color: const Color(0xffb6b2df),
  fontSize: 18.0,
  fontWeight: FontWeight.w200,
);

final regularTextStyle = TextStyle(
  color: const Color(0xffb6b2df),
  fontSize: 12.0,
  fontWeight: FontWeight.w400
);


ThemeData appTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: new TextTheme(
      body1: new TextStyle(
        fontFamily: "Poppins",
      ),
      body2: TextStyle(
        fontFamily: "Poppins",
      ),
      button: TextStyle(
        fontFamily: "Poppins",
      ),
      caption: TextStyle(
        fontFamily: "Poppins",
      ),
      display1: TextStyle(
        fontFamily: "Poppins",
      ),
      display2: TextStyle(
        fontFamily: "Poppins",
      ),
      display3: TextStyle(
        fontFamily: "Poppins",
      ),
      display4: TextStyle(
        fontFamily: "Poppins",
      ),
      headline: TextStyle(
        fontFamily: "Poppins",
      ),
      overline: TextStyle(
        fontFamily: "Poppins",
      ),
      subhead: TextStyle(
        fontFamily: "Poppins",
      ),
      subtitle: TextStyle(
        fontFamily: "Poppins",
      ),
      title: TextStyle(
        fontFamily: "Poppins",
      ),
    ),
    primaryColor: primaryColor,
    accentColor: accentColor,
    scaffoldBackgroundColor: Color(0xFF736AB7),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,

  );
}