void main () {
  
  
  //var nyme = 'Verónica'; wl punto y coma no son opcionales
  //String myName = 'Verónica'; //Es mejor declar que tipo de variable se espera
  //final myName = 'Verónica'; //no se puede cambiar el valor de la variable, osea que es estatica. Esta se usa para obtener el valor y la diferecia es el momento de la creacion de la aplicacion
  //late final myName; //Asigancion tardia para que despues le asigne un valor. Ocuarre cuendo no sabemos el valor tal cual de la variable en ese momento
  //myName = 'Mundo';
  
  const myName = 'Verónica'; //Se crea al momento de arrancar la aplicacion. Se usa cuando sé que no se va a cambiar en ningun momento y es importante en la construccion de la aplicacion
  
  print('Hola $myName'); //Se inyecta un string en otro string
  //para que salga el valor de una propiedad o metodo de la variable se usan {}
  //interpolacion dde string
  print('Hola ${myName.toUpperCase() }');
  print('Hola ${1+1}');
  
}