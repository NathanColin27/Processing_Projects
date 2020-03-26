Walker walker;

void setup() {
  size(600,360);
  walker = new Walker();
  background(255);
  }

void draw() {
  
  walker.display();
  walker.move();
  
  
  
}
