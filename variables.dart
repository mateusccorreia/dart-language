late String descricao;

void main(List<String> args) {

  var name = 'Isa';

  Object planeta = 'Terra';

  String lastName = 'Oliveira';

  //Null safety (conceito)

  String? b; // Nullable type. Can be `null` or string.

  print(b);

  int number = 6;
  print(number);

  descricao = 'qualquer coisa';
  print(descricao);

  int myNumber;

  //Final and  const
  final nome = 'Bob'; // Without a type annotation
  final String nickname = 'Bobby';

  //nome = 'Mateus';

  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.013;

  var foo = const [];
  const baz = [];

  foo = [1,2];
  //baz = [50];
}