// Punto de inicio: void indica que main no devuelve valor.
void main (){
  
  // final fija el mapa; Map<String,dynamic> permite claves de texto y valores variados.
  final Map<String, dynamic>pokemon = {
    // Texto guardado bajo la clave name.
    'name':'Ditto',
    // Numero guardado bajo la clave hp.
    'hp': 100,
    // Estado guardado bajo la clave isAlive.
    'isAlive': true,
    // Lista de habilidades guardada dentro del mapa.
    'abilities': <String>['impostor'],
    // Este mapa interno depende del mapa pokemon y se consulta mediante sprites.
    'sprites': {
      // La clave 1 identifica la imagen frontal.
      1:'ditto/front.png',
      // La clave 2 identifica la imagen trasera.
      2:'ditto/back.png'
      
    }
  };
  
  
  // print depende de pokemon y muestra tambien el mapa interno sprites.
  print(pokemon);
  // [] usa la clave name creada arriba; print muestra el resultado.
  print('name ${pokemon['name']}');
  // [] obtiene el mapa sprites que fue definido dentro de pokemon.
  print('name ${pokemon['sprites']}');
  
  // El primer [] obtiene sprites y el segundo [] obtiene su clave 2.
  print('back ${pokemon['sprites'][2]}');
  // El primer [] obtiene sprites y el segundo [] obtiene su clave 1.
  print('front ${pokemon['sprites'][1]}');
  
}