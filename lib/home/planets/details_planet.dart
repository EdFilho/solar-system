import 'package:flutter/material.dart';
import 'package:solar_system/componentes/separator.dart';
import 'package:solar_system/home/planets/planet_summary.dart';
import 'package:solar_system/models/planets.dart';
import 'package:solar_system/themes/themes_app.dart';

class DetailsPlanet extends StatelessWidget {

  final Planet planet;

  DetailsPlanet(this.planet);

  Container _getBackground () {
    return new Container(
      child: new Image.asset(
        planet.picture,
        fit: BoxFit.cover,
        height: 300.0,
      ),
      constraints: new BoxConstraints.expand(height: 300.0),
    );
  }

  Container _getGradient() {
    return new Container(
      margin: EdgeInsetsDirectional.only(top: 190.0),
      height: 110.0,
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
          colors: <Color>[
            new Color(0x00736AB7),
            new Color(0xFF736AB7),
          ],
          stops: [0.0, 0.9],
          begin: const FractionalOffset(0.0, 0.0),
          end: const FractionalOffset(0.0, 1.0),
        ),
      ),
    );
  }

  Widget _getContent() {
    return new ListView(
      padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: <Widget>[
        new PlanetSummary(planet),
        new Container(
          padding: new EdgeInsets.symmetric(horizontal: 32.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                'Caracteristicas',
                style: titleTextStyle,
              ),
              new Container(height: 4.0),
              new Row(
                children: <Widget>[
                  new Text(
                    'Distância do Sol:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    planet.distance,
                    style: commonTextStyle,
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    'Órbita:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    planet.orbit,
                    style: commonTextStyle,
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    'Gravidade:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    planet.gravity,
                    style: commonTextStyle,
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    'Temperatura média:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    planet.temperature,
                    style: commonTextStyle,
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    'Área da Superficie:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    planet.surface,
                    style: commonTextStyle,
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    'Volúme:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    planet.volume,
                    style: commonTextStyle,
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    'Satélites Naturais:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    planet.naturalSatellites,
                    style: commonTextStyle,
                  )
                ],
              ),
              new Separator(),
              new Text(
                'Descrição',
                style: titleTextStyle,
              ),
              new Container(height: 4.0),
              new Text(
                planet.description,
                style: commonTextStyle,
                textAlign: TextAlign.justify,
              )
            ],
          ),
        ),
      ],
    );
  }

  Container _getToolbar(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.only(
        top: MediaQuery
            .of(context)
            .padding
            .top
      ),
      child: new BackButton(color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        constraints: BoxConstraints.expand(),
        color: new Color(0xFF736AB7),
        child: new Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }
}