// Punto de inicio: crea dos tipos de planta y los envia a la misma funcion.
void main  (){
  
  // Crea una planta eolica con 100 unidades de energia.
  final windPlant = WindPlant(initialEnergy:100);
  // Crea una planta nuclear con 1000 unidades de energia.
    final nuclearPlant = NuclearPlant(energyLeft:1000);
  
  // chargePhone recibe la planta eolica usando el tipo comun EnergyPlant.
  print ('wind:  ${chargePhone(windPlant)}'); 
  // La misma funcion tambien acepta la planta nuclear.
    print ('nuclear:  ${chargePhone(nuclearPlant)}'); 
  
}



// Comprueba energia suficiente y calcula el costo de cargar un telefono.
double chargePhone( EnergyPlant plant ){
  // Lee energyLeft sin importar que clase concreta recibio.
  if (plant.energyLeft < 10){
    // Detiene la funcion si no hay energia suficiente.
    throw Exception ('Not enough energy');
    
  }
  // Devuelve la energia restante despues de descontar 10 unidades.
  return plant.energyLeft - 10;
  
}





// Lista cerrada de tipos posibles de planta.
enum PlantType {  nuclear, wind, water }


// Contrato comun que deben cumplir las plantas de energia.
abstract class EnergyPlant{
  
  // Energia disponible para cada planta.
  double energyLeft;
  // Tipo de planta que se guarda junto a su energia.
  final PlantType type; //nuclear, wind, water
  
  // Constructor base que exige energia y tipo.
  EnergyPlant({
    required this.energyLeft,
    required this.type});
  
  // Obliga a cada planta concreta a definir como consume energia.
  void consumeEnergy (double amount );
  
}

// Una planta eolica hereda datos y contrato de EnergyPlant.
class WindPlant extends EnergyPlant{
  
  
  // Constructor que fija el tipo de esta planta como wind.
  WindPlant ({required double initialEnergy })
    :super(energyLeft:initialEnergy, type: PlantType.wind);
  
  // Implementa la forma concreta de consumir energia.
  @override
  void consumeEnergy (double amount){
    // Descuenta exactamente la cantidad solicitada.
    energyLeft -= amount;
    
  }
  
}


// Esta clase cumple el contrato de EnergyPlant sin extender su constructor.
class NuclearPlant implements EnergyPlant {
  
  // Energia propia que la clase debe declarar al usar implements.
  @override
  double energyLeft;
  
  // Tipo fijo de toda planta nuclear.
  @override
  final PlantType type= PlantType.nuclear;
  
  // Constructor que recibe la energia inicial.
  NuclearPlant ({required this.energyLeft});
  
  
   // Implementa el consumo con una reduccion del cincuenta por ciento.
   @override
  void consumeEnergy (double amount){
    energyLeft -= (amount * 0.5);
    
  }
  
}