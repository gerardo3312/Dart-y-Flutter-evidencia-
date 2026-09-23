// Punto de inicio: void indica que main no devuelve valor y crea un Square.
void main (){
  
  // final guarda el objeto; new llama al constructor, que valida side con assert.
  final mySquare = Square (side : -10 );

  // Esta asignacion usaria el setter, pero esta desactivada.
  //mySquare.side= 5;
  
  // print pide mySquare.area; el getter get calcula usando _side.
  print ( 'area: ${ mySquare.area }');
  
}



// class define Square; main depende de esta clase para calcular el area.
class Square{
  // Dato privado que solo se modifica mediante las reglas de la clase.
  double _side; // side * side
  //el guion bajo indica que es una propiedad privada 
  
  // El constructor recibe side y usa assert antes de asignarlo a _side.
  Square ({required double side})
    : assert( side >= 0, 'side must be >=0 '),
  //las assersiones sirven como reglas y normas que deben cumplirse al pie de la letra utilizar tantas como se ocupen
  _side = side;
  
  // get crea una propiedad de lectura; depende de _side y la usa main.
  double get area {
    
    // El area de un cuadrado es lado por lado.
    return _side * _side; 
  }
  
  
  // set crea una propiedad de escritura para cambiar _side con reglas.
  set side( double value ){
    
    // Informa el nuevo valor que se intenta guardar.
    print ('setting new value $value');
    // if comprueba la condicion y throw detiene el programa si es negativa.
    if (value < 0 ) throw 'Value must be >=0';
    
    // Guarda el valor despues de pasar la validacion.
    _side = value;
    
  }
  
  // Metodo publico alternativo; tambien depende de _side, pero main no lo llama.
  double calculateArea(){
    // Devuelve lado por lado usando el dato privado.
    return _side * _side;
    
  }
  
}