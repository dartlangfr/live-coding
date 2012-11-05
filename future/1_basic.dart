import "dart:isolate";


Stopwatch stopWatch;
main() {
  stopWatch = new Stopwatch();
  stopWatch.start();

  Future<String>  one = one();
  one.then(myPrint);
  two().then(myPrint);
  three().then(myPrint);
  print("Start");
}

myPrint(data) {
  print("Ellapsed: ${stopWatch.elapsedMilliseconds}ms");
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
