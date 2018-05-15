String txt;
float y = 0;

void setup(){
  
  size(900,600, P3D);
  String[] lines = loadStrings("space.txt");
  txt = join(lines, "\n");
  
  fill(255);
  ellipse(random(900),random(600),5,5);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  
  fill(238, 213, 75);
  textSize(width*0.04);
  textAlign(CENTER);
  rotateX(PI/4);
  float w = -width*0.8;
  text(txt, -w/2, y, w, height);
  y--;
  println(y);
  
  if (y == -900){
    y = 0;
  }
}