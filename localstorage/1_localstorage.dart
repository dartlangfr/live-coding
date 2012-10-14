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
  area.value = window.localStorage["value"];
}

save(){
  window.localStorage["value"] = area.value;
}