import "dart:html";

FileReader reader = new FileReader();
TextAreaElement textArea;
InputElement fileInput;

main(){
  fileInput = query("#fileInput");
  textArea = query("#content");
  fileInput.onChange.listen((e) => _loadFile());
}

_loadFile(){
  var textFile = fileInput.files[0];
  reader.onLoad.listen((e) => _readFile(reader.result));
  reader.readAsText(textFile);
}

_readFile(String content){
  textArea.value = content;
}