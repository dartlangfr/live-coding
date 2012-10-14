import "dart:html";

FileReader reader = new FileReader();
TextAreaElement textArea;
InputElement fileInput;

main(){
  fileInput = query("#fileInput");
  textArea = query("#ta");
  fileInput.on.change.add((e) => _loadFile());
}

_loadFile(){
  var textFile = fileInput.files[0];
  reader.on.load.add((e) => _readFile(reader.result));
  reader.readAsText(textFile);
}

_readFile(String content){
  textArea.value = content;
}