class Pessoa {
  String? nome;
  String? _cpf; // colocar _ na frente do nome torna ele private

  String get cpf {
    return _cpf!;
  }

  set cpf(String novoCPF) {
    this._cpf = novoCPF;
  }
}
