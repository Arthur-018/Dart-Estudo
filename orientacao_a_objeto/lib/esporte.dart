abstract class Pontuacao {
  void calculaPontos(){}
  void devolveColocacao(){}
}

class Volei extends Esporte implements Pontuacao{
    Volei(super.time);

  @override
  void calculaPontos() {
  }

  @override
  void devolveColocacao() {
  }
    
  }

abstract class Esporte {
  String time;

  Esporte(this.time);
}


