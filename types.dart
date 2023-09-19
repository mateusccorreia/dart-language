void main() {
  //TIPOS EM DART
    // Numbers (int, double)
    // Strings (String)
    // Booleans (bool)
    // Records ((value1, value2))
    // Lists (List, also known as arrays)
    // Sets (Set)
    // Maps (Map)
    // Runes (Runes; often replaced by the characters API)
    // Symbols (Symbol)
    // The value null (Null)

    num x = 1; //You can also declare a variable as a num. If you do this, the variable can have both integer and double values.
    x = 2.1;
    print(x);

    // String -> int
    var one = int.parse('1');
    assert(one==1);
    print(one);

    // String -> double
    var onePointOne = double.parse('1.1');
    assert(onePointOne == 1.1);

    // int -> String
    String oneAsString = 1.toString();
    assert(oneAsString == '1');

    // double -> String
    String piAsString = 3.14159.toStringAsFixed(2);
    assert(piAsString == '3.14');

    var s = 'string interpolation';
    var r = 'Dart has $s, which is very handy.';
    var t = 'Dart has ${s.toUpperCase()}, which is very handy.';
    print(t);

    //CONCATENAÇÃO DE STRINGS
    var s1 = "complete";
    var s2 = " o texto";
    print(s1+s2);   

    var s3 = 'Aqui escrevo' + ' mais um texto';
    print(s3);
    
    //BOOLEANS
    // Check for an empty string.
    var fullName = '';
    assert(fullName.isEmpty);

    bool casa = true;
    print(casa);

    //RECORDS
    var record = ('first', a: 2, b: true, 'last', 'mais');
    print(record.$3);

    (num, Object) pair = (42, 'a');
    var first = pair.$1;
    print(first);

  //COLLECTIONS
    // list, set, and map 

    //LIST
    //In Dart, arrays are List objects,
    var list = [1, 2, 3, 4, 5];
    print(list.length);
    //To create a list that’s a compile-time constant, add const before the list literal:
    var constantList = const [1, 2, 3];
    //constantList[2] = [2];
    print(constantList);

    //SETS
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

    //To create an empty set, use {} preceded by a type argument, or assign {} to a variable of type Set:
     var cars = <String>{};
    var newCars = {};
     cars = {'VW', 'Nissan', 'Toyota'};
     cars.add('Cobalt');
     cars.addAll(halogens);
     print(cars);

    //Maps
    //a map is an object that associates keys and values (Dicionarios em JAVA)

    var giftss = {
      // Key:    Value
      'first': 'partridge',
      'second': 'turtledoves',
      'fifth': 'golden rings'
    };

    var nobleGases = {
      2: 'helium',
      10: 'neon',
      18: 'argon',
    };

    //using a Map constructor
    var gifts = Map<String, String>();
    gifts['first'] = 'partridge';
    gifts['second'] = 'turtledoves';
    gifts['fifth'] = 'golden rings';

    var nobleGasess = Map<int, String>();
    nobleGases[2] = 'helium';
    nobleGases[10] = 'neon';
    nobleGases[18] = 'argon';

  //GENERICS
    // var names = <String>[];
    // names.addAll(['Seth', 'Kathy', 'Lars']);
    // names.add(42); // Error

  //Using collection literals
    var namess = <String>['Seth', 'Kathy', 'Lars'];
    var uniqueNames = <String>{'Seth', 'Kathy', 'Lars'};
    var pages = <String, String>{
      'index.html': 'Homepage',
      'robots.txt': 'Hints for web robots',
      'humans.txt': 'We are people, not machines'
    };

    // var views = Map<int, View>(); //The following code creates a map that has integer keys and values of type View:
}