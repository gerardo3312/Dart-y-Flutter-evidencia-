// Punto de inicio: void indica que main no devuelve valor y usa async/await para manejar tareas asincronas.
void main() async {
  
  // Muestra el inicio antes de esperar la respuesta de httpGet.
  print('inicio del programa');
  
  // try intenta ejecutar la llamada asincrona; catch captura cualquier error.
  try{
     // await pausa la ejecucion hasta obtener el resultado de httpGet.
     final value = await httpGet('https://feranando-herrera.com/cursos');
        // print muestra el valor recibido cuando la peticion finaliza bien.
        print (value);
  }catch(err){
    // Si hay un error, catch imprime el detalle del problema.
    print('tenemos un error: $err');
  }
  
  
  // El codigo comentado muestra la version con then/catchError, pero ahora se usa await.
  //httpGet('https://feranando-herrera.com/cursos').then((value){
    //print(value);
    
  //}).catchError((err){
    
    //print('error:$err');
  //});
  
  // Este print se ejecuta despues de completar el try/catch.
  print('fin del programa ');
  
}


// Future<String> indica que la funcion devolvera un texto asincronicamente.
Future <String> httpGet (String url ) async {
  
  // await simula una demora de 1 segundo antes de continuar.
  await Future.delayed(const Duration(seconds: 1 ));
  // throw forzara un error para demostrar captura de excepciones con async/await.
  throw 'error en la peticion';
  // La linea de abajo seria la respuesta exitosa, pero queda desactivada.
  //return 'tenemos un vbalor de la peticion';
  //return Future.delayed(const Duration(seconds: 1 ), (){
    
    //throw 'error en la peticion http';
    
    //return 'respuesta de la peticion http';
    
  //});
  
}
