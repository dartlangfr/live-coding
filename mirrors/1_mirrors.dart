import "dart:mirrors";
import "message.dart";

main(){
  // Get the mirror system
  MirrorSystem mirrorSystem = currentMirrorSystem();
  // Get the message_lib library
  LibraryMirror libraryMirror = mirrorSystem.libraries[const Symbol('message_lib')];
  // Get the message class
  ClassMirror classMirror = libraryMirror.classes[const Symbol('Message')];
  // Create a new instance of Message
  InstanceMirror instanceMirror = classMirror.newInstance(const Symbol(''), ["Hello"]);
  // Invoke the render method
  instanceMirror.invoke(const Symbol("render"), []);
}