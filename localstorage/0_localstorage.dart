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
  // TODO charger depuis le localstorage
  print('Load');
}

save(){
  // TODO enregistrer dans le localstorage
  print('Save');
}