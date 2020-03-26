float r = 0;
float a = 0;
float aVel= 0.0001;
float aAccel = 0.0001;

void setup() {
  size(640, 360);
  background(0);
} 

void draw () {
  

  translate(width/2, height/2);
  float x = r*cos(a);
  float y = r*sin(a);
 
  fill(255);

  noStroke();
  ellipse(x, y, 5, 5);
  
  a+=aVel;
  aVel += aAccel;
  r+= aVel;
} 
