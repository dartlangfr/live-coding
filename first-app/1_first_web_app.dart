import "dart:html";

main() {
  print("Hello console!");
  var msg = "Hello Web!";
  query("p#text").innerHtml = msg;
}
