import "../lib/add_operation.dart";
import "../packages/unittest/unittest.dart";
import "../packages/unittest/mock.dart";
import 'dart:io';

// OutputStream mock class
class MockOutputStream extends Mock implements OutputStream {}

main() {
  // test addNumeric method
  test('test addNumeric', () {
    expect(addNumeric(1,  1), equals(2));
    expect(addNumeric(1.5,  2.5), equals(4));
    expect(addNumeric(-1.5,  2.5), equals(1));
    expect(addNumeric(-1.5,  -2), equals(-3.5));
    expect(addNumeric(0, 0), equals(0));
  });

  // test addToStream with writeString that throws FileIOException then always return true
  test('test addToStream', () {
    MockOutputStream output = new MockOutputStream();
    output.when(callsTo('writeString')).thenThrow(new FileIOException()).alwaysReturn(true);

    addToStream(output, "to", 2);

    output.getLogs(callsTo('writeString', "to"), null, true).verify(happenedExactly(3));
    output.getLogs().verify(neverHappened);
  });

  // test asyncAddNumeric method
  test('test asyncAddNumeric', () {
    var callbackExpect = (num result) => expect(result, equals(-3.5));

    asyncAddNumeric(-1.5, -2).then(expectAsync1(callbackExpect));
  });
}