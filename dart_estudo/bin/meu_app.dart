import 'dart:io';

void main() {
print("Olá, me chamo Dart. Qual o seu nome?");
var mensagem = stdin.readLineSync();
print("Olá, $mensagem. Muito prazer te conhecer!");

}