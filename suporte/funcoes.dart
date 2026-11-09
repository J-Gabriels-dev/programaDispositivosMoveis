void exibirOla() {
  print("Olá , mundo");
}

void exibirMsgPosicional(String msg) {
  print(msg);
}

void exibirMsgNomeado({required String msg}) {
  print(msg);
}

bool menorQueCinco(int valor) {
  return valor < 5;
}

bool par(int valor) {
  return valor % 2 == 0;
}

int soma(int v1, int v2) {
  return v1 + v2;
}

void main(List<String> args) {
  exibirOla();
  exibirMsgNomeado(msg: "Hello, Word!");
  exibirMsgPosicional("Olá, Mundo Posicional!");
}
