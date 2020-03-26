float t = 0;

void setup() {

size(600,400);

} 

void draw(){

fill(255);
background(0);
float x = noise(t);
x= map(x, 0,1, 0, width);
t = t + 0.01;
noStroke();
ellipse(x, height/2, 40,40);
}
