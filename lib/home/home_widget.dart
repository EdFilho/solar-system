import 'package:flutter/material.dart';
import 'package:solar_system/componentes/subtitle.dart';
import 'package:solar_system/home/dwarf_planets/horizontal_list_dwarf_planets.dart';
import 'package:solar_system/home/moons/horizontal_list_moons.dart';
import 'package:solar_system/home/planets/horizontal_list_planets.dart';
import 'package:solar_system/home/solar_system/summary_card.dart';

class HomeWidget extends StatelessWidget {

  const HomeWidget ({ Key key}) : super (key : key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          new SummaryCard(),
          new SubTitle('Planetas'),
          new HorizontalListPlanets(),
          new SubTitle('Planetas Anões'),
          new HorizontalListDwarfPlanets(),
          new SubTitle('Satélites Naturais'),
          new HorizontalListMoons(),
          new Container(height: 200.0),
        ],
      ),
    );
  }
}