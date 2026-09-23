// Punto de inicio: void indica que main no devuelve nada y usa las variables.
void main (){
  
  // final permite asignar una vez; print depende de esta variable.
  final String pokemon = 'Ditto';
  // int limita el dato a enteros; final impide cambiarlo despues.
  final int hp=100;
  // bool solo acepta true o false; print usa este estado.
  final bool isAlive= true;
  // List<String> exige una lista de textos; print la muestra despues.
  final List<String> abilities = ['impostor'];
  // final fija la referencia y <String> indica que sprites contiene textos.
  final sprites = <String> ['ditto/front.png', 'ditto/back.png'];
 
  
  // dynamic permite cambiar de tipo; las reasignaciones dependen de esta variable.
  //dynamic == null
  // Esta nota recuerda que dynamic puede guardar valores de distintos tipos.
  //cualquier valor va a ser permitido en dynamic tener cuidado de donde se usa 
  // dynamic declara una variable flexible que cambia en las siguientes lineas.
  dynamic errorMesssage = 'Hola';
  // Ahora la misma variable guarda un booleano.
  errorMesssage = true;
  // Ahora guarda una lista de numeros.
  errorMesssage = [1,2,3,4,5,6];
  // Ahora guarda un conjunto de numeros.
  errorMesssage = { 1,2,3,4,5,6 };
  // Ahora guarda una funcion que devuelve true.
  errorMesssage = ()=> true;
  // Finalmente queda sin valor; este es el valor que se imprimira.
  errorMesssage = null;
  
  
  // La cadena depende de todas las variables anteriores; print las muestra.
  print(""" 
  $pokemon 
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMesssage
  """);
  
}