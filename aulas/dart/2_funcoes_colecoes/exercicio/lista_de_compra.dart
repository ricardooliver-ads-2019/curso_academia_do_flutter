import 'dart:io';

void main(){
  final products = [];
  var isRunning = true;

  while (isRunning){
    // comando para limpar p terminal
    print("\x1B[2J\x1B[0;0H");
    print('LISTA DE COMPRA');
    print("Digite add para adicionar um produto");
    print("Digite imprimir para ver todos os produto da lista");
    var input = stdin.readLineSync();

    if (input == 'add') {
      print('--- Adicione um produto ---');
      var product = stdin.readLineSync();
      products.add(product);
      
    } else if(input == 'imprimir'){
      print('--- Todos os produtos cadastrados ---');
      print('\n');
      for (var i = 0; i < products.length; i++) {
        print(products[i]);
      }
      stdin.readLineSync();
    }else {
      isRunning = false;
    }
  }
  print('--- fim do programa ---');

}