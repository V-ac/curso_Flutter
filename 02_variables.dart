void main() {
  
  //ponerlo como final pero si en algun moemnto vamos a cambiar el valor
  //entonces le quitamos el final
  final String pokemon = 'Pikachu';
  final int hp = 100;
  final bool isAlive = true;
  //remocomendable usar la misma forma de declar una lista en la 
  //aplicacion para que no haya complicacione sla momento de quere escalar la aplicacion
  //final abilities = ['imposrtor'];
  //final abilities = <String> ['imposrtor'];
  final List<String> abilities = ['impostor'];
  final sprites = <String> ['ditto/front.png', 'ditto/back.png'];
    
  //obtine cualquier valor segun sea requerido, puede contener nulos
  //dynamic == null
  //si se le pone el signo ? sale un warning ya que dynamic pude ver con un valor nulo
  //hay que tener cuidado de no perder informacion porque no tiene resticcioens al momento de los valores de las variables. Pierde cualquier reccion incluendo el Null Safety
  dynamic errorMessage = 'Hola';
  errorMessage = true; //boleano
  errorMessage = [1,2,3,4,5,6]; //listado de numeros
  errorMessage = {1,2,3,4,5,6}; //set de datos
  errorMessage = () => true; //una funcion que retorna un valor boleano
  errorMessage = null; //puede ser igual a null
  
  // tecnicamnete este es un error pero no aparece como tal.
  //errorMessage += 1;
  
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  
  """);
  
}