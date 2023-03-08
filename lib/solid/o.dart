// //Ejemplo sin Principio Open-Closed

// class Vehiculo {
//   mostrarPlacaCarro() {
//     //Código necesario para su funcionamiento
//   }

//   mostrarPlacaCamioneta() {
//     //Código necesario para su funcionamiento
//   }
// }

//Ejemplo aplicando el Principio Open-Closed

abstract class Vehiculo {
  //Funciones que tendrán todos los objetos Vehículo
  mostrarNumeroPlaca();
  mostrarFabricante() {
    print('Fabricante: Toyota');
  }
}

class Carro extends Vehiculo {
  //Se sobreescribe el método de la clase padre 
  //anexando su propia información
  @override
  mostrarNumeroPlaca() {
    print('FBS410');
  }
}

class Camioneta extends Vehiculo {
  @override
  mostrarNumeroPlaca() {
    print('FAB040');
  }
}
