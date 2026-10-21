import 'package:orientacao_a_objeto/conta.dart';
void main(){
 
 ContaCorrente contaCris = ContaCorrente('Cris', 4000);
 ContaPoupanca contaDenize = ContaPoupanca('Denize', 4000);
 ContaEmpresa contaMatheus = ContaEmpresa('Matheus', 2000);
 ContaInvestimento contaRoberta = ContaInvestimento('Roberta', 3000);   
  
  contaCris.imprimeSaldo();
  contaCris.enviar(4300);

  contaDenize.imprimeSaldo();
  contaDenize.enviar(4300);
  contaDenize.calculaRendimento();
  contaDenize.imprimeSaldo();

  contaMatheus.enviar(1000);
  contaRoberta.receber(1000);
}



