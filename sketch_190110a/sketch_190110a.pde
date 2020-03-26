Walker w; 

void setup() {
  size(600,360);
  background(127);
  w = new Walker();

}

void draw() {
  w.display();
  w.move();

} 
