import processing.pdf.*;

String pi;

PGraphics canvas;

void setup() {
  size(800, 800);
  pi = loadStrings("pi-1million.txt")[0];

  canvas = createGraphics(8000, 8000);
  float cols = 1000;
  float rows = 1000;

  //beginRecord(PDF, "pageofPI_3.pdf");

  canvas.beginDraw(); 
  canvas.colorMode(HSB, 1.0);

  float w = float(canvas.width)/cols;
  float h = float(canvas.height)/rows;

  int index = 0;

  for (int y = 0; y<canvas.height; y +=h) {
    for (int x = 0; x<canvas.width; x +=w) {
      String s = "" + pi.charAt(index);
      int digit = int(s);
      float hue = float(digit)/10;
      //println(hue);
      float br = map(digit, 0, 9, 0, 255);
      //canvas.fill(br);
      canvas.fill(hue, 1, 1);
      canvas.noStroke();
      //canvas.rect(x, y, w, h);
      canvas.ellipse(x, y, w, h);

      //      fill(255-br);
      //      textAlign(CENTER, CENTER);
      //      text(digit, x+w/2, y+h/2);

      index++;
      if (index >= pi.length()) {
        index = pi.length() -1;
      }
      //println(index);
    }
  }
  canvas.endDraw();
  image(canvas, 0, 0, width, height);
  canvas.save("vis_3.4.jpg");
  //endRecord();

  println("finished");
}
void draw() {
}
