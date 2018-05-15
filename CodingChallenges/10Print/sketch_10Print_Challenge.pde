//Declaring Variables
int x = 0;
int y = 0;
int spacing = 10;
int r = 0;
int g = 0;
int b = 0;

void setup() {
  size(400, 400);
  background(255);
  //colorMode(HSB, 240, 20, 100);
}

void draw() {
  stroke(RGB,r % 255, g % 255,100);
  if (random(1) < 0.5) {
    line(x, y, x + spacing, y + spacing);
  } else {
    line(x, y + spacing, x + spacing, y);
  }
  x = x + spacing; // adding spacing value to x
  if (x > width) { //reset x value
    x = 0;
    y = y + spacing;
  }
  if (y > height) { //resets screen
    background(255); 
    y = 0;
    x = 0;
    println("reset");
  }
}