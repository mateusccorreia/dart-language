void main() {

  //ABOUT LIST
  //Criando lista de inteiros
  List<int> numbers = [];
  print(numbers); // []
  numbers.add(19);
  print(numbers);
  numbers.add(21);
  print(numbers);
  numbers.insert(1, 20);
  print(numbers);
  print(numbers.length);

  //Criando lista de strings
  List<String> cidades = ['SGA'];
  print(cidades);
  cidades.add('Pecem');
  print(cidades);
  cidades.removeAt(1);
  print(cidades);
}
