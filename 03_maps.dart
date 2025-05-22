void main () {
  // Map<String, dynamic> <--- se puede encontrar en el mundo laboral
  final Map<String, dynamic> pokemon = { //todos son objetos porque tiene sus propiedades
    'name': 'Pikachu',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor '],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };
  
  print(pokemon);
  
  
  print('Name:  ${pokemon['name'] }');
  print('Name:  ${pokemon['sprites'] }');
  
  //tarea
  //necesita,mo
  print('Back:  ${ pokemon['sprites'][2]  }');
  print('Front:  ${ pokemon['sprites'][1]  }');
  
  
}