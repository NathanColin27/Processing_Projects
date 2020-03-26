Mover[] movers;

void setup() {
  size(600, 360);
  movers = new Mover[2];
  for ( int i = 0; i < movers.length; i++ ) {
    movers[i] = new Mover();
  }
} 

void draw() {
  background(255);

  for (Mover m : movers) {

    PVector gravity = new PVector(0, 0.3);
    gravity.mult(m.mass);
    PVector wind = new PVector(0, 0);

    //gravity 
    m.applyForce(gravity);
    //wind
    m.applyForce(wind); 
    //friction
    if (mousePressed) {
      PVector drag = m.velocity.get();
      drag.normalize();
      float c = -0.01; 
      float speed = m.velocity.mag();
      drag.mult(c*speed*speed);
      m.applyForce(drag);
    }

    m.display();
    m.move();
    m.edges();
  }
}
