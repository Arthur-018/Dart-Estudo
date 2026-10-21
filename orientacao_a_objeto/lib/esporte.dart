abstract class Pontuacao {
  void calculaPontos(){}
  void devolveColocacao(){}
}

class Volei extends Esporte implements Pontuacao{
    Volei(super.time);

  @override
  void calculaPontos() {
    // TODO: implement calculaPontos
  }

  @override
  void devolveColocacao() {
    // TODO: implement devolveColocacao
  }
    
  }


abstract class Esporte {
  String time;

  Esporte(this.time);
}


