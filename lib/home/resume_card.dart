import 'package:flutter/material.dart';

class ResumeCard extends StatelessWidget {

  final resumeThumbnail = new Container(
    margin: EdgeInsets.symmetric(
      vertical: 0,
    ),
    alignment: FractionalOffset.center,
    child: new Image(
      image: new AssetImage('assets/img/pluto.png'),
      height: 95.0,
      width: 95.0,
    ),
  );
  
  final resumeCard = new Container(
    height: 400.0,
    margin: new EdgeInsets.only(top: 46.0),
    decoration: new BoxDecoration(
      color: new Color(0xFF333366),
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
          offset: new Offset(0.0, 10.0),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 24.0,
      ),
      child: new Stack(
        children: <Widget>[
          resumeCard,
          resumeThumbnail
        ],
      ),
    );
  }
}