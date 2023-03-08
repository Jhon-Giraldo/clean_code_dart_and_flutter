// //Mala Práctica

// class Marcha {
//   //Esta clase es responsable por el cambio de Marcha y por la Aceleración
//   void changeGear() {
//     //Código requerido
//   }
//   void aceleracion() {
//     //Código requerido
//   }
// }

//Buena Práctica

class Marcha {
  //Esta clase sólo es responsable por el cambio de Marcha
  void cambioMarcha() {
    //Código requerido
  }
}

class PedalAceleracion {
  //Esta clase sólo es responsable por el cambio de la velocidad
  void acelerar() {
    //Código requerido
  }
}
