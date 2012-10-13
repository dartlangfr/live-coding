#import('dart:html');
#import('dart:math');

CanvasRenderingContext2D ctx;

main() {
  CanvasElement canvas = document.query("#canvas");
  ctx = canvas.getContext("2d");
  
  draw();
}

draw() {

  ctx.fillStyle = '#F5F5F5';
  ctx.fillRect( 0, 0, 255, 255 );

  ctx.fillStyle = '#FF0000';
  ctx.beginPath();
  ctx.arc( 100, 100, 10, 0, PI * 2, true );
  ctx.closePath();
  ctx.fill();
}


