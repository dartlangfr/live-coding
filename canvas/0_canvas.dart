#import('dart:html');
#import('dart:math');

CanvasRenderingContext2D ctx;

main() {
  CanvasElement canvas = document.query("#canvas");
  ctx = canvas.getContext("2d");
  draw();
}

draw() {
  ctx.fillText("Hello world", 100, 100);
}
