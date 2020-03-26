class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  
  Mover() {
  location = new PVector(width/2, height/2);
  velocity = new PVector(0,0);
  acceleration = new PVector(0.0,0.0);
  } 
  
  void move() {
    
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(15);
    }
    
  
  void applyForce(PVector force) {
  acceleration = force;
  }
  void edges() {
    if (location.x > width) { location.x = width; velocity.x *= -1; }
    if (location.x < 0) { location.x = 0; velocity.x *= -1; }
    if (location.y > height) { location.y = height; velocity.y *= -1; }
    if (location.y < 0) { location.y = 0; velocity.y *= -1; }
    
   
  }
  
  void display() {
  fill(127);
  stroke(0);
  strokeWeight(2);
  ellipse(location.x, location.y,48,48);
  }
  

}
