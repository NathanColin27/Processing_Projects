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
    PVector mouse = new PVector(mouseX, mouseY); 
    mouse.sub(location);
    mouse.setMag(0.1);
    
    acceleration = mouse;
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(5);
    }
    
  void edges() {
    if (location.x > width) location.x = 0;
    if (location.x < 0) location.x = width;
    if (location.y > height) location.y = 0;
    if (location.y < 0) location.y = height;
  }
  
  void display() {
  fill(127);
  stroke(0);
  strokeWeight(2);
  ellipse(location.x, location.y,48,48);
  }
  

}
