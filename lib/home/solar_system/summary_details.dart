import 'package:flutter/material.dart';
import 'package:solar_system/componentes/separator.dart';
import 'package:solar_system/home/solar_system/summary_card.dart';
import 'package:solar_system/models/summary.dart';
import 'package:solar_system/themes/themes_app.dart';

class SummaryDetails extends StatelessWidget {

  Container _getBackground() {
    return new Container(
      child: new Image.asset(
        summary[9],
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
        new SummaryCard(),
        new Container(
          padding: new EdgeInsets.symmetric(horizontal: 32.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                'Intro',
                style: titleTextStyle,
              ),
              new Container(height: 4.0),
              new Text(
                summary[4],
                style: commonTextStyle,
                textAlign: TextAlign.justify,
              ),
              Separator(),
              new Text(
                'Tamanho e extensão',
                style: titleTextStyle,
              ),
              new Container(height: 4.0),
              new Text(
                summary[5],
                style: commonTextStyle,
                textAlign: TextAlign.justify,
              ),
              Separator(),
              new Text(
                'Formação e Origem',
                style: titleTextStyle,
              ),
              new Container(height: 4.0),
              new Text(
                summary[6],
                style: commonTextStyle,
                textAlign: TextAlign.justify,
              ),
              Separator(),
              new Text(
                'Estrutura',
                style: titleTextStyle,
              ),
              new Container(height: 4.0),
              new Text(
                summary[7],
                style: commonTextStyle,
                textAlign: TextAlign.justify,
              ),
              Separator(),
              new Text(
                'Luas',
                style: titleTextStyle,
              ),
              new Container(height: 4.0),
              new Text(
                summary[8],
                style: commonTextStyle,
                textAlign: TextAlign.justify,
              ),
              new Container(height: 10.0),                            
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