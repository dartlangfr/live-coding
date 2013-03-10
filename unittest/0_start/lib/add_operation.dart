library unittest_test;

import 'dart:io';
import 'dart:async';

num addNumeric(num a, num b) {
  // TODO: add implementation
}

addToStream(StreamSink<String> output, String text, int times) {
  // TODO: add text n times to ouput stream
//  while(times > 0) {
//    try {
//      output.add(text);
//      times--;
//    } on FileIOException catch (e) {
//      // Ignore and try again
//    }
//  }
}

Future<num> asyncAddNumeric(num a, num b) {
  Completer<num> completer = new Completer<num>();
  // TODO: async add implementation
//  new Timer(new Duration(seconds: 1), () => completer.complete(a + b));
  return completer.future;
}
