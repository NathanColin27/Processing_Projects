Mover mover;

void setup() {
size(600,360);
mover = new Mover();
} 

void draw() {
background(255);

mover.display();
mover.move();
//mover.edges();
}
