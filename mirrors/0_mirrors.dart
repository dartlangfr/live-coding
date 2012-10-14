import "dart:mirrors";
import "message.dart";

main(){
  var message = new Message("Hello");
  message.render();
  // TODO le même résulat avec des mirroirs
}