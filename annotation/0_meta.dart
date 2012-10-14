main(){
  // TODO prévenir que oldMethod est depreciée
  oldHello();
  newHello();  
}

oldHello(){
  print("Hello");  
}

newHello(){
  print("Hello world");
}