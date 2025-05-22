void main() {
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('List original $numbers');
  
  print('Length: ${numbers.length} ');
  
  print('Index 0: ${numbers[0]} ');
  print('First:  ${numbers.first} ');
  print('Reversed:  ${numbers.reversed} ');
  
  
  //basicamente copia los elementos de un objeto
  //y se puede ser interactivo haciendo que el
  //usuario pueda acceder a los valos que tiene
  //un iterable siempre tiene ()
  final reverseNumbers = numbers.reversed;
  print('Iterable: $reverseNumbers');
  print('List: ${reverseNumbers.toList() }');
  
  
  //listado con los valores unicos, no se muestran valores que se llagan a repetir, asi como en este ejemplo el 5 y 9 que se repetian mas de 1 vez
  //si signo son llaves {} y nos dicen que es un toSet
  print('List: ${reverseNumbers.toSet() }');
  
  
  //para eliminar los duplicados podemos hacer esto:
  print('Eliminamos duplicados: ${numbers.toSet().toList()} ');
  
  
  //el num estaba subrrayado porquee quiereque especifiquemos en tipo de dato que es num. 
  //ya sebe que tipo de dato espero mas vale tener legitibilidad en estas sitiaciones. Entonmces le ponemos 'int'
  
  final numbersGreaterThan5 = numbers.where( (int num) {
    //aqui evaluamos la condicion y nos retorna los objetos/valores/variables que cumplen con la condicion que aplicamos, en este caso valores mayor que 5
    return num > 5;
  });
  
  //nos regresa un iterable
   print('>5 iterable: $numbersGreaterThan5');
  
  //para unb set de datos que no quiero valores duplicados entonces ponemos:
   print('>5 Set: ${numbersGreaterThan5.toSet()}');
  
  
  
  
  
  
  
}