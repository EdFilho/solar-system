import 'package:flutter/material.dart';
import 'package:solar_system/themes/themes_app.dart';

class SubTitle extends StatelessWidget {

  final String subTitle;

  SubTitle(this.subTitle);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Column(
        children: <Widget>[
          new Text(
            subTitle,
            style: subTitleTextStyle1,
          ),
          new Container(
            height: 1.0,
            width: 150.0,
            color: Color(0xffb6b2df),     
          )
        ],
      )
    );
  }
}