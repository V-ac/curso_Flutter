void main () {
  
  //final mySquare = Square (side: 10);
  final mySquare = Square (side: -10);
  
    
  print('Área:  ${mySquare.calculateArea() }');
  //tenemos que controlar los valores de la clase como por ejemplo
  //mySquare.side = -5;
  mySquare.side = 5;
  //es muy manipulable las propiedades

  
  //acceder al get
  print('Área:  ${mySquare.area }');
  
  
}


class Square {
  
  //esta es una variable publica:
  //double side; //side * side
  
  //como es una variable que nuca va a cabiar y 
  //como la clase, la varible es privada entonces siempre va a permancer con ese valor
  //por eso le ponemos el final
  //esta es una propiedad privada
  //final double _side; //side * side
  //cuando es privada solo se puede ver en la misma clase
  
  //cuando sabemos que vamos a cambiarlo y 
  //vamos a usar set entonces no se le pone la palabra final
  double _side; //side * side
  
  
  //constructor
  Square({required double side})
    //primero las assesiones para que si hay un 
    //error de valores que no queremos, no se guarden de manera normal
    //si una assesion no se cumple no se ejecuta la siguiente linea
    //y se tiene que poner como segundo argumento
    //el mensaje de error para que sea especifico
    //cual fue la falla que se genero
    :assert( side >= 0, 'El lado tiene que se >= 0'),
    _side  = side;
  
  double get area {
    return _side * _side;
  }
  
  
  //esta condicion del if, obliga al usuario que introduzca un valor entero positivo
  set side(double value) {
    print('Guardando el nuevo valor $value');
    
    //varificamos que sea valido el numero que no
    //permita negativos
    if (value < 0) throw 'Valor tiene que ser > 0';
    
    //el throw es una instruccion que va a 
    //terminar la ejecucion del setter
    
    _side = value;
    
  }
  
  
  double calculateArea() {
    return _side * _side;
  }
  
  
}
