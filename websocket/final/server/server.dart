import 'dart:io';
import 'dart:async';
import 'dart:math';
import '../shared/shared_lib.dart';

main() {
  print("Starting server");
  String address = '127.0.0.1';
  int port = 12345;

  HttpServer.bind(address, port).then((HttpServer server) {
    print('Listening for connections on http://$address:$port');

    // Transform http requests as WebSockets and listen for new connection
    server.transform(new WebSocketTransformer()).listen(onConnection);
  });
}

// Handle a new web socket connection
onConnection(WebSocket conn) {
  print('New WebSocket connection');

  conn.listen((message) {
    print('Message received: $message');
    var opData = new AddOperationData.parse(message);
    longProcess(opData).then((result) => conn.send(result.toJSONString()));
  });
}

// Process a long add operation...
Future<AddOperationData> longProcess(AddOperationData opData) {
  Completer<AddOperationData> completer = new Completer<AddOperationData>();
  // Long processing, up to 10 seconds!
  new Timer(new Duration(milliseconds: new Random().nextInt(10000)), () {
    var result = new AddOperationData.resultsIn(opData.a, opData.b, opData.a + opData.b);
    completer.complete(result);
  });
  return completer.future;
}