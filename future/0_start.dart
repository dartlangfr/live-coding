import "dart:isolate";

main() {
  // TODO 1 : ordre quelquonce (selon le temps d'execution)
  // TODO 2 : enchainer pour afficher Start, 1, 2, 3
  // TODO 3 : parallèliser et synchroniser pour afficher Start, 1, 2, 3
}

Future<String> one(){
  var completer = new Completer();
  new Timer(300, (t) => completer.complete("1"));
  return completer.future;
}

Future<String> two(){
  var completer = new Completer();
  new Timer(200, (t) => completer.complete("2"));
  return completer.future;
}

Future<String> three(){
  var completer = new Completer();
  new Timer(100, (t) => completer.complete("3"));
  return completer.future;
}