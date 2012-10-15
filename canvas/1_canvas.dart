import 'dart:html';
import 'dart:math';

CanvasRenderingContext2D ctx;

main() {
  CanvasElement canvas = document.query("#canvas");
  ctx = canvas.getContext("2d");

  draw();
}

draw() {
  // TODO: refacto !
  ctx.fillStyle = '#FF0000';
  ctx.arc( 100, 100, 10, 0, PI * 2, true );
  ctx.fill();

  ctx.fillText("Hello world", 100, 100);
}


