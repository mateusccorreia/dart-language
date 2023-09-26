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

class Moto {
  //EXEMPLO DE CONSTRUTOR
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
  String name = 'Teste';
  int age = 2;

  String get stud_name {
    return name;
  }

  void set stud_name(String name) {
    this.name = name;
  }

  void set stud_age(int age) {
    if (age <= 0) {
      print("Age should be greater than 5");
    } else {
      this.age = age;
    }
  }

  int get stud_age {
    return age;
  }
}

//herança e polimorfismo
//Dart supports the concept of Inheritance which is the ability of a program to create new classes from an existing class.
//Child classes inherit all properties and methods except constructors from the parent class.

//SYNTAX
// class child_class_name extends parent_class_name
class Shape {
  void cal_area() {
    print("calling calc area defined in the Shape class");
  }
}

class Circle extends Shape {}

// Types of Inheritance
// Inheritance can be of the following three types:

// Single − Every class can at the most extend from one parent class.
// Multiple − A class can inherit from multiple classes. Dart doesn’t support multiple inheritance.
// Multi-level − A class can inherit from another child class.

class Root {
  String str = '';
}

class Child extends Root {}

class Leaf extends Child {}

//Dart – Class Inheritance and Method Overriding
//Method Overriding is a mechanism by which the child class redefines a method in its parent class. The following example illustrates the same −

class Parent {
  void m1(int a) {
    print("value of a ${a}");
  }
  String msg = "message variable from the parent class"; 
}

class Filho extends Parent {
  @override
  void m1(int b) {
    print("value of b ${b}");
    super.m1(b);
    print("${super.msg}");
  }
}

//The static Keyword
// The static keyword can be applied to the data members of a class, i.e., fields and methods. A static variable retains its values till the program finishes execution. Static members are referenced by the class name.

class Qualquer {
  static int num = 0;
  static disp() {
    print("The value of num is ${Qualquer.num}");
  }
}

// The super Keyword
// The super keyword is used to refer to the immediate parent of a class. The keyword can be used to refer to the super class version of a variable, property, or method. The following example illustrates the same −


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
  s1.stud_age = 18;
  print(s1.stud_name);
  print(s1.stud_age);

  var obj = new Circle();
  obj.cal_area();

  var novoObj = new Leaf();
  novoObj.str = "Fazendo testes";
  print(novoObj.str);
  //The class Leaf derives the attributes from Root and Child classes by virtue of multi-level inheritance.

  Filho d = new Filho();
  d.m1(14);
  
  Qualquer.num = 19;
  Qualquer.disp();
}
