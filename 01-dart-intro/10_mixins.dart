// Animal es la clase base de todos los seres del ejemplo.
abstract class Animal{}

// Mamifero hereda de Animal y representa la categoria de los mamiferos.
abstract class Mamifero extends Animal{}

// Ave hereda de Animal y representa la categoria de las aves.
abstract class Ave extends Animal{}

// Pez hereda de Animal y representa la categoria de los peces.
abstract class Pez extends Animal{}

// Volador es un mixin que agrega la habilidad de volar a cualquier clase.
//abstract class Volador{
mixin class Volador{  
  // volar imprime un mensaje indicando que el objeto puede volar.
  void volar() => print ('estoy volando! ');
  
}

// Caminante es un mixin que agrega la habilidad de caminar.
//abstract class Caminante{
mixin class Caminante{
  // caminar imprime un mensaje indicando que el objeto puede caminar.
  void caminar() => print ('estoy caminando! ');
  
}

// Nadador es un mixin que agrega la habilidad de nadar.
//abstract class Nadador{
mixin class Nadador{
  // nadar imprime un mensaje indicando que el objeto puede nadar.
  void nadar() => print ('estoy nadando! ');
  
}

// Delfin es un mamifero que usa el comportamiento de nadar.
class Delfin extends Mamifero with Nadador{}
// Murcielago es un mamifero que puede volar y caminar.
class Murcielago extends Mamifero with Volador, Caminante{}
// Gato es un mamifero que solo puede caminar.
class Gato extends Mamifero with Caminante{}

// Paloma es un ave que puede volar y caminar.
class Paloma extends Ave with Volador, Caminante {}
// Pato es un ave que combina caminar, volar y nadar.
class Pato extends Ave with Volador, Caminante, Nadador{}
  
// Tiburon es un pez que puede nadar.
class Tiburon extends Pez with Nadador {}
// PezVolador es un pez que puede nadar y volar.
class PezVolador extends Pez with Nadador, Volador{}



// main crea instancias de animales y ejecuta sus comportamientos.
void main (){
  
  // flipper es un Delfin y usa la habilidad de nadar.
  final flipper =  Delfin ();
  flipper.nadar();
  
  // batman es un Murcielago y puede caminar y volar.
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
   
  // namor es un Pato y usa todas las habilidades.
  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();
}
