//Ejemplo Dependency Inversion

//Interfaz que se usará para las operaciones de la BD
abstract class InterfazBaseDeDatos {
  void obtener();
  void insertar();
  void actualizar();
  void borrar();
}

class BaseDeDatosSQLite implements InterfazBaseDeDatos {
  //Se implementa la interfaz de la base de datos junto a sus 4 funciones

  @override
  void obtener() {} // Obtiene valores mediante id

  @override
  void insertar() {} // Inserta valores en la BD

  @override
  void actualizar() {} //Actualiza los valores en la BD

  @override
  void borrar() {} //Borra datos en la BD
}

class InformeDePagos {
  //Se prepara la interfaz que luego se inyectará desde
  //la clase abstracta
  late InterfazBaseDeDatos _baseDeDatos;

  //Se inyecta la interfaz de la clase base de datos abstracta
  InformeDePagos(InterfazBaseDeDatos baseDeDatos) {
    _baseDeDatos = baseDeDatos;
  }
  //De esta manera se pueden llamar los metodos requeridos
  //desde la BDSQLite ya que implementa la interfaz
  //de la clase abstracta
  void abrir() {
    _baseDeDatos.obtener();
  }

  void grabar() {
    _baseDeDatos.insertar();
  }
}

class BaseDeDatosPostgreS implements InterfazBaseDeDatos {
  //Se implementa la interfaz de la base de datos junto a sus 4 funciones

  @override
  void obtener() {} // Obtiene valores mediante id

  @override
  void insertar() {} // Inserta valores en la BD

  @override
  void actualizar() {} //Actualiza los valores en la BD

  @override
  void borrar() {} //Borra datos en la BD
}

void main(List<String> args) {
  //Instanciando Base de Datos SQLite e inyectándola
  //en el informe de de pagos
  BaseDeDatosSQLite sqlBD = BaseDeDatosSQLite();
  InformeDePagos informeSqlBD = InformeDePagos(sqlBD);
  //Aquí se evidencia que se puede hacer uso de los
  //métodos previamente definidos
  informeSqlBD.abrir();

  //Del mismo modo se puede instanciar la Base de Datos PostgreS
  BaseDeDatosPostgreS postgreS = BaseDeDatosPostgreS();
  InformeDePagos informePostGreBD = InformeDePagos(postgreS);
  //También hace uso de los métodos definidos
  informePostGreBD.abrir();

}
