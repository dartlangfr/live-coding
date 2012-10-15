import "dart:html";

TextAreaElement area;


main(){
  area = query('#ta');
  load();
  query('#save-ta').on.click.add((e) {
    save();
  }, false);

}

load(){
  String value = window.localStorage["value"];
  area.value = value == null ? "" : value;
}

save(){
  window.localStorage["value"] = area.value;
}