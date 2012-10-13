#import("dart:html");
#import("dart:math");
#import('../shared/shared_lib.dart');

main() {
  print("Starting client");
  // Call the send(num a, num b) method when click on the submit button
  addButton.on.click.add((e) => send(parseInt(aInput.value), parseInt(bInput.value)));
  
  int port = 12345;
  String url = "ws://127.0.0.1:$port";

  // TODO: Open a websocket
  
  print("Client started");
}

send(num a, num b) {
  var opData = new AddOperationData(a, b);
  print("Send: $opData");
  // TODO: Send to websocket
}

addResult(AddOperationData result) {
  // Insert a the beginning of the list
  resultBox.insertBefore(new LIElement()..text = "$result", resultBox.$dom_firstChild);
}

InputElement get aInput => query("#aInput");
InputElement get bInput => query("#bInput");
InputElement get addButton => query("#addButton");
UListElement get resultBox => query("#result");
