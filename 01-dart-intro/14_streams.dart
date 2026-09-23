// Punto de inicio: void indica que main no devuelve valor y usa un Stream para emitir datos en tiempo real.
void main(){
  
  // emitNumbers devuelve un flujo de numeros; listen recibe cada valor conforme llega.
  emitNumbers().listen((value){
    // value es cada numero generado por el Stream y se imprime.
    print('stream value:$value ');
    
  });
  
  
}



// Stream<int> indica que la funcion emite numeros enteros en un flujo de datos.
Stream <int> emitNumbers(){
  
  // Stream.periodic genera valores cada segundo, con un contador interno.
  return Stream.periodic(const Duration(seconds: 1), (value){
    
    // La linea de abajo quedaria como depuracion, pero esta comentada.
    //print ('desde periodic $value');
    // return entrega el valor actual del contador al subscriber.
    return value;
    
    
  // take(5) limita la cantidad de emisiones a cinco elementos.
  }  ).take(5);
}