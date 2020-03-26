class Walker {
  
  int x;
  int y; 
  
  Walker() {
    x = width/2;
    y = height/2;  
  }
  
  void display() {
    stroke(0);
    point(x,y);
    }
    
  void move() {
  int moveX = int(random(3)) -1; 
  int moveY = int(random(3)) - 1; 
  
  x += moveX;
  y += moveY;
  }
}
