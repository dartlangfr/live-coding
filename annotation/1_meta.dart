import 'packages/meta/meta.dart';


main(){
  oldHello();
  newHello();  
}

@deprecated
oldHello(){
  print("Hello");  
}

newHello(){
  print("Hello world");
}