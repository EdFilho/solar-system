import 'package:flutter/material.dart';
import 'package:solar_system/home/moons/moons_summary.dart';
import 'package:solar_system/models/moons.dart';

class HorizontalListMoons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 280.0,
      width: 400.0,
      color: new Color(0xFF736AB7),
      child: new CustomScrollView(
        scrollDirection: Axis.horizontal,
        slivers: <Widget>[
          new SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            sliver: new SliverFixedExtentList(
              itemExtent: 300.0,
              delegate: new SliverChildBuilderDelegate(
                (context, index) => new MoonSummary(moons[index]),
                childCount: moons.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}