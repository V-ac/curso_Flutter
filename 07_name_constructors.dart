void main() {
  //peticion de objeto Json como un mapa por ejemplo

  final Map<String, dynamic> rawJson = {
    'name': 'Spaiderman',
    'power': 'Trepar paredes',
    'isAlive': true,
  };

  //para que tennga la forma correcta en un mapa que viene de Json hacemos lo siguiewnte:

  //para que no haya problemas de que no encuentra los valores de Json,
  //vamos a poner ?? y despues el valor predeterminado que en
  //el caso de isAlive es false

  //   final ironman = Hero(
  //       isAlive: rawJson['isAlive2'] ?? false,
  //       power: 'Dinero',
  //       name: 'Tony Stark'
  //       );

  //llamdo al Json se haria de esta manera

  final ironman = Hero.fromJson(rawJson);

  //
  //   final ironman = Hero(
  //     isAlive: false,
  //     power: 'Dinero',
  //     name: 'Tony Stark'
  //   );

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  //hacemos un contructos pero este caso es para json para no tener que
  //hacer forma tediosa de hacerlo de manera manual al momento de llamar el constructor.
  
  //hay margen de error por espacios o letras diferentes como mayusculas
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name encojntrado',
      power = json['power'] ?? 'No power encontardo',
      isAlive = json['isAlive'] ?? 'No Alive encontrado';

  @override
  String toString() {
    //en isAlive vamos a hacer un if para mostar un valor de string
    return '$name, $power, isALive: ${isAlive ? 'YES' : 'Nop'}';
  }
}
