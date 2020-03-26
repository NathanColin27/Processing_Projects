float amplitude = 320;
float period = 300;
float x = -700;

void setup() {
  size(1400,640);
   background(255);
} 

void draw() {
 
  translate(width/2, height/2);
  
  
  float y = amplitude* sin((frameCount/period)*TWO_PI);
  fill(127);
  stroke(0);
  //line(0,0,x,y);
  ellipse(x,y,30,30);
  x += 1;
  
} 
