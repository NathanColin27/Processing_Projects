Mover mover;

void setup() {
size(600,360);
mover = new Mover();
} 

void draw() {
background(255);

PVector f = new PVector(0.2,0.3);
mover.applyForce(f);

mover.display();
mover.move();
mover.edges();
}
