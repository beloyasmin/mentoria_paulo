void main() async {
  await processar((status) => print(status));

  processarPedido(
    onStart: (Status status) => print("Inicializado $status"),
    onFinish: (status) => print("Finalizando $status"),
  );
}
typedef StatusCallback = void Function(String status);

void callback(String status) {
  print(status);
}

Future<void> processar(StatusCallback callback ) async {
  callback("Iniciando processamento");
  await Future.delayed(Duration(seconds: 1));
  callback("Processando");
  await Future.delayed(Duration(seconds: 1));

  callback("Processamento finalizado");
}

Future<void> processarPedido({
  required void Function(Status status) onStart,
  required void Function(Status status) onFinish,
}) async {
  onStart(Status.inicial);
  await Future.delayed(Duration(seconds: 1));
  onFinish(Status.processado);
}

enum Status { inicial, pendente, processado }
