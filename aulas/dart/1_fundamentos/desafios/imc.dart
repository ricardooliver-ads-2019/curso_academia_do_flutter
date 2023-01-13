import 'dart:io';
// criar IMC
// formula peso / (altura * altura)
main(){
  print("Informe seu nome:");
  final String nome = getName(stdin.readLineSync());

  print('Informe seu peso:');
  double peso =  getWeight(stdin.readLineSync()); 

  print("Informe sua altura");
  double altura = getHeight(stdin.readLineSync());

  print('\n\n');
  print('$nome, pela analize o senh(o)a está: ');
  imcResult(imcCalc(peso: peso, altura: altura));
}

String getName(String? nome){
  if (nome == null) {
    return 'Anônimo';
  } else {
    return nome;
  }

}

double getWeight(String? peso){
  if (peso == null) {
    return 0.0;   
  } else {
    return double.parse(peso);
  }

}

double getHeight(String? altura){
  if (altura == null) {
    return 0.0;   
  } else {
    return double.parse(altura);
  }
}

double imcCalc({ required double peso, required double altura}){
  return peso/ (altura * altura);
}

void imcResult(double imc){
  if (imc <= 18) {
    print('Muito magro');
  } else if(imc > 25){
    print('Acima do Peso');
  }else{
    print('Normal');
  }
}