// //Ejemplo sin Principio de Sustitución Liskov

// abstract class Carro {
//   //Métodos y parámetros establecidos que se tienen 
//   //que cumplir al implementar esta interfaz
//   void velocidad (int metros) {}
//   void reabastecer (int galones) {}
// }

// class CarroElectrico implements Carro {
//   //Se implementa la relación de esta clase con
//   //la interfaz de su padre 
//   @override
//   void acelerar(int metros) {}

//   @override
//   void reabastecer(int galones) {}

// }

//Ejemplo aplicando Principio de Sustitución Liskov


abstract class Carro {
  //Interfaz de Carro
  void velocidad (int metros) {}
}

class CarroGasolina implements Carro {
  //Esta clase derivada implementa la interfaz de Carro
  //y añade un método único a su clase
  @override
  void velocidad(int metros) {}

  void reabastecer (int galones) {}

}

class CarroElectrico implements Carro {
  //Esta clase también implementa la interfaz de Carro
  //y añade su método único
  @override
  void velocidad(int metros) {}

  void rebastecer (int watts) {}

}
