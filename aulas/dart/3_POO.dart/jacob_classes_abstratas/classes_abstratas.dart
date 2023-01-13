//link da aula --> https://www.youtube.com/watch?v=nZov6ztrocc

// ignore_for_file: unused_local_variable, unnecessary_type_check

void main(){
  B b = B();
  print(b is B);
  print(b is A);
  //-----------
  A a = A();
  print(a is A);
  print(a is B);
  //-----------
  execPrint(a);
  execPrint(b);

  execPrint2(b);
  //execPrint2(a);

  printPagamento(listPagamentos);

}


class A{
  void printName(){
    print('Orlando');
  }
}

class B extends A{
  @override // sobrescrevendo o metodo 
  void printName(){
    print('ARTHUR');
  }
}

// aqui segue a logica se B == A logo essa função que pode receber o tipo A tbm pode receber o tipo B pois é filho de A
void execPrint(A a){
  a.printName();
}

// aqui segue a logica se A != B logo essa função que pode receber o tipo B Não pode receber o tipo A pois não é filho de B
void execPrint2(B b){
  b.printName();
}

//-------------------------------------------------------------------

// interface -- contrado
abstract class Pagamento {
  void metodoPagamento();
}

class Dinheiro implements Pagamento{
  @override
  void metodoPagamento() {
    print('PAGAMENTO EM DINHEIRO');
  }

}

class Pix implements Pagamento{
  @override
  void metodoPagamento() {
    print('PAGAMENTO COM PIX');
  }

}

class CartaoCredido implements Pagamento{
  @override
  void metodoPagamento() {
    print('PAGAMENTO COM CARTÃO DE CREDITO');
  }

}

List<Pagamento> listPagamentos = [Dinheiro(), Pix(), CartaoCredido()];

void fazendoPagamento(Pagamento p){
  return p.metodoPagamento();
}

Future printPagamento(List<Pagamento> listPagamentos) async{
  for (var tipo in listPagamentos) {
    print('Tipo de pagamento:');
    fazendoPagamento(tipo);
    await Future.delayed(Duration(seconds: 2));

  }
}





