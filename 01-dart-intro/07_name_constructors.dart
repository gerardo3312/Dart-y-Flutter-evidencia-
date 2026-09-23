// Punto de inicio: void indica que main no devuelve valor y crea un Hero.
void main (){

  
  // final fija el mapa; sus claves seran usadas por Hero.fromJson.
  //estructura funcional para estructuras hhtp "temporales"
  final Map<String, dynamic> rawJson =  {
      
      'name' : 'Toni Stark',
      'power': 'Money',
      'isAlive' : true
  };
  
  // final guarda el objeto que devuelve el constructor nombrado fromJson.
  final ironman = Hero.fromJson( rawJson);
  
  
  //final ironman = Hero (
    //isAlive: false,
    //power: 'money',
    //name: 'Toni Stark'
  //);
  
  // Imprime el objeto y por eso utiliza su metodo toString.
  print (ironman);
  
}


// class define el tipo Hero que main crea desde el mapa rawJson.
class Hero{
  
  // Nombre del heroe.
  String name;
  // Poder del heroe.
  String power;
  // Indica si el heroe esta vivo.
  bool isAlive;
  
  // required obliga a entregar los tres valores al constructor normal.
  Hero({
    
    required this.name,
    required this.power,
    required this.isAlive
    
  });
  
  // El nombre fromJson permite elegir este constructor desde main.
  Hero.fromJson(Map<String, dynamic> json)
    //utilizar un map es bulnerable a errores ya que es muy estricto con su sintaxis y al utilizar json se debe utilizar los operadores ?? que hacen referencia a valores nulos 
    
    // json depende del mapa recibido y name toma su clave correspondiente.
    : name = json ['name' ] ?? 'no name found',
      // power depende de la clave power; ?? usa el texto si falta el valor.
      power = json ['power'] ?? 'no power found',
      // isAlive depende de la clave isAlive y ?? cubre un valor nulo.
      isAlive = json ['isAlive'] ?? 'no isAlive found';
  
   
  
  // @override reemplaza toString, que print usa al mostrar ironman.
  @override
  String toString(){
    
    // return entrega el texto; ?: elige una palabra segun isAlive.
    return '$name, $power, isAlive:, ${ isAlive ? 'YES': 'Nope' }';
  }
  
  
}


