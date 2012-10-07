#import('dart:isolate');

main() {
  var name = "main";
  print("$name : start");
  timer1();
  timer2();
  print("$name : end");
}

timer1() {
  var name = "First timer";
  new Timer.repeating(1000, (t) => tick(name));
}

timer2() {
  var name = "Second timer";
  new Timer.repeating(3000, (t) => tick(name));
}

int counter = 0;
tick(String name) {
  print("$name : ${counter++}");
}