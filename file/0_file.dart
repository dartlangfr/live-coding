import "dart:html";

// TODO instancier le FileReader
FileReader reader = null;
TextAreaElement textArea;
InputElement fileInput;

main(){
  fileInput = query("#fileInput");
  textArea = query("#ta");
  // TODO charger le fichier lorsque le champ est rempli
}

_loadFile(){
  // TODO lire le fichier l'afficher quand il est lu
}

_display(String content){
  textArea.value = content;
}