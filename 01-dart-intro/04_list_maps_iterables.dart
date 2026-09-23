// Punto de inicio: void indica que main no devuelve ningun valor.
void main(){
  // final fija la lista; los print y filtros siguientes dependen de numbers.
  final numbers = [1,2,3,4,5,5,6,7,8,9,9,10];
  
  // Muestra la lista original sin transformarla.
  print('list original $numbers');
  // length es una propiedad de List y depende de numbers.
  print('length ${numbers.length}');
  // [0] obtiene el primer elemento porque los indices empiezan en cero.
  print('index 0: ${numbers[0]}');
  // first obtiene directamente el primer elemento.
  print('first: ${numbers.first}');
  // reversed es una propiedad de List y crea un Iterable invertido.
  print('Reversed: ${numbers.reversed}');
  
  
  // final guarda el Iterable creado por numbers.reversed para las conversiones.
  final reversedNumbers = numbers.reversed;
  // Muestra la vista como Iterable, sin convertirla aun en lista.
  print('Iterable: $reversedNumbers');
  // toList depende de reversedNumbers y convierte el Iterable en List.
  print('List: ${ reversedNumbers.toList() }');
  // toSet depende de reversedNumbers y devuelve un Set sin repetidos.
  print('Set: ${ reversedNumbers.toSet() }');
  
  
  
  // where depende de numbers y recibe una funcion para filtrar cada elemento.
  final numbersGreaterThan5 = numbers.where(  ( int num){
    // num es entregado por where a esta funcion en cada recorrido.
    return num > 5;
    
  });
  
  // Imprime el resultado filtrado como Iterable.
  print('>5 iterable: $numbersGreaterThan5');
  // toSet depende del Iterable filtrado y elimina numeros repetidos.
  print('>5 set: ${numbersGreaterThan5.toSet()}');
  
}