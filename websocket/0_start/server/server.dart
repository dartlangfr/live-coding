#import('dart:io');
#import('dart:isolate');
#import('dart:math');
#import('../shared/shared_lib.dart');

main() {
  print("Starting server");
  int port = 12345;
  
  // TODO: Create a WebSocket handler

  HttpServer server = new HttpServer();
  // TODO: Link the WebSocket handler with the server
  server.listen('127.0.0.1', port);

  print('Listening for connections on http://127.0.0.1:$port');
}

// TODO: Handle a new web socket connection

// Process a long add operation...
Future<AddOperationData> longProcess(AddOperationData opData) {
  Completer<AddOperationData> completer = new Completer<AddOperationData>();
  // Long processing, up to 10 seconds!
  new Timer(new Random().nextInt(10000), (t) {
    var result = new AddOperationData.resultsIn(opData.a, opData.b, opData.a + opData.b);
    completer.complete(result);
  });
  return completer.future;
}