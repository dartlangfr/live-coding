import "dart:mirrors";
import "message.dart";

main(){
  MirrorSystem ms = currentMirrorSystem();
  LibraryMirror lm = ms.libraries['message_lib'];
  ClassMirror mirror = lm.classes['Message'];
  mirror.newInstance('', ["Hello"]).then((InstanceMirror im) => im.invoke("render", []));
}