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
  print('Load');
}

save(){
  print('Save');
}