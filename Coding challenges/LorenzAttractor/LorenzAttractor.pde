float x = 10;
float y = 5;
float z = 5;

float a = 10;
float b = 28; 
float c = 8/3;

ArrayList<PVector> points = new ArrayList<PVector>();

void setup() {
  size(600, 800, P3D);
  background(0);
  colorMode(HSB);
}

void draw() {
  float dt = 0.015;
  float dx = (a * (y - x))*dt;
  float dy = (x * (b - z) -y)*dt;
  float dz = (x * y - c * z)*dt;

  x = x + dx;
  y = y + dy;
  z = z + dz;
  println(x);

  points.add(new PVector(x, y, z));
  
  noFill();
  stroke(255);
  translate(width/2, height/2);
  scale(5);
  beginShape();
  float clr = 0;
  for (PVector v : points) {
    stroke(clr, 255,255);
    vertex(v.x, v.y, v.z);
    clr += 0.11;
    if (clr > 255) {
    clr = 0;
    }
    
  }
  endShape();
}
