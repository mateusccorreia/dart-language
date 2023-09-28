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

  List<String> times = ['Palmeiras', 'Fortaleza', 'Ceará'];
  
  var any = times.iterator;
  while(any.moveNext()) {
    print(any.current);
  }

  times.shuffle();
  print(times);

  //  Creating an empty map

  //Via constructor:
  var map = Map();
  print(map);

  //Via its literals:
  var mapOne = {"name": "Souza", "age": "32"};
  mapOne["name"] = "Mateus";
  mapOne["age"] = "33";
  print(mapOne);
  mapOne.addAll({"school": "semicolon", "degree": "Bsc"});
  print(mapOne);
  mapOne.putIfAbsent("adress", () => "rua são francisco");
  print(mapOne);
  mapOne["time"] = "Palmeiras";
  print(mapOne);

  //Updating an entry in a map
  print(mapOne["time"]);
  mapOne["age"] = "32";
  print(mapOne);

  //Deleting an entry from a map
  var num = {
    'ten': 10,
    'eleven': 11,
    'twelve': 12,
    'thirteen': 13,
    'fourteen': 14,
    'fifteen': 15,
    'sixteen': 16
  };

  num.remove('ten');
  print(num);

  // remove all entries with even number values
  num.removeWhere((key, value) => value % 2 == 0);
  print(num);

  //Creating a map to contain specific data types
  //You can create a map that contains the keys and values of defined datatypes. For instance, you may want your map to contain keys of the String datatype and int values. Below is an example of how you can go about this:

  Map<String, int> novoMap = {'first': 10, 'second': 20, 'third': 30, 'fourth': 40};

  novoMap['fifth'] = 50;
  print(novoMap);

  // defining the data types via the constructor
  var segundoMap = Map<String, int>();
  segundoMap['name'] = 5;
  print(segundoMap);

  //Iterating through a map
  // iterating through the keys of the map using the for...in loop to print all the values 

  for(String k in novoMap.keys) {
    print(novoMap[k]);
  }

  //In the for...in loop example above, we iterated through the keys in the map. For each iteration, we fetched each key, stored it in the variable k, and used it to print the values in the map.

  //The forEach() method takes a two-argument function, just as we described with the removeWhere() method. Using the forEach() method allows you to perform operations on both the keys and the values simultaneously.

  novoMap.forEach((key, value) { 
    print("key = $key, value = $value");
  });

  //Flutter data structures: Set
  //A set is a collection of unique items. Unlike lists, sets are particularly unique data structures that ensure duplicate values do not exist in the collection.

  Set primeiroSet = {1, 2, 3, 4, 5};
  Set segundoSet = {4, 5};
  print(primeiroSet.intersection(segundoSet));

  // Sets are best suited for storing unique values whose order is not essential as a variable. Below are three types of sets we’ll look at in detail:

  //HashSet, LinkedHashSet, SplayTreeSet
}
