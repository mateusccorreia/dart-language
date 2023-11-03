//CLASSES ABSTRATAS
//Unlike a concrete class, you cannot create new objects from an abstract class.
//The main purpose of the abstract class is to allow other classes to inherit from it.
//An abstract class may contain abstract properties and methods. Typically, an abstract class has abstract methods for its child classes to implement.

//ABSTRACT METHODS
//Unlike a regular method, an abstract method has only the signature part and doesn’t have an implementation.

abstract class Forma {
  double area();
  String cor();
}

class Circulo extends Forma {
  double raio;
  Circulo({this.raio = 0});

  @override
  double area() => 3.14 * raio * raio;
  String cor() => "red";
}

class Quadrado extends Forma {
  double length;
  Quadrado({this.length = 0});

  @override
  double area() => length * length;
  String cor() => "blue";
}

void main() {

  Circulo primeiroCirculo = Circulo(raio: 10.5);
  print('Área do circulo é ${primeiroCirculo.area()}');

  Quadrado primeiroQuadrado = Quadrado(length: 5);
  print('Área do quadrado é ${primeiroQuadrado.area()}');

}