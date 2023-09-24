//how you can control the flow of your Dart code using loops and supporting statements:

// for
// while and do while
// break and continue

// You can also manipulate control flow in Dart using:

// Branching, like if and switch
// Exceptions, like try, catch, and throw

void main() {
  //FOR LOOPS
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
  }
  print(message);

  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }

  for (final c in callbacks) {
    c();
  }

//Iterating over lists and collections
  List<String> frutas = ['Apple', 'Banana', 'Orange', 'Mango'];

  for (String fruta in frutas) {
    print('Eu gosto de $fruta');
  }

  //Using break and continue statements: Dart provides the break and continue statements to control the flow of a loop.

  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      break;
    }
    print('Iteration $i');
  }

  //continue: It allows you to skip the current iteration and move on to the next iteration of the loop. Here's an example of using the continue statement:
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue;
    }
    print('Iteration using continue $i');
  }

  //WHILE LOOP
  int count = 1;

  while (count <= 5) {
    print('Using while $count');
    count++;
  }

  //Advanced Flow Control in Dart
  //Ternary Operator:
  //condition? expression1 : expression2

  int number = 6;
  String result = number > 5 ? 'Maior que 5' : 'Menor ou igual 5';
  print(result);

  //The ternary operator is very useful for writing concise code when you have simple conditional expressions.

  //IF
  int age = 3;

  if (age >= 18) {
    print("Você é de maior");
  }

  //IF ELSE
  if (age >= 18) {
    print('Você é de maior');
  } else if (age >= 13) {
    print('Voce e adolescente');
  } else {
    print('Você é uma criança');
  }

  //Nesting if statements:
  int newAge = 25;
  bool isEmployed = true;

  if (newAge >= 18) {
    print("You are an adult.");

    if (isEmployed) {
      print("You have a job.");
    } else {
      print("You are unemployed.");
    }
  } else {
    print("You are a minor.");
  }

  //SWITCH
  String fruit = 'lemon';

  switch (fruit) {
    case 'apple':
      print('A fruta selecionada é apple');
      break;
    case 'banana':
      print('A fruta selecionada é banana');
      break;
    case 'orange':
      print('A fruta selecionada é orange');
      break;
    default:
      print('Unknown fruit.');
  }
}
