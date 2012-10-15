import "dart:isolate";


Stopwatch stopWatch;
main() {
  stopWatch = new Stopwatch();
  stopWatch.start();

  // TODO 1 : ordre quelquonce (selon le temps d'execution)
  // TODO 2 : enchainer pour afficher Start, 1, 2, 3
  // TODO 3 : parallèliser et synchroniser pour afficher Start, 1, 2, 3
}

myPrint(data) {
  print("Ellapsed: ${stopWatch.elapsedInMs()}ms");
  print(data);
}

Future<String> one([String prefix = ""]){
  var completer = new Completer();
  new Timer(1500, (t) => completer.complete("$prefix 1"));
  return completer.future;
}

Future<String> two([String prefix = ""]){
  var completer = new Completer();
  new Timer(1000, (t) => completer.complete("$prefix 2"));
  return completer.future;
}

Future<String> three([String prefix = ""]){
  var completer = new Completer();
  new Timer(500, (t) => completer.complete("$prefix 3"));
  return completer.future;
}
