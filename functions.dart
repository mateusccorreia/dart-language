// Dart is a true object-oriented language, so even functions are objects and have a type, Function. This means that functions can be assigned to variables or passed as arguments to other functions. You can also call an instance of a Dart class as if it were a function.

void main() {
//   **Defining the function in Dart:
//    return_type function_name ( parameters ) {
//    Body of function
//    return value;
// }

// The function is called as:
// function_name (argument_list);

  int add(int a, int b) {
    int result = a + b;
    return result;
  }

  var output = add(11, 4);
  print(output);
  print(add(20, 3));
  //---------------------------------------------------------------------------------------

  //VOID FUNCTION
  void myFunction() {
    var FirstName = 'Mateus';

    if (FirstName.startsWith('M')) {
      print("The first name starts with M");
    } else {
      print("The first name does not starts with M");
    }
  }

  myFunction();

  //---------------------------------------------------------------------------------------

  //ARROW FUNCTION:
  //ReturnType FunctionName(Parameters...) => Expression;

  void perimeter(int length, int breadth) =>
      print('The perimeter is ${2 * (length + breadth)}');

  perimeter(10, 21);

  somar(x, y) {
    var a = x + y;
    return a;
  }

  print('The result is ${somar(11, 9)}');

  //However, if you use the =>
  var w = 10;
  var z = 12;
  int soma() => w + z;
  print('O resultado da soma é ${soma()} ');

  //-----------------------------------------------------------------------------------------

  //ANONYMUS FUNCTIONS
  var list = ["James", "Patrick", "Mathew", "Tom"];
  print("Example of anonymous function");
  
  list.forEach((item) {
    print('${list.indexOf(item)}: $item');
  });

  //-----------------------------------------------------------------------------------------

  double calculateArea(double radius) {
    return 3.14 * radius * radius;
  }

  print(calculateArea(5));

  const lista = ['apples', 'bananas', 'oranges', 'lemon'];

  list.map((item) {
    return item.toUpperCase();
  }).forEach((item) {
    print('$item: ${item.length}');
  });

  // forEach examples
  List<String> names = ['Ayo', 'David', 'Victoria', 'Helen'];
  names.forEach((name) {
    print(name);
  });

  Set<int> numbers = {1, 2, 3};
  numbers.forEach((number) {
    print(number);
  });

  Map<String, int> ages = {'Ayo': 30, 'Samuel': 25, 'Emmanuel': 35};
  ages.forEach((name, age) {
    print('$name is $age years old');
  });

//ANOTHER EXAMPLE (forEach)
  List<Map<String, int>> grades = [
    {'Ayo': 60, 'Samuel': 89, 'Vic': 70},
    {'Ayo': 58, 'Samuel': 78, 'Vic': 58},
    {'Ayo': 86, 'Samuel': 70, 'Vic': 99}
  ];

  int sum = 0;
  grades.forEach((studentGrades) {
    studentGrades.forEach((student, grade) {
      sum += grade;
    });
  });

  print('The sum of all grades is $sum');
}
