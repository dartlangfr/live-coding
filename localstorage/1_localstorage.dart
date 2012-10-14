#import("dart:html");

TextAreaElement area;


main(){
  area = query('#ta');
  load();
  query('#save-ta').on.click.add((e) {
    save();
  }, false);  
  
}

load(){
  area.value = window.localStorage.$dom_getItem("value");
}

save(){
  window.localStorage.$dom_setItem("value", area.value);
}