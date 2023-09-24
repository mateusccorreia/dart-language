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