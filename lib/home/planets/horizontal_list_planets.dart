import 'package:flutter/material.dart';
import 'package:solar_system/home/planets/planet_summary.dart';
import 'package:solar_system/models/planets.dart';

class HorizontalListPlanets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 280,
      width: double.infinity,
      color: new Color(0xFF736AB7),
      child: new CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            sliver: new SliverFixedExtentList(
              itemExtent: 300.0,
              delegate: new SliverChildBuilderDelegate(
                (context, index) => new PlanetSummary(planets[index]),
                childCount: planets.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}