import "dart:html";

TextAreaElement area;

main(){
  area = query('#ta');
  load();
  query('#save-ta').onClick.listen((e) {
    save();
  });
}

load(){
  String value = window.localStorage["value"];
  area.value = value == null ? "" : value;
}

save(){
  window.localStorage["value"] = area.value;
}