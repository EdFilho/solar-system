import 'package:flutter/material.dart';
import 'package:solar_system/home/moons/moons_summary.dart';
import 'package:solar_system/models/moons.dart';
import 'package:solar_system/themes/themes_app.dart';

class DetailsMoons extends StatelessWidget {

  final Moon moon;

  DetailsMoons(this.moon);

  Container _getBackgrond() {
    return new Container(
      child: new Image.asset(
        moon.picture,
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
          colors: <Color> [
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
        new MoonSummary(moon),
        new Container(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
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
                    'Distância do Planeta:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    moon.distance,
                    style: commonTextStyle,
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    'gravidade:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    moon.gravity,
                    style: commonTextStyle,
                  )
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    'Tamanho:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    moon.size,
                    style: commonTextStyle,
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    'Volume:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    moon.volume,
                    style: commonTextStyle,
                  ),
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text(
                    'Densidade:  ',
                    style: subHeaderTextStyle,
                  ),
                  new Text(
                    moon.density,
                    style: commonTextStyle,
                  ),
                ],
              ),
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
            _getBackgrond(),
            _getGradient(),
            _getContent(),
            _getToolbar(context),
          ],
        ),
      ),
    );
  }
}