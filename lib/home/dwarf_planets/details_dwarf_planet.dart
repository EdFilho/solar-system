import 'package:flutter/material.dart';
import 'package:solar_system/componentes/separator.dart';
import 'package:solar_system/home/dwarf_planets/dwarf_planet_summary.dart';
import 'package:solar_system/models/dwarf_planets.dart';
import 'package:solar_system/themes/themes_app.dart';

class DetailsDwarfPlanet extends StatelessWidget {

  final DwarfPlanet dwarfPlanet;

  DetailsDwarfPlanet(this.dwarfPlanet);

  Container _getBackground() {
    return new Container(
      child: new Image.asset(
        dwarfPlanet.picture,
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
    final _overviewTitle = 'detalhes'.toUpperCase();
    return new ListView(
      padding: new EdgeInsets.fromLTRB(0.0, 72.0, 0.0, 32.0),
      children: <Widget>[
        new DwarfPlanetSummary(dwarfPlanet),
        new Container(
          padding: new EdgeInsets.symmetric(horizontal: 32.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                _overviewTitle,
                style: titleTextStyle,
              ),
              Separator(),
              Text(
                dwarfPlanet.description,
                style: commonTextStyle,
                textAlign: TextAlign.justify,
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
    return Scaffold(
      body: new Container(
        constraints: BoxConstraints.expand(),
        color: new Color(0xFF736AB7),
        child: new Stack(
          children: <Widget> [
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