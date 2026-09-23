// Punto de inicio: void indica que main no devuelve valor y lanza una peticion Future.
void main(){
  // Muestra el inicio del programa antes de la llamada asyncrona.
  print('inicio del programa');
  
  // httpGet devuelve un Future; then ejecuta codigo cuando la peticion termina bien.
  httpGet('https://feranando-herrera.com/cursos').then((value){
    // value recibe la respuesta de la peticion y se imprime.
    print(value);
    
  }).catchError((err){
    // catchError captura la excepcion y la muestra en pantalla.
    print('error:$err');
  });
  
  // Este print se ejecuta antes de que termine el Future.
  print('fin del programa ');
  
}


// Future<String> indica que la funcion devolvera un texto en el futuro.
Future <String> httpGet (String url ){
  
  // Future.delayed simula una tarea asincrona con una demora de 1 segundo.
  return Future.delayed(const Duration(seconds: 1 ), (){
    
    // throw fuerza un error en la peticion para ver la captura del catchError.
    throw 'error en la peticion http';
    
    // La linea de abajo quedaria como respuesta correcta, pero esta desactivada.
    //return 'respuesta de la peticion http';
    
  });
  
}


