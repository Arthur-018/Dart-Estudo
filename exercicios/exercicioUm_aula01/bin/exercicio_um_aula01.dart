void main(){
  Receita receitaMacarrao = Receita('Macarrão ao pesto', 20.00);
  Receita receitaLasanha = Receita('Lasanha 4 queijos', 32.00);
  Receita receitaBurrata = Receita('Burrata com pesto', 28.00);

  List<Receita> receitas = <Receita>[receitaMacarrao, receitaLasanha, receitaBurrata];

  for(Receita receita in receitas){
    print(receita.nome);
  }
}


class Receita {
  String nome;
  double preco;

  Receita(this.nome, this.preco);
}