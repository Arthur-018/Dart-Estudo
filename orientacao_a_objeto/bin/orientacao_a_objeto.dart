import 'package:orientacao_a_objeto/conta.dart';
void main(){
 Conta contaMatheus = Conta('Matheus', 1000);
 Conta contaRoberta = Conta('Roberta', 2000);
 ContaCorrente contaCris = ContaCorrente('Cris', 4000);
 ContaPoupanca contaDenize = ContaPoupanca('Denize', 4000);

 List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

for(Conta conta in contas ){
    conta.imprimeSaldo();
  }

  contaRoberta.receber(3000);
  contaMatheus.receber(200);
  contaMatheus.enviar(5000);
  
  contaCris.imprimeSaldo();
  contaCris.enviar(4300);

  contaDenize.imprimeSaldo();
  contaDenize.enviar(4300);
  contaDenize.calculaRendimento();
  contaDenize.imprimeSaldo();
}



