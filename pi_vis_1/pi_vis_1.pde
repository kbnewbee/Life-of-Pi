String pi;
int[] digits, edigits; 
int index=0;

void setup() {
  size(1900, 1000);

  String[] e = loadStrings("e-1million.txt");
  String all = join(e, " ");
  String[] esdigits = all.split("");
  edigits = int(esdigits);
  //println(edigits);

  pi = loadStrings("pi-1million.txt")[0];
  String[] sdigits = pi.split("");
  //println(sdigits.length);
  digits = int(sdigits);
  //println(digits);
}
void draw() {
  background(0);

  for (int y = 10; y < height; y+=15 ) {
    for (int x = 10; x < width; x+=15) {

      if (edigits[index] == 0) fill(37, 9, 241);
      else if (edigits[index] == 1) fill(218, 55, 149);
      else if (edigits[index] == 2) fill(72, 182, 239);
      else if (edigits[index] == 3) fill(61, 42, 110);
      else if (edigits[index] == 4) fill(94, 253, 21);
      else if (edigits[index] == 5) fill(215, 25, 28);
      else if (edigits[index] == 6) fill(255, 255, 0);
      else if (edigits[index] == 7) fill(237, 214, 167);
      else if (edigits[index] == 8) fill(236, 46, 219);
      else if (edigits[index] == 9) fill(199, 101, 51);

      ellipse(x, y, 10, 10);
      fill(0);
      ellipse(x, y, 4, 4);


      index++;
    }
  }
  noLoop();
}
