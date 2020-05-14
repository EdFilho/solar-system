import 'package:flutter/material.dart';
import 'package:solar_system/home/dwarf_planets/dwarf_planet_summary.dart';
import 'package:solar_system/models/dwarf_planets.dart';

class HorizontalListDwarfPlanets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 280,
        width: 400,
        color: new Color(0xFF736AB7),
        child: new CustomScrollView(
          scrollDirection: Axis.horizontal,
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              sliver: new SliverFixedExtentList(
                itemExtent: 300.0,
                delegate: new SliverChildBuilderDelegate(
                  (context, index) => new DwarfPlanetSummary(dwarfPlanets[index]),
                  childCount: dwarfPlanets.length
                ),
              ),
            )
          ],
        ),
    );
  }
}