import 'package:flutter/material.dart';
import 'package:solar_system/componentes/separator.dart';
import 'package:solar_system/home/moons/details_moon.dart';
import 'package:solar_system/themes/themes_app.dart';
import 'package:solar_system/models/moons.dart';

class MoonSummary extends StatelessWidget {

  final Moon moon;

  MoonSummary(this.moon);
  
  @override
  Widget build(BuildContext context) {

    final moonThumbnail = new Container(
      margin: new EdgeInsets.only(
        bottom: 150.0,
      ),
      alignment: FractionalOffset.center,
      child: new Hero(
        tag: 'moon-hero-${moon.id}',
        child: Image(
          image: new AssetImage(moon.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    Widget _moonValue ({String value, String image}) {
      return new Container(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Image.asset(image, height: 12.0),
            new Container(width: 8.0),
            new Text(value, style: smallTextStyle),
          ],
        ),
      );
    }

    final moonCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 8.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(width: 10.0),
          new Text(
            moon.name,
            style: titleTextStyle,
            textAlign: TextAlign.center,
          ),
          new Container(height: 4.0),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(
                Icons.location_on,
                color: Color(0xffb6b2df),
                size: 16.0,
              ),
              new Container(width: 3.0),
              new Text(
                moon.planet,
                style: subTitleTextStyle,
              )
            ],
          ),
          new Separator(),
          new Row(
            children: <Widget>[
              new Expanded(
                child: _moonValue(
                  value: moon.distance,
                  image: 'assets/img/ic_distance.png'
                ),
              ),
              new Expanded(
                child: _moonValue(
                  value: moon.gravity,
                  image: 'assets/img/ic_gravity.png'
                ),
              ),
            ],
          ),
        ],
      ),
    );

    final moonCard = new Container(
      child: moonCardContent,
      height: 175.0,
      margin: new EdgeInsets.only(top: 46.0),
      decoration: BoxDecoration(
        color: new Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(8.0),
        boxShadow: <BoxShadow> [
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return new GestureDetector(
      onTap: () => Navigator.of(context).push(
        new PageRouteBuilder(
          pageBuilder: (_,__,___) => new DetailsMoons(moon),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            new FadeTransition(opacity: animation, child: child),
        ),
      ),
      child: new Container(
        margin: EdgeInsets.symmetric(
          vertical: 18.0,
          horizontal: 12.0,
        ),
        child: Stack(
          children: <Widget>[
            moonCard,
            moonThumbnail,
          ],
        ),
      ),
    );
  }
}


