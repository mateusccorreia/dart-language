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

  //Criando lista com fixed length
  List<int> listaInteiros = List<int>.filled(4, 9);
  print(listaInteiros);
  listaInteiros[1] = 6;
  print(listaInteiros);
  print(listaInteiros[1]);
  listaInteiros[0] = 3;

  for (int i = 0; i < listaInteiros.length; i++) {
    print('The element in index $i is ${listaInteiros[i]}');
  };

  var values = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
  print(values);

  // modifying the items in the list by reassigning a new values 
  values.setAll(2, [6,7,8]);
  print(values);

  values.remove(100);
  print(values);
  values.removeAt(6);
  print(values);
}
