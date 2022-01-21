// int soma(int a, int b, int Function(int, int) fn) {
//   return fn(a, b);
// }

imprimirProduto(int qte, {String? nome, double? preco}) {
  //misturando parametros posicionais com parametros nomeados
  for (var i = 0; i < qte; i++)
    print('O produto ${nome} tem preço R\$${preco} !!');
}

class Produto {
  String? nome;
  double? preco;

  Produto({this.nome, this.preco = 9.99}); //parametros nomeados

  // Produto(String nome, double preco) { //parametros posicionais
  //   this.nome = nome;
  //   this.preco = preco;
  // }
}

main() {
  var p1 = Produto(nome: 'Caneta');
  var p2 = Produto(nome: 'Lápis', preco: 4.99);

  // print('O produto ${p1.nome} tem preço R\$${p1.preco}');
  // print('O produto ${p2.nome} tem preço R\$${p2.preco}');

  imprimirProduto(1, nome: p1.nome, preco: p1.preco);
  imprimirProduto(20, nome: p2.nome, preco: p2.preco);
  // final r = soma(2, 3, (a, b) => a * b + 100);

  // print('O resultado é $r');
  // dynamic x = 'Teste';
  // x = 123;
  // x = false;

  // var a = 3;
  // a = 4;

  // final b = 3;

  // const c = 5;

  // Map<String, double> notasDosAlunos = {'Ana': 9.7, 'Bia': 9.2, 'Carlos': 7.8};

  // for (var chave in notasDosAlunos.keys) {
  //   print('chave = $chave');
  // }
  // for (var valor in notasDosAlunos.values) {
  //   print('valor = $valor');
  // }
  // for (var registro in notasDosAlunos.entries) {
  //   print('${registro.key} = ${registro.value}');
  // }
}
