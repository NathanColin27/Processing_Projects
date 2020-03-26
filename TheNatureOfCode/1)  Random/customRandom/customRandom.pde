void setup() {
  size(400, 400);
} 

void draw() {
  float r1 = random(400);
  float r2 = random(400);
  if (r2 < r1 ) {
    fill(0);
  rect(r2, r1,4,4);
  
  }
} 
