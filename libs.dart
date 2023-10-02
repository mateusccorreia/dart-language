//BIBLIOTECAS
import 'dart:math';

void main() {
  print('A raiz quadrada de 25 é ${sqrt(25)}');
}

//Podemos importar várias bibliotecas em um único arquivo atual. Mas se criarmos duas ou mais funções com o mesmo nome, o compilador não será capaz de diferenciar entre as duas e fornecerá a saída errada. Para evitar isso, o dart nos fornece a palavra-chave “as” para nomear o apelido de uma biblioteca.

// Syntax: import 'my_lib' as prefix  

// Example showing the use of as keyword
  
// Defining a lib names greetings
// library greetings;    
// void sayHi(msg){   
//    print("Hello coder. Welcome to ${msg}");  
// }

//Agora vamos definir outra biblioteca 
// library hellogreetings;   
// void sayHi(msg){   
//    print("${msg} has solutions of all your problems");   
// }

// Agora, importamos as bibliotecas acima com elas como o prefixo

// import 'greetings.dart';   
// import 'hellogreetings.dart' as gret;    
    
// // using as prefix avoids function name clashes   
// void main(){   
//    sayHi("GFG"); 
    
//    // To eliminate the name confliction
//    gret.sayHi("GFG");     
// }