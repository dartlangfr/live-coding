import 'dart:async';
import 'dart:isolate';

main() {
  mainPrint("start");
  // timer1 runs in an new isolate with its own heap
  spawnFunction(timer1);
  // if main isolate terminates, the entire VM terminates
  timer2();
  // spawnFunction(timer2);
  mainPrint("end");
}

timer1() {
  new Timer.periodic(const Duration(seconds: 1), (t) => tick(print1));
}

timer2() {
  new Timer.periodic(const Duration(seconds: 3), (t) => tick(print2));
}

int counter = 0;
tick(myPrint(msg)) {
  myPrint((counter++).toString());
}

mainPrint(d) => print("main : $d");
print1(d) => print("First timer : $d");
print2(d) => print("Second timer : $d");