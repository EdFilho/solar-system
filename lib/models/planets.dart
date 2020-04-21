class Planet {
  final String id;
  final String name;
  final String nickname;
  final String distance;
  final String orbit;
  final String gravity;
  final String description;
  final String image;
  final String picture;

  const Planet ({this.id, this.name, this.nickname, this.distance, this.orbit, this.gravity, this.description, this.image, this.picture});
  
}

List<Planet> planets = [
  const Planet(
    id: '3',
    name: 'Terra',
    nickname: 'Planeta água',
    distance: '0 Km',
    orbit: '365,256363004 dias',
    gravity: '9.807 m/s',
    description: "A Terra é o terceiro planeta mais próximo do Sol, o mais denso e o quinto maior dos oito planetas do Sistema Solar. É também o maior dos quatro planetas telúricos.",
    image: 'assets/img/earth.png',
    picture: 'assets/pictures/earth.jpg',
  ),
  const Planet(
    id: '4',
    name: 'Terra',
    nickname: 'Planeta água',
    distance: '0 Km',
    orbit: '365,256363004 dias',
    gravity: '9.807 m/s',
    description: "A Terra é o terceiro planeta mais próximo do Sol, o mais denso e o quinto maior dos oito planetas do Sistema Solar. É também o maior dos quatro planetas telúricos.",
    image: 'assets/img/earth.png',
    picture: 'assets/pictures/earth.jpg',
  ),
];