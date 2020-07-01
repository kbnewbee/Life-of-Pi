String pi;
int[] digits;
int index = 0;
float rad ; 
void setup() {
  size(1000, 1000);
  rad = 400;

  pi = loadStrings("pi-1million.txt")[0];
  String[] sdigits = pi.split("");
  digits = int(sdigits);

  background(0);
}

void draw() {
  translate(width/2, height/2);
  for (int i =0; i<1; i++) {
    int digit = digits[index];
    int nextdigit = digits[index+1];
    index++;

    float a1 = map(digit, 0, 10, 0, TWO_PI);
    float a2;
    if (digit < 10) {
      a2 = map(digit+1, 0, 10, 0, TWO_PI);
    } else {
      a2 = 0;
    }

    float sang1 = map(digit, 0, 10, a1, a2);

    //float ang1 = random(a1+0.01, a2-0.01);
    float x1 = rad * cos(sang1);
    float y1 = rad * sin(sang1);

    float a3 = map(nextdigit, 0, 10, 0, TWO_PI);
    float a4;
    if (digit < 10) {
      a4 = map(nextdigit+1, 0, 10, 0, TWO_PI);
    } else {
      a4 = 0;
    }

    float sang2 = map(digit, 0, 10, a3, a4);

    //float ang2 = random(a3+0.01, a4-0.01);
    float x2 = rad * cos(sang2);
    float y2 = rad * sin(sang2);

    if (digit == 0) stroke(37, 9, 241);
    else if (digit == 1) stroke(218, 55, 149);
    else if (digit == 2) stroke(72, 182, 239);
    else if (digit == 3) stroke(61, 42, 110);
    else if (digit == 4) stroke(94, 253, 21);
    else if (digit == 5) stroke(215, 25, 28);
    else if (digit == 6) stroke(255, 255, 0);
    else if (digit == 7) stroke(237, 214, 167);
    else if (digit == 8) stroke(236, 46, 219);
    else if (digit == 9) stroke(199, 101, 51);

    //stroke(255);
    line(x1, y1, x2, y2);
  }
}
