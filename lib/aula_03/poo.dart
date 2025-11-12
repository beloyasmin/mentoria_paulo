class Carro {
  String _cor;
  String _marca;
  int _velocidadeMaxima;

  Carro(this._cor, this._marca, this._velocidadeMaxima);

  String get cor => _cor;
  String get marca => _marca;
  int get velocidadeMaxima => _velocidadeMaxima;


  void acelerar() {
    print("acelerarando");
  }

  void ligar() {
    print("Ligando");
  }

  void frear() {
    print("freando");
  }

  void alterarCor(String novaCor) {
    _cor = novaCor;
  }

  void mostrarCor() {
    print("Cor: $_cor");
  }
}
