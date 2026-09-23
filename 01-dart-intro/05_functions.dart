// Punto de inicio: void indica que main no devuelve valor y llama a las funciones.
void main() {
  // Ejecuta greatEveryone y muestra el texto que devuelve.
  print(greatEveryone());

  // Llama a addTwoNumbers con 10 y 20, y muestra su suma.
  print('suma: ${addTwoNumbers(10, 20)}');

  // Llama a la version corta de la funcion y muestra su resultado.
  print('suma: ${addTwoNumbers2(10, 20)}');

  // Llama a greetPerson usando parametros con nombre.
  print(greetPerson(name: 'fernando', message: 'Hi'));
}

// String indica texto; main depende de esta funcion para obtener el saludo.
String greatEveryone() => 'hello Everyone';

// int indica el tipo devuelto; main le entrega a y b y usa su resultado.
int addTwoNumbers(int a, int b) {
  // return entrega la suma a quien llamo a la funcion.
  return a + b;
}

// Los corchetes hacen opcional a b; main podria llamarla con uno o dos numeros.
int addTwoNumbersOptional(int a, [int b = 0]) {
  // Esta linea antigua no se ejecuta porque esta comentada.
  //b = b?? 0;

  // Devuelve la suma usando el valor recibido o el valor predeterminado.
  return a + b;
}

// => devuelve directamente la suma; main llama a esta version corta.
// ejercicio de prueba
int addTwoNumbers2(int x, int y) => x + y;

// required obliga a enviar name; message tiene un valor por defecto para main.
String greetPerson({required String name, String message = 'Hola, '}) {
  // Usa message en el texto, aunque el nombre recibido no se usa aqui.
  return '$message, Fernando';
}
