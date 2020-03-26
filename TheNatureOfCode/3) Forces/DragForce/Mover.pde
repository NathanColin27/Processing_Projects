class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;

  float mass;
  Mover() {
    location = new PVector(random(width), 0);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0.0, 0.0);
    mass = random(1, 4);
  } 

  void move() {

    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(15);
    acceleration.mult(0);
  }


  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }


  void edges() {
    if (location.x > width) { 
      location.x = width; 
      velocity.x *= -1;
    }
    if (location.x < 0) { 
      location.x = 0; 
      velocity.x *= -1;
    }
    if (location.y > height) { 
      location.y = height; 
      velocity.y *= -1;
    }
    if (location.y < 0) { 
      location.y = 0; 
      velocity.y *= -1;
    }
  }

  void display() {
    fill(127);
    stroke(0);
    strokeWeight(2);
    ellipse(location.x, location.y, mass*20, mass*20);
  }
}
