import 'package:flutter/material.dart';
import 'package:solar_system/componentes/separator.dart';
import 'package:solar_system/models/dwarf_planets.dart';
import 'package:solar_system/themes/themes_app.dart';

class DwarfPlanetSummary extends StatelessWidget {

  final DwarfPlanet dwarfPlanet;

  DwarfPlanetSummary(this.dwarfPlanet);

  @override
  Widget build(BuildContext context) {

    final dwarfPlanetThumbnail = Container(
      margin: new EdgeInsets.only(
        bottom: 150.0,
      ),
      alignment: FractionalOffset.center,
      child: new Hero(
        tag: 'dwarf-planet-hero-${dwarfPlanet.id}',
        child: new Image(
          image: new AssetImage(dwarfPlanet.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    Widget _dwarfPlanetValue ({String value, String image}) {
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

    final dwarfPlanetContent = Container(
      margin: new EdgeInsets.fromLTRB(16.0, 38.0, 16.0, 8.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text(
            dwarfPlanet.name,
            style: titleTextStyle,
            textAlign: TextAlign.center,
          ),
          new Container(height: 4.0),
          new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Icon(
                Icons.location_on,
                color: Color(0xffb6b2df),
                size: 16.0,
              ),
              new Container(width: 3.0),
              new Text(
                dwarfPlanet.location,
                style: subTitleTextStyle,
              )
            ],
          ),
          Separator(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Expanded(
                child: _dwarfPlanetValue(
                  value: dwarfPlanet.distance,
                  image: 'assets/img/ic_distance.png',
                ),
              ),
              new Container(width: 8.0),
              new Expanded(
                child: _dwarfPlanetValue(
                  value: dwarfPlanet.gravity,
                  image: 'assets/img/ic_gravity.png'
                )
              )
            ],
          ),
        ],
      ),
    );

    final dwarfPLanetCard = Container(
      child: dwarfPlanetContent,
      height: 175.0,
      margin: new EdgeInsets.only(top: 46.0),
      decoration: new BoxDecoration(
        color: new Color(0xFF333366),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: new Offset(0.0, 10.0),
          ),
        ]
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 12.0,
      ),
      child: new Stack(
        children: <Widget>[
          dwarfPLanetCard,
          dwarfPlanetThumbnail
        ],
      ),
    );
  }
}