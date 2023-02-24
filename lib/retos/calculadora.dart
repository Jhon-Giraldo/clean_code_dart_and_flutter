abstract class Area {
  double calculadoraArea();
}

class Rectangulo implements Area {
  Rectangulo(this.ancho, this.alto);

  late double ancho, alto;

  @override
  double calculadoraArea() {
    return (ancho * alto);
  }

  double obtenerAncho() {
    return ancho;
  }

  double obtenerAlto() {
    return alto;
  }
}

class Circulo implements Area {
  Circulo(this.radio);

  late double radio;

  @override
  double calculadoraArea() {
    return (3.141592 * radio);
  }

  double obtenerRadio() {
    return radio;
  }
}

void main(List<String> args) {
  Circulo circuloUno = Circulo(5);
  Rectangulo rectanguloUno = Rectangulo(2, 5);
  print(circuloUno.calculadoraArea());
  print(rectanguloUno.calculadoraArea());
}
