class ContaBancaria {
  double _saldo;

  ContaBancaria(this._saldo);
  double get saldo => _saldo;

  void depositar(double valor) {
    if (valor > 1000) {
      print("Limite de depósito");
      return;
    }
    _saldo += valor;
  }

  double sacar(double valor) {
    if (_saldo - valor < 0) {
      print("Saldo insuficiente");
      return _saldo;
    } else {
      _saldo -= valor;
    }
    return _saldo;
  }

  void extrato() {
    print("Saldo: $saldo");
  }
}

void main() {
  ContaBancaria contaBancaria = ContaBancaria(100);
  contaBancaria.depositar(200);
  contaBancaria.extrato();
  contaBancaria.sacar(150);
  contaBancaria.extrato();
  contaBancaria.saldo;
  contaBancaria.extrato();
  contaBancaria.sacar(1000);
  contaBancaria.extrato();
}
