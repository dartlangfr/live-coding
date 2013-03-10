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
  // TODO load from the localstorage
  print('Load');
}

save(){
  // TODO store into the localstorage
  print('Save');
}