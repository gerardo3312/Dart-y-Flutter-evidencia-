// Punto de inicio: void indica que main no devuelve valor y maneja errores con try/catch/finally.
void main() async {
  
  // Imprime el inicio del programa antes de ejecutar la peticion asincrona.
  print('inicio del programa');
  
  // try intenta ejecutar la llamada y captura errores de distintos tipos.
  try{
     // await espera el resultado de httpGet para una ejecucion secuencial.
     final value = await httpGet('https://feranando-herrera.com/cursos');
        // print muestra el valor si la peticion termina correctamente.
        print ('exito: $value');
 
  // on Exception captura solo errores tipo Exception, dejando otros tipos para catch general.
  }on Exception catch(err) {
    
    print ('tenemos una excepcion $err');
  // catch general captura cualquier otra excepcion que no sea Exception.
  }catch(err){
    
    print('OOPS!! algo terrible paso: $err');
  // finally siempre se ejecuta, sin importar si hubo error o no.
  }finally{
    
    print ('fin del try y catch');
  }
  
  
  // El codigo comentado muestra la sintaxis con then/catchError, pero se deja como referencia.
  //httpGet('https://feranando-herrera.com/cursos').then((value){
    //print(value);
    
  //}).catchError((err){
    
    //print('error:$err');
  //});
  
  // Este print se ejecuta al final, ya que finally ya termino.
  print('fin del programa ');
  
}


// Future<String> indica que la funcion devuelve un texto en una tarea asincrona.
Future <String> httpGet (String url ) async {
  
  // delay simula una espera de un segundo antes de lanzar la excepcion.
  await Future.delayed(const Duration(seconds: 1 ));
  
  // throw Exception crea un error explicitamente para probar los bloques catch.
  throw Exception ('no hay parametro en el url');
  
  // Las siguientes lineas muestran variantes de respuesta y error, pero estaban comentadas.
  //throw 'error en la peticion';
  //return 'tenemos un vbalor de la peticion';
  //return Future.delayed(const Duration(seconds: 1 ), (){
    
    //throw 'error en la peticion http';
    
    //return 'respuesta de la peticion http';
    
  //});
  
}
