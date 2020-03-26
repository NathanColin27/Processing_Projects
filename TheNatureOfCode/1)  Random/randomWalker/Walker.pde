class Walker {

  float x = width/2;
  float y = height/2;
  
void display() {
  fill(0);
  rect(x, y, 1,1);
}

void move() {
  float direction = random(100);
  if ( direction < 25) {
  x++;
  }
  else if ( direction < 50) {
  x--;
  }
  else if ( direction < 75) {
  y++;
  }
  else {
  y--;
  }
}
  

}
