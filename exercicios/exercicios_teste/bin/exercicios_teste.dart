import 'classeConta.dart';

void main() {
  Conta contaMatheus = Conta('Matheus', 1000);
  Conta contaRoberta = Conta('Roberta', 2000);
  Conta contaArthur = Conta('Arthur', 1500);

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta, contaArthur];
  double total = 0;

  for (Conta conta in contas) {
    print('Titular: ${conta.titular}');
    print('Saldo: ${conta.saldo}');
    total += conta.saldo;
  }

  print('Total dos saldos: $total');
}



