#import("dart:isolate");

main(){
  
  one()
    .chain((result) => printAndNext(result, two))
    .chain((result) => printAndNext(result, three))
    .then((result) => print(result));
    
  print("Start");
}

Future<String> printAndNext(String result, future){
  print(result);
  return future();
}

Future<String> one(){
  var completer = new Completer();
  new Timer(900, (t) => completer.complete("1"));
  return completer.future;
}

Future<String> two(){
  var completer = new Completer();
  new Timer(600, (t) => completer.complete("2"));
  return completer.future; 
}

Future<String> three(){
  var completer = new Completer();
  new Timer(300, (t) => completer.complete("3"));
  return completer.future;  
}
