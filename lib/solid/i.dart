// //Ejemplo sin Interface Segregation

// abstract class PagarProducto {
//   //Interfaz de clase PagarProducto
//   void pagoTarjetaCredito();
//   void pagoCuentaAhorros();
// }

// class EquipoOrdenDelFenix implements PagarProducto {

//   void pagoTarjetaCredito() {
//     //Sólo implementan pagos con tarjeta de crédito
//   }
  
// }

// class EquipoAxioma implements PagarProducto {

//   //Este equipo implementa ambos pagos
//   void pagoTarjetaCredito() {}
//   void pagoCuentaAhorros() {}

// }

//Ejemplo usando Interface Segregation

abstract class PagosRealizadosConTarjetaCredito {
  //Interfaz de responsabilidad única
  void pagoTarjetaCredito() {}

}

abstract class PagosRealizadosConCuentaAhorros {
  //Interfaz de responsabilidad única
  void pagoCuentaAhorros() {}

}

class EquipoOrdenDelFenix implements PagosRealizadosConTarjetaCredito {

  @override
  void pagoTarjetaCredito() {
    //Transacciones específicas del equipo Order del Fénix
  }

}

class Axioma implements PagosRealizadosConCuentaAhorros, PagosRealizadosConTarjetaCredito {
 
  @override
  void pagoCuentaAhorros() {
    //Transacciones específicas del equipo Axioma
  }


  @override
  void pagoTarjetaCredito() {
    //Apoyo a transacciones en días pico
  }
}
