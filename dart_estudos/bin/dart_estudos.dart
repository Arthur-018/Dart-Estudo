import 'dart:io';

void main() {
  print("Ola, me chamo Dart. Qual seu nome?");
  var mensagem = stdin.readLineSync();
  print('Ola $mensagem.');
}

