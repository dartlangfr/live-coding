#library("unittest_test");

#import('dart:io');
#import('dart:isolate');

num addNumeric(num a, num b) {
  // TODO: add implementation
}

addToStream(OutputStream output, String text, int times) {
  // TODO: add text n times to ouput stream
//  while(times > 0) {
//    try {
//      output.writeString(text);
//      times--;
//    } on FileIOException catch (e) {
//      // Ignore and try again
//    }
//  }
}

Future<num> asyncAddNumeric(num a, num b) {
  Completer<num> completer = new Completer<num>();
  // TODO: async add implementation
//  new Timer(1000, (t) => completer.complete(a + b));
  return completer.future;
}
