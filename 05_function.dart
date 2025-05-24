void main () {
  //no esperamos ningun valor de retorno
  
  print(greetEveryone()); //imprime lo que retorna la funcion
  
  print('Suma: ${addTwoNumbers(10, 5)}');
  
  
  print( greetPerson( name: 'Verónica' , message: 'Como estas bb? ') );
  
}


//String greetEveryone() {
  //return 'Hello everyone!';
//}

//las funciones tambien tiene la funcion de 'funcion lambda' o 'funciones de flecha' 
//son iguales que se manejan en JS


String greetEveryone() => 'Hello everyone!';

//no es valido hacer este tipo de funcion de flecha:
//String greetEveryone() => {
  //return 'Hello everyone!';
//}

//porque no es permitido.
//despues de la flecha inmediatamnete tiene que venir el valor de retorno, no es valido hacer un cuespo de codigo.
//si necesitamos hacer un cuerpo de codigo, entonces usamos la sintaxis de funcion tradicional

//de esta manera no estamos especificando que tipo de dato necesitamos en los parametros y automaticamente se convierte en dinamicosa por eso no da error
//int addTwoNumbers(a,b) {
  //return a + b;
//}

//agregamos el tipado de dato en los parametros

//int addTwoNumbers(int a,int b) {
  //return a + b;
//}

//tarea, a funcion de flecha
//paremtros obligatorios
int addTwoNumbers(int a,int b) => a + b;


//opciona -> []
int addTwoNumbersOpcion(int a, [int b = 0] ) {
  
  //confirmamos si es un numero
  //b = b?? 0;
  
  //b ??= 0; //forma simplificada como el b++
  //esta forma es para cuendo el parametro es de esta forma: 
  //[int? b] 
  
  return a + b;
}

//se convierten en opcionales por {}
//como son opcionales, alguno de los dos o las dos varibles
//pueden llegar a ser nulas
//la palabra recured obliga a quien esta usando la funcion greetPeson introducir el valor si o si pro lo menos ese parametro
String greetPerson({ required String name, String message='Hola,'}) {
  return '$message $name';
}



















