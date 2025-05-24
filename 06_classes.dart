void main () {
  
  //esta forma funciona con las que no tiene el required
  //final wolverine = Hero('Logan', 'Regeneracion');
  
  //este es el con funciones con nombres
  //final wolverine = Hero(name: 'Logan', power:'Regeneracion');
  final wolverine = Hero(name: 'Logan');
  
  print( wolverine);
  print( wolverine.name);
  print( wolverine.power);
  
}


//clase donde se declaran las propiedades
class Hero {
  
  //las propiedades siempre tiene que tener inicializadas con valores
  String name;
  String power;
  
  //funcion de inicializacion de la clase
  //esta forma es muy tardia de inicializar las variables y por esop nos da error, no es como otros lenguajes de programacion
  //Hero(String pName, String pPower) {
    
    //no es necesario poner la palabra 'this' ya que dart ya sabe que estamos haciendo
    //this.name = pName;
    //this.power = pPower;
    
    //name = pName;
    //power = pPower;
      
  //}
  
  
  //una de las formas para solucionar lo de la inicializacion es de la siguiente manera:
  //esta es la forma tradicional de inicializar los parametros
//   Hero(String pName, String pPower)
//     : name = pName,
//     power = pPower;
  
  //algunas veces vamos a inicializar de esta forma o otras veces vamos a usar la siguiente forma de inicializar las variables:
  
  //Hero(this.name, this.power);
 
 
  
  //ahora vamos a ver como se hacen los arguemntos por nombre:
  //que cosas tenemos por defecto? es lo que nos da errores si los dejamos asi
  //Hero({this.name, this.power});
  //tal //aqui estamos diciendo que si o si quemos los valores de manera obligatoria
  Hero({
    required this.name, 
    //aqui estamos diciendo que no es obligatorio y si no nos pasan algtun valor, por defecto seria sin poder
    this.power = 'Sin poder'
    });
  
  
  //es para sobree esccribir lo de una clase
  //no es obligatorio pero es de buna practica de programacion ponerla
  @override
  String toString() {
    return '$name - $power';
  }
  
  
  
}