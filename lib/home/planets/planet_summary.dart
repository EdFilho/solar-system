import 'package:flutter/material.dart';
import 'package:solar_system/componentes/separator.dart';
import 'package:solar_system/models/planets.dart';
import 'package:solar_system/themes/themes_app.dart';

class PlanetSummary extends StatelessWidget {

  final Planet planet;

  PlanetSummary(this.planet);

  @override
  Widget build(BuildContext context) {

    final planetThumbnail = new Container(
      margin: new EdgeInsets.only(
        bottom: 150.0,
      ),
      alignment: FractionalOffset.center,
      child: new Hero(
        tag: 'planet-hero-${planet.id}',
        child: new Image(
          image: new AssetImage(planet.image),
          height: 92.0,
          width: 92.0,
        )
      ),
    );

    Widget _planetValue ({String value, String image}) {
      return new Container(
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Image.asset(image, height: 12.0),
            new Container(width: 8.0),
            new Text(value, style: smallTextStyle)
          ],
        ),
      );
    }

    final planetCardContet = new Container(
      margin: new EdgeInsets.fromLTRB(16.0, 56.0, 16.0, 8.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(height: 4.0),
          new Text(
            planet.name,
            style: titleTextStyle,
            textAlign: TextAlign.center,
          ),
          new Container(height: 8.0),
          new Text(
            planet.nickname,
            style: subTitleTextStyle,
          ),
          Separator(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                child: _planetValue(
                  value: planet.distance,
                  image: 'assets/img/ic_distance.png'
                ),
              ),
              new Container(width: 8.0),
              new Expanded(
                child: _planetValue(
                  value: planet.gravity,
                  image: 'assets/img/ic_gravity.png',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  
    final planetCard = new Container(
      child: planetCardContet,
      height: 200,
      margin: new EdgeInsets.only(top: 46.0),
      decoration: new BoxDecoration(
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

    return new Container(
      margin: const EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 12.0,
      ),
      child: new Stack(
        children: <Widget>[
          planetCard,
          planetThumbnail,
        ],
      ),
    );
  }
}