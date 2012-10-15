import 'dart:html';
import 'dart:math';

CanvasRenderingContext2D ctx;

main() {
  CanvasElement canvas = document.query("#canvas");
  ctx = canvas.getContext("2d");

  window.requestAnimationFrame(animate);
}

bool animate(int time){
  calculate();
  draw();
  window.requestAnimationFrame(animate);
  return true;
}

draw() {
  ctx..fillStyle = '#FFFFFF'
      ..fillRect( 0, 0, 255, 255 );

  ctx..fillStyle = '#FF0000'
      ..beginPath()
      ..arc(x, y, 10, 0, PI * 2, true)
      ..closePath()
      ..fill();
}

num x, y;
calculate(){
  var time = new Date.now().millisecondsSinceEpoch * 0.002;
  x = sin( time ) * 96 + 128;
  y = cos( time * 0.9 ) * 96 + 128;
}
