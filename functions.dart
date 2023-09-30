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

  //MÉTODO MAP()
  List<int> numeros = [1, 2, 3, 4, 5];
  List<int> quadrados = numeros.map((e) => e * e).toList();
  print(numeros);
  print('Esses são os quadrados: $quadrados');

  Set umSet = {1, 2, 3, 4};
  Set novoSet = umSet.map((e) => e == 4 ? 11 : e).toSet();
  print('Esse é novo set $novoSet');
  var isRemoved = numeros.remove(1);
  print(isRemoved);
  print(numeros);
  for (int qualquercoisa in numeros) {
    print('Iterando no conjunto numeros $qualquercoisa');
  }
  umSet.forEach((element) {
    print('Iterando com forEach $element');
  });

  //METODOS MAIS UTILIZADOS EM DART

  //filter()
  var n = [1, 2, 3, 4, 5];
  var par = n.where((e) => e % 2 == 0);
  print(par);

  //toString()
  var numero = 42;
  print(numero.toString()); // Converte o número em uma string: "42"

  //toUpperCase() e toLowerCase():
  var texto = "Dart é incrível";
  print(texto.toUpperCase()); // Converte para maiúsculas: "DART É INCRÍVEL"

  //split():
  var frase = "Isso é uma frase";
  var palavras = frase.split(" "); // Divide a frase em palavras
  print(palavras); // Imprime: [Isso, é, uma, frase]

  //join():
  var palavrass = ["Isso", "é", "uma", "frase"];
  var frasee = palavrass.join(" "); // Combina as palavras em uma frase
  print(frasee); // Imprime: "Isso é uma frase"

  //forEach()
  var numerosss = [1, 2, 3, 4, 5];
  numerosss.forEach((numero) {
    print(numero);
  });

  //map()
  // var numeros = [1, 2, 3, 4, 5];
  // var quadrados = numeros.map((numero) => numero * numero);
  // print(quadrados); // Imprime: (1, 4, 9, 16, 25)

  //sort(): 
  // var numeros = [5, 2, 8, 1, 9];
  // numeros.sort();
  // print(numeros); // Imprime: [1, 2, 5, 8, 9]

  //reduce()
  // var numeros = [1, 2, 3, 4, 5];
  // var soma = numeros.reduce((a, b) => a + b);
  // print(soma); // Calcula a soma: 15

}
