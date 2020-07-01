import processing.pdf.*;

String pi;
PGraphicsPDF pdf;

void renderBook() {

  textSize(12);

  float w = 12;
  float h = 14.4;
  int index = 0;

  background(255);
  PFont f = createFont("Courier", 12);
  textFont(f);

  int margin = 100;
  int pageNum = 0;
  while (true) {
    for (float y = margin; y < height - margin; y += w) {
      float x = margin;
      while (x < width-w/2-margin) {
        String s = "" + pi.charAt(index);

        int d = int(s);
        float br = map(d, 0, 9, 0, 255);
        fill(br);
        noStroke();
        rect(x, y, w, w);

        fill(255-br);
        textAlign(CENTER,CENTER);
        text(s, x+w/2, y+w/2-3);
        //x += textWidth(s);
        x += w;
        index++;
        if (index >= pi.length() ) {
          return;
        }
      }
    }
    pageNum++;
    println("Page " + pageNum + " complete!");
    pdf.nextPage();
  }
}

void setup() {
  size(850, 1150, PDF, "bookofPI_5.pdf");
  pdf = (PGraphicsPDF) g;
  pi = "3." + loadStrings("pi-1million.txt")[0];
  //pi = "3." + loadStrings("pi-small.txt")[0];
}
void draw() {
  noLoop();
  renderBook();

  println("finished");
  exit();
}
