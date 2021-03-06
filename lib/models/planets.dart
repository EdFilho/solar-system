class Planet {
  final String id;
  final String name;
  final String nickname;
  final String distance;
  final String type;
  final String orbit;
  final String gravity;
  final String temperature;
  final String surface;
  final String volume;
  final String density;
  final String naturalSatellites;
  final String description;
  final String nomenclature;
  final String structure;
  final String study;
  final String atmosphere;
  final String curiosities;
  final List eventsData;
  final List events;
  final String image;
  final String picture;

  const Planet ({this.id, this.name, this.nickname, this.distance, this.type, this.orbit, this.gravity, this.temperature, this.surface, this.volume,this.density, this.naturalSatellites, this.description, this.nomenclature, this.structure, this.study, this.atmosphere, this.curiosities, this.eventsData, this.events, this.image, this.picture});
  
}

List<Planet> planets = [
  const Planet(
    id: '1',
    name: 'Mercúrio',
    nickname: 'O menor dos 8 planetas',
    distance: '57.909.227 Km',
    type: 'Rochoso',
    orbit: '88 dias ou 0,24 anos',
    gravity: '3.7 m/s²',
    temperature: '166,85 ºC',
    surface: '74.797.000 km²',
    volume: '60.827.208.742 km³',
    density: '5.427 g/cm³',
    naturalSatellites: '0',
    description: "    O menor planeta do nosso sistema solar e mais próximo do Sol, Mercúrio é apenas um pouco maior que a Lua da Terra. Da superfície de Mercúrio, o Sol pareceria três vezes maior do que quando visto da Terra, e a luz do sol seria sete vezes mais brilhante. Apesar de sua proximidade com o Sol, Mercúrio não é o planeta mais quente do nosso sistema solar - esse título pertence à vizinha Vênus, graças à sua densa atmosfera. Mas Mercúrio é o planeta com a órbita mais curta, percorrendo o Sol a cada 88 dias terrestres. ",
    nomenclature: "   O planeta foi batizaram com o nome do seu deus romano Mercúrio, equivalente ao grego Hermes, o mais rápido de todos os deuses greco romanos, em virtude do planeta ter a órbita mais curta, uma ano em Mercúrio é equivalente a 88 dias terrestres.",
    structure: "    Mercúrio é o segundo planeta mais denso, depois da Terra, com alta proporção do núcleo em relação ao tamanho do planeta, um grande núcleo metálico com um raio de cerca de 2.074 quilômetros, cerca de 85% do raio do planeta. Há evidências de que ele é parcialmente fundido ou líquido. A concha externa de Mercúrio, comparável à concha externa da Terra (chamada manto e crosta), tem apenas cerca de 400 quilômetros (250 milhas) de espessura.\n\n    Mercúrio se formou a cerca de 4,5 bilhões de anos atrás, quando a gravidade juntou gás e poeira em turbilhão para formar esse pequeno planeta mais próximo do Sol. Como seus colegas planetas rochosos, Mercúrio tem um núcleo central, um manto rochoso e uma crosta sólida.",
    study: '    Como Mercúrio está muito próximo ao Sol, é difícil observar diretamente da Terra, exceto durante o amanhecer ou o crepúsculo, quando o brilho do Sol não supera o pequeno Mercúrio. No entanto, 13 vezes por século, os observadores da Terra podem assistir Mercúrio atravessar a face do Sol, um evento chamado trânsito. Esses trânsitos raros ocorrem nos dias de 8 de maio a 10 de novembro. Os primeiros trânsitos de Mercúrio no século XXI ocorreram em 7 de maio de 2003, 8 de novembro de 2006 e 9 de maio de 2016. O próximo será em 11 de novembro de 2019.\n\n   A primeira sonda a visitar Mercúrio foi o Mariner 10, que captou cerca de 45% da superfície. E a espaçonave MESSENGER, em homenagem ao nome do planeta que se refere ao deus mensageiro, voou três vezes por Mercúrio e orbitou o planeta por quatro anos antes de colidir com sua superfície. Em 2018 Agência Espacial Europeia lançou sua primeira missão para explorar Mercúrio, a BepiColombo.',
    atmosphere: '   Mercúrio não tem uma atmosfera, em vez disso possui uma fina exosfera composta de átomos arrancados da superfície pelo vento solar e atingindo meteoróides. A exosfera de Mercúrio é composta principalmente de oxigênio, sódio, hidrogênio, hélio e potássio. O campo magnético de Mercúrio é deslocado em relação ao equador do planeta. Embora o campo magnético dele na superfície tenha apenas um por cento da força do planeta, ele interage com o campo magnético do vento solar para, às vezes, criar tornados magnéticos intensos que canalizam o rápido e quente plasma de vento solar até a superfície do planeta. Quando os íons atingem a superfície, eles emitem átomos com carga neutra e os enviam em um ciclo para o céu.',
    curiosities: "    Apesar de pequeno e ter um ano muito rápido, Mercúrio tem uma rotação muito lenta, um dia dura 59 dias terrestres, então, em Mercúrio, 2 dias duram mais que 1 ano. Além disso, a superfície do planeta é marcada por muitas crateras de impacto resultantes de colisões com meteoroides e cometas. Crateras e características de Mercúrio são nomeadas em homenagem a famosos artistas, músicos ou autores falecidos, incluindo o autor infantil Dr. Seuss e o pioneiro da famosa dança de teatro Alvin Ailey.",
    eventsData: ['  1613:  ', '  1631:  ', ' 1965:  ', ' 1974:  ', '  1991:  ', '2008:  ', '  2011:  ', ' 2015:  ', ' 2018:  '],
    events: [
      'Thomas Harriott e Galileo Galilei observam Mercúrio com o telescópio recém-inventado;',
      'Pierre Gassendi utiliza um telescópio para observar da Terra como Mercúrio atravessa a face do Sol;',
      'acreditando incorretamente por séculos que o mesmo lado de Mercúrio sempre enfrenta o Sol, os astrônomos que usam radar descobrem que o planeta gira três vezes a cada duas órbitas;',
      'o Mariner 10 fotógrafa cerca de metade da superfície de Mercúrio durante três sobrevoos;',
      'Cientistas que usam radar terrestre encontram sinais de gelo bloqueados em áreas sempre sombreadas de crateras nas regiões polares de Mercúrio;',
      'MESSENGER observou Mercury durante três sobrevoos',
      'MESSENGER inicia sua missão orbital em Mercury, produzindo um tesouro de imagens, dados de composição e descobertas científicas',
      'MESSENGER deliberadamente bateu em Mercury depois de gastar todo o seu propulsor, terminando a sua missão',
      'BepiColombo é lançada com uma data prevista para a inserção da órbita de Mercúrio em 2025'
    ],
    image: 'assets/img/mercury.png',
    picture: 'assets/pictures/mercury.jpg',
  ),
  const Planet(
    id: '2',
    name: 'Vênus',
    nickname: 'O planeta mais quente',
    distance: '108.209.475km',
    type: 'Rochoso',
    orbit: '224,7 dias ou 0,62 anos',
    gravity: '8.87 m/s²',
    temperature: '461 ºC',
    surface: '460.234.317 km²',
    volume: '928.415.345.893 km³',
    density: '5.243 g/cm³',
    naturalSatellites: '0',
    description: '    Vênus é o segundo planeta do Sistema Solar e o nosso vizinho mais próximo. Semelhante em estrutura e tamanho à Terra, Vênus é uma paisagem vulcânica coberta por extensas planícies com altas montanhas vulcânicas e vastos planaltos. Sua atmosfera espessa retém o calor em um efeito estufa descontrolado, tornando-o o planeta mais quente do sistema solar, com temperaturas de superfície quentes o suficiente para derreter o chumbo. Vestígios abaixo das nuvens revelam vulcões e montanhas deformadas.',
    nomenclature: '   Vênus foi nomeado em homenagem a antiga deusa romana do amor e da beleza, conhecida como Afrodite pelos gregos antigos, pois depois da Lua, é o objeto mais brilhante do céu noturno, atingindo uma magnitude aparente de -4,6, o suficiente para produzir sombras.',
    structure: '    Vênus é, em muitos aspectos, semelhante à Terra em sua estrutura. Possui um núcleo de ferro com aproximadamente 3.200 quilômetros de raio. Acima disso, há um manto feito de rocha quente agitando lentamente devido ao calor interior do planeta. A superfície é uma fina crosta de rocha que se projeta e se move à medida que o manto do planeta muda e cria vulcões.\n\n    Quando o sistema solar se estabeleceu em sua organização atual há cerca de 4,5 bilhões de anos, Vênus se formou quando a gravidade juntou gás e poeira em turbilhão para formar o segundo planeta a partir do Sol. Como seus colegas planetas terrestres, Vênus tem um núcleo central, um manto rochoso e uma crosta sólida.',
    study: '    Em 31 de janeiro de 2019: Um grupo de pesquisa japonês identificou uma estrutura de listras gigantes entre as nuvens que cobrem Vênus com base na observação da sonda Akatsuki. A equipe também revelou as origens dessa estrutura usando simulações climáticas em larga escala. O grupo foi liderado pelo professor assistente de projeto Hiroki Kashimura (Universidade de Kobe, Escola de Pós-Graduação em Ciências) e esses resultados foram publicados em 9 de janeiro na Nature Communications.\n\n   Mais de 40 naves espaciais exploraram Vênus. A missão Magellan dos anos 90 mapeou a superfície do planeta e a Akatsuki atualmente está orbitando Vênus.',
    atmosphere: '   A atmosfera de Vênus consiste principalmente de dióxido de carbono, com nuvens de gotículas de ácido sulfúrico. A atmosfera espessa retém o calor do Sol, como um efeito estufa em larga escala, resultando em temperaturas da superfície superiores a 470 graus Celsius. A atmosfera tem muitas camadas com temperaturas diferentes. No nível em que as nuvens estão, a cerca de 48 quilômetros da superfície, é mais ou menos a mesma temperatura da superfície da Terra.\n\n   Embora Vênus seja semelhante em tamanho à Terra e tenha um núcleo de ferro de tamanho semelhante, o campo magnético de Vênus é muito mais fraco que o da Terra devido à lenta rotação de Vênus.',
    curiosities: 'A rotação e a órbita de Vênus são incomuns de várias maneiras. Vênus é um dos dois planetas que giram de leste a oeste. Somente Vênus e Urano têm essa rotação "para trás". Ele completa uma rotação em 243 dias terrestres - o dia mais longo de qualquer planeta em nosso sistema solar, ainda mais do que um ano inteiro em Vênus. Mas o Sol não nasce e se põe a cada "dia" em Vênus, como acontece na maioria dos outros planetas. Em Vênus, um ciclo dia-noite leva 117 dias terrestres porque Vênus gira na direção oposta à sua revolução orbital em torno do Sol.',
    eventsData: ['650 aC: ', '  1610:  ', ' 1639:  ', '  1761:  ', '  1961:  ', ' 1962:  ', ' 1970:  ', ' 1990:  ', '2005:  ', ' 2015:  '],
    events: [
      'Os astrônomos maias fizeram observações detalhadas de Vênus, levando a um calendário altamente preciso;',
      'Galileu Galilei documenta as fases de Vênus no The Starry Messenger;',
      'O primeiro trânsito previsto de Vênus é observado na Inglaterra;',
      'Duas expedições européias para assistir Vênus cruza em frente ao Sol levam à primeira boa estimativa da distância do Sol até a Terra;',
      'Os retornos do radar de Vênus são usados para determinar o valor mais preciso (até o momento) da Terra ao Sol (publicado em 1962);',
      'O Mariner 2 da NASA chega a Vênus e revela as temperaturas extremas da superfície do planeta. É a primeira nave espacial a enviar informações de outro planeta;',
      'O programa Venera da União Soviética faz uma série de pousos bem sucedidos de naves espaciais robóticas na superfície de Vênus, enviando de volta os primeiros dados da superfície venusiana e as únicas imagens da superfície do planeta até hoje;',
      'A sonda Magellan da NASA, em órbita ao redor de Vênus, usa o radar para mapear 98% da superfície do planeta até 1994;',
      'A Agência Espacial Europeia lança o Vênus Express para estudar a atmosfera e a superfície. A sonda espacial chegou à órbita de Vênus em abril de 2006 e estudou o planeta até 2014;',
      'Após o lançamento em 2010 a sonda japonesa Akatsuki alcançou a órbita de Vênus. Foi a primeira missão do Japão para explorar Vênus.',
    ],
    image: 'assets/img/venus.png',
    picture: 'assets/pictures/venus.jpg',
  ),
  const Planet(
    id: '3',
    name: 'Terra',
    nickname: 'Nossa Casa',
    distance: '149.598.262 Km',
    type: 'Rochoso',
    orbit: '365 dias ou 1 ano',
    gravity: '9.80665 m/s²',
    temperature: '14ºC',
    surface: '510.064.472 Km²',
    density: '5,513 g/cm³',
    volume: '1.083.206.916.846 km³',
    naturalSatellites: '1 (Lua)',
    description: "    Nosso planeta natal é o terceiro planeta do Sol, e o único lugar que conhecemos até agora é habitado por seres vivos. Enquanto a Terra é apenas o quinto maior planeta do sistema solar, é o único mundo em nosso sistema solar com água líquida na superfície. Apenas um pouco maior que o vizinho Vênus, a Terra é o maior dos quatro planetas mais próximos do Sol, todos feitos de rocha e metal.",
    nomenclature: '   O nome Terra tem pelo menos 1.000 anos. Todos os planetas, exceto a Terra, receberam o nome de deuses e deusas gregos e romanos. No entanto, o nome Terra é uma palavra germânica, que significa simplesmente "o solo".',
    structure: '    A Terra é composta por quatro camadas principais, começando com um núcleo interno no centro do planeta, envolvido pelo núcleo externo, manto e crosta.\n\n    O núcleo interno é uma esfera sólida feita de ferro e níquel com cerca de 1.221 quilômetros de raio. Lá, a temperatura chega a 5.400 graus Celsius. Ao redor do núcleo interno está o núcleo externo. Essa camada tem cerca de 2.300 quilômetros de espessura, feita de fluidos de ferro e níquel. Entre o núcleo externo e a crosta está o manto, a camada mais espessa. Essa mistura quente e viscosa de rocha derretida tem cerca de 2.900 quilômetros de espessura e tem a consistência de caramelo. A camada mais externa, a crosta terrestre, percorre em média 30 quilômetros de profundidade em terra. No fundo do oceano, a crosta é mais fina e se estende por cerca de 5 km do fundo do mar até o topo do manto. ',
    study: '    A Terra é composta de sistemas complexos e interativos que criam um mundo em constante mudança que estamos tentando entender. Do ponto de vista do espaço, somos capazes de observar nosso planeta globalmente, usando instrumentos sensíveis para entender o delicado equilíbrio entre seus oceanos, ar, terra e vida. As observações de satélite da NASA ajudam a estudar e prever clima, seca, poluição, mudanças climáticas e muitos outros fenômenos que afetam o meio ambiente, a economia e a sociedade.\n\n    Lançados em 2018, os satélites gêmeos de Recuperação da Gravidade e Clima Experiment Follow-On (GRACE-FO) serão baseados no registro de dados climáticos da Terra de seu predecessor bem-sucedido, GRACE, que completou sua missão científica em outubro de 2017 após mais de 15 anos em órbita. O GRACE-FO estenderá o legado de realizações científicas do GRACE, que abrange desde o rastreamento de mudanças em massa das camadas de gelo polares da Terra e a estimativa de mudanças globais nas águas subterrâneas, até a medição das mudanças em massa de grandes terremotos e a dedução de mudanças nas correntes oceânicas profundas, uma força motriz do clima.',
    atmosphere: 'Perto da superfície, a Terra possui uma atmosfera que consiste em 78% de nitrogênio, 21% de oxigênio e 1% de outros gases, como argônio, dióxido de carbono e néon. A atmosfera afeta o clima de longo prazo da Terra e o clima local de curto prazo e nos protege de grande parte da radiação prejudicial vinda do sol. Também nos protege dos meteoróides, a maioria dos quais queima na atmosfera, vistos como meteoros no céu noturno, antes que possam atingir a superfície como meteoritos.',
    curiosities: '    A terra não é plana. É um globo rochoso.',
    eventsData: ['2000', '2000'],
    events: ['2000', '2000'],
    image: 'assets/img/earth.png',
    picture: 'assets/pictures/earth.jpg',
  ),
  const Planet(
    id: '4',
    name: 'Marte',
    nickname: 'Planet Vermelho',
    distance: '227.943.824 km',
    type: 'Rochoso',
    orbit: '780 dias ou 2,135 anos',
    gravity: '3,71 m/s²',
    temperature: '−63 ºC',
    surface: '44.371.391 km²',
    density: '3,934 g/cm³',
    volume: '163.115.609.799 km³',
    naturalSatellites: '2 (Fobos e Deimos)',
    description: "    O quarto planeta do Sol, Marte, é um mundo deserto, frio e empoeirado, com uma atmosfera muito fina. Este planeta dinâmico possui estações, calotas polares e clima, desfiladeiros e vulcões extintos, evidência de um passado ainda mais ativo.\n    Marte é um dos corpos mais explorados do nosso sistema solar e é o único planeta para o qual enviamos rovers para percorrer a paisagem alienígena. Atualmente, a NASA tem três naves espaciais em órbita, um rover e um lander na superfície e outro rover em construção aqui na Terra. A Índia e a ESA também têm naves espaciais em órbita acima de Marte.\n    Esses exploradores robóticos encontraram muitas evidências de que Marte estava muito mais úmido e quente, com uma atmosfera mais espessa, bilhões de anos atrás.",
    nomenclature: '   Marte foi nomeado pelos antigos romanos por seu deus da guerra porque sua cor avermelhada lembrava sangue. Outras civilizações também nomearam o planeta para esse atributo; por exemplo, os egípcios chamavam de "Her Desher", que significa "o vermelho". Ainda hoje, é freqüentemente chamado de "Planeta Vermelho" porque os minerais de ferro na sujeira marciana oxidam ou ferrugem, fazendo com que a superfície fique vermelha.',
    structure: '    Marte tem um núcleo denso em seu centro entre 930 e 1.300 milhas (1.500 a 2.100 quilômetros) em raio. É feito de ferro, níquel e enxofre. Ao redor do núcleo há um manto rochoso com 1.240 a 1.880 quilômetros de espessura e, acima disso, uma crosta de ferro, magnésio, alumínio, cálcio e potássio. Essa crosta tem de 10 a 50 quilômetros de profundidade.\n   Quando o sistema solar se estabeleceu em seu layout atual, cerca de 4,5 bilhões de anos atrás, Marte se formou quando a gravidade puxou o turbilhão de gás e poeira para se tornar o quarto planeta do Sol. Marte tem cerca da metade do tamanho da Terra e, como seus colegas planetas terrestres, possui um núcleo central, um manto rochoso e uma crosta sólida.',
    study: '',
    atmosphere: '',
    curiosities: '',
    eventsData: [''],
    events: [''],
    image: 'assets/img/mars.png',
    picture: 'assets/pictures/mars.jpg',
  )
];

    // id: '',
    // name: '',
    // nickname: '',
    // distance: '',
    // type: '',
    // orbit: '',
    // gravity: '',
    // temperature: '',
    // surface: '',
    // density: '',
    // volume: '',
    // naturalSatellites: '',
    // description: "",
    // nomenclature: '',
    // structure: '',
    // study: '',
    // atmosphere: '',
    // curiosities: '',
    // eventsData: [''],
    // events: [''],
    // image: 'assets/img/mars.png',
    // picture: 'assets/pictures/mars.jpg',