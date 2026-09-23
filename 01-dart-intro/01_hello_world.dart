// Punto de inicio: Dart ejecuta primero main; void indica que no devuelve nada.
void main (){
  
  // Esta linea quedaria como una variable modificable, pero esta desactivada.
  //var myName = 'gerardo';
  // Esta declaracion permitiria asignar el valor mas adelante, pero esta desactivada.
  // late final myName;
  // Esta variable de texto tambien seria valida, pero esta desactivada.
  //String myName = 'gerardo';
  // const crea una constante; myName es usado por los tres print siguientes.
  const myName = 'gerardo';
  
  // Esta reasignacion no se ejecuta; una constante no puede recibir otro valor.
  //myName = 'mundo';
  
  // print es una funcion de Dart; depende de myName para completar el saludo.
  print('Hola $myName');
  // ${} permite ejecutar toUpperCase sobre myName antes de llamar a print.
  print('Hola ${myName.toUpperCase() }');
  // ${} evalua la suma antes de que print muestre el texto.
  print('hola ${1+1}');
}
