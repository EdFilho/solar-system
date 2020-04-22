import 'package:flutter/material.dart';
import 'package:solar_system/componentes/separator.dart';
import 'package:solar_system/models/summary.dart';
import 'package:solar_system/themes/themes_app.dart';

class SummaryCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final summaryThumbnail = new Container(
      margin: EdgeInsets.only(
        top: 0,
      ),
      alignment: FractionalOffset.center,
      child: new Image(
        image: new AssetImage(summary[0]),
        height: 95.0,
        width: 95.0,
      ),
    );

    final summaryCardContent = new Container(
      margin: new EdgeInsets.fromLTRB(16.0, 56.0, 16.0, 8.0),
      constraints: new BoxConstraints.expand(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(height: 4.0,),
          new Text(
            summary[1],
            style: titleTextStyle,
            textAlign: TextAlign.center,
          ),
          new Container(height: 4.0),
          new Text(
            summary[2],
            style: subTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          new Separator(),
          new Container(
            padding: new EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  summary[3],
                  style: regularTextStyle,
                  textAlign: TextAlign.justify,
                )
              ],
            ),
          ),
        ],
      ),
    );
    
    final summaryCard = new Container(
      child: summaryCardContent,
      height: 350.0,
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

    return new Container(
      margin: const EdgeInsets.symmetric(
        vertical: 18.0,
        horizontal: 24.0,
      ),
      child: new Stack(
        children: <Widget>[
          summaryCard,
          summaryThumbnail
        ],
      ),
    );
  }
}