import 'pessoas_equals_hascode_toString.dart';

/// Igualdade por referencia de memoria --> "É a regra dos ponteiros onde as variaveis podem apontar para o mesmo local de memoria"
/// ex: [var nome = Pessoa();]
///     [var nome2 = nome;   ]
///
/// equals "Devemos implementar o equals quando independente da referencia de memoria queremos ferificar se os objetos são igual e como ele são iguais"
/// toda vez que implementarmos os equals devemos também implementar o hashcode deles para serem iguais["Pois tem coleções que usão o hashcode, ou seja a sua referencia de memoria, para fazer a comparação de igualdade "]

void main() {
  int num1 = 30;
  int num2 = 30;

  _comparaIgualdade(object1: num1, object2: num2);

  var p = Pessoa(nome: 'nome', telefone: 'telefone');
  var p2 = Pessoa(nome: 'nome', telefone: 'telefone');
  var p3 = p2;

  _comparaIgualdade(object1: p, object2: p2);

  _comparaIgualdade(object1: p2, object2: p3);

  var pE = PessoaEquals(
      nome: 'Ricardo', email: 'r@gmail.com', telefone: '629999999');
  var pE2 = PessoaEquals(
      nome: 'Ricardo', email: 'r@gmail.com', telefone: '629999999');

  _comparaIgualdade(object1: pE, object2: pE2);
}

class Pessoa {
  Pessoa({
    required this.nome,
    required this.telefone,
  });

  String nome;
  String telefone;
}

void _comparaIgualdade({required Object object1, required Object object2}) {
  if (object1 == object2) {
    print('são iguais');
    print(object1.hashCode);
    print(object2.hashCode);
  } else {
    print("Não são iguais");
    print(object1.hashCode);
    print(object2.hashCode);
  }
}
