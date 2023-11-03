class Shape {
  void display() {
    print('Metodo na classe Shape');
  }
}

class Triangulo implements Shape {
  //Metodo herdado
  void display() {
    print('Este e o metodo da classe implementado');
  }

  //metodo criado
  void message() {
    print('Metodo da classe triangulo');
  }
}

void main() {
  var triangulo = Triangulo();

  triangulo.display();
  triangulo.message();
}

//Herdando de uma classe abstrata
abstract class Logger {
  void log(String message);
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print('Log "$message" test');
  }
}