import "dart:async";

Stopwatch stopWatch;
main() {
  stopWatch = new Stopwatch();
  stopWatch.start();

  Future<String>  oneFuture = one();
  oneFuture.then(myPrint);
  two().then(myPrint);
  three().then(myPrint);
  print("Start");
}

Future<String> one({prefix: ""}){
  var completer = new Completer();
  new Timer(new Duration(milliseconds: 1500), () => completer.complete("$prefix 1"));
  return completer.future;
}

Future<String> two({prefix: ""}){
  var completer = new Completer();
  new Timer(new Duration(milliseconds: 1000), () => completer.complete("$prefix 2"));
  return completer.future;
}

Future<String> three({prefix: ""}){
  var completer = new Completer();
  new Timer(new Duration(milliseconds: 500), () => completer.complete("$prefix 3"));
  return completer.future;
}

myPrint(data) {
  print("Ellapsed: ${stopWatch.elapsedMilliseconds}ms");
  print(data);
}

printAndCall(Future asyncFunction([prefix])) {
  return (value) {
    myPrint(value);
    return asyncFunction(value);
  };
}
