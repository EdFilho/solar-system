class Moon {
  final String id;
  final String name;
  final String planet;
  final String size;
  final String volume;
  final String density;
  final String description;
  final String nomeclature;
  final String discovered;
  final String structure;
  final String formation;
  final String image;
  final String picture;

  const Moon ({ this.id, this.name, this.planet, this.size, this.volume, this.density, this.description, this.nomeclature, this.discovered, this.structure, this.formation, this.image, this.picture });

}

List <Moon> moons = [
  const Moon(
    id: '1',
    name: 'Lua',
    planet: 'Terra',
    size: '37.936.694,79 km²',
    volume: '21.971.669.064 km³',
    density: '3,344 g/cm³',
    description: 'bla bla bla',
    nomeclature: 'bla bla',
    discovered: 'bla bla',
    structure: 'bla bla',
    formation: 'bla bla',
    image: 'assets/img/moon.png',
    picture: 'assets/pictures/moon.png',
  ),
];
