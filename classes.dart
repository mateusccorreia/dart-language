  //The class keyword is followed by the class name. 

// A class definition can include the following:

// Fields − A field is any variable declared in a class. Fields represent data pertaining to objects.

// Setters and Getters − Allows the program to initialize and retrieve the values of the fields of a class. A default getter/ setter is associated with every class. However, the default ones can be overridden by explicitly defining a setter/ getter.

// Constructors − responsible for allocating memory for the objects of the class.

// Functions − Functions represent actions an object can take. They are also at times referred to as methods.

//These components put together are termed as the data members of the class.

//Example: Declaring a class

class Car {
  //field
  String engine = 'E1001';

  //function
  void disp() {
    print(engine);
  }
}
//The example declares a class Car. The class has a field named engine. The disp() is a simple function that prints the value of the field engine.

//Creating Instance of the class
// syntax
// var object_name = new class_name([ arguments ])

// The new keyword is responsible for instantiation.
// The right-hand side of the expression invokes the constructor. The constructor should be passed values if it is parameterized.

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void mostrarDetalhes() {
    print('Nome: $nome, Idade: $idade');    
  }
}

// Dart Constructors
//SYNTAX:
// Class_name(parameter_list) { 
   //constructor body 
// }

class Moto{ //EXEMPLO DE CONSTRUTOR
  Moto(String engine) {
    print(engine);
  }
}

// Named Constructors
//Syntax : Defining the constructor
//Class_name.constructor_name(param_list)

class Aviao {
  Aviao() {
    print("Non-parameterized constructor invoked");
  }
  Aviao.anyThing(String engine) {
    print("The engine is: ${engine}");
  }
}

//----------------------------------------------------------------------
// The this Keyword
//The this keyword refers to the current instance of the class.

//Dart Class ─ Getters and Setters
//A getter has no parameters and returns a value, and the setter has one parameter and does not return a value.

class Estudante {
  String name;
  int age;

  String get stud_name {
    return name;
  }

  void set stud_name(String Name) {
    this.name = name;
  }

  void set stud_age(int age) {
    if(age <= 0) {
      print("Age should be greater than 5");
    } else {
      this.age = age;
    }
  }

  int get stud_age {
    return age;
  }
}

void main() {
  Car c = new Car();
  c.disp();

  Pessoa alguem = Pessoa('Mateus', 32);
  alguem.mostrarDetalhes();

  //Construtores
  Moto m = new Moto('F1001C');

  //Named Constructor
  Aviao v1 = new Aviao.anyThing('A111B');
  Aviao v2 = new Aviao();

  //get and set
  Estudante s1 = new Estudante();
  s1.stud_name = "MATEUS";
  s1.stud_age = 0;
  print(s1.stud_name);
  print(s1.stud_age);
}