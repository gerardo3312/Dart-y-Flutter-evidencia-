// Punto de inicio: void indica que main no devuelve valor y escucha los valores emitidos por un Stream asincrono.
void main (){
  
  // emitNumbers() crea un flujo de valores; listen toma cada valor y lo imprime.
  emitNumbers()
    
    .listen( (int value) {
    
    print ('Stream value: $value ');
  });
  
}


// Stream<int> indica que esta funcion emitira enteros de forma asincrona.
Stream<int> emitNumbers() async*{
  
  // valuesToEmit guarda un conjunto de numeros que se van a emitir.
  final valuesToEmit ={1,2,3,4,5};
  
  // for recorre cada elemento del conjunto y los devuelve uno a uno.
  for (int i in valuesToEmit){
    
    // await espera un segundo entre cada emision para simular un flujo continuo.
    await Future.delayed (const Duration (seconds:1));
    // yield entrega cada valor al Stream para que lo escuche el listener.
    yield i;
  }
} 