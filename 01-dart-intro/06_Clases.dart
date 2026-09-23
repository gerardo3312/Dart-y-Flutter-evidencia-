// Punto de inicio: void indica que main no devuelve valor y crea un Hero.
void main (){
    
  // final fija la referencia; new llama al constructor Hero con dos datos.
  final wolverine = new Hero( name: 'logan',  power:  'Regeneration');
  // print recibe el objeto y llama automaticamente a su toString.
  print(wolverine);
  // Lee e imprime la propiedad name del objeto creado.
  print(wolverine.name);
  // Lee e imprime la propiedad power del mismo objeto.
  print(wolverine.power);
  
}


// class define un tipo; main depende de ella para crear el objeto Hero.
class Hero{
  
  // Guarda el nombre del heroe.
  String name;
  // Guarda la habilidad o poder del heroe.
  String power;
  
  // El constructor inicializa name y power usando required y this.
  Hero ({
    required this.name, 
    required this.power});
  
  //Hero( String pName, String pPower )
   // : name=pName,
   // power =pPower;
  
  // @override avisa que se reemplaza el toString heredado de Object.
  @override //indica a que se esta sobreescribiendo 
  // toString es llamado por print para representar este objeto como texto.
  String toString(){
    
    // Une el nombre y el poder para devolver la descripcion del heroe.
    return '$name - $power' ;
  }

}