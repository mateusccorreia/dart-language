//SINTAXE PADRAO
// class Funcionario {
//   String? nome;
//   int? idade;
//   String? funcao;
//   String? hobby;

//   Funcionario(String nome, int idade, String funcao, String hobby) {
//     this.nome = nome;
//     this.idade = idade;
//     this.funcao = funcao;
//     this.hobby = hobby;
//   }
// }

//SINTAXE "SYNTAX SUGAR"
class Funcionario {
  String nome;
  int idade;
  String funcao;
  String hobby;

  Funcionario(this.nome, this.idade, this.funcao, this.hobby);
}

//INSTANCIANDO OBJETOS
Funcionario um = Funcionario("Mateus", 32, "Analista", "Programar");

void main() {
  print(um.idade);
}