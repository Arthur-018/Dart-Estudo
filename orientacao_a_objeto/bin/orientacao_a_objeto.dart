import 'package:orientacao_a_objeto/conta.dart';
void main(){
 
 ContaCorrente contaCris = ContaCorrente('Cris', 4000);
 ContaPoupanca contaDenize = ContaPoupanca('Denize', 4000);
    
  contaCris.imprimeSaldo();
  contaCris.enviar(4300);

  contaDenize.imprimeSaldo();
  contaDenize.enviar(4300);
  contaDenize.calculaRendimento();
  contaDenize.imprimeSaldo();
}



