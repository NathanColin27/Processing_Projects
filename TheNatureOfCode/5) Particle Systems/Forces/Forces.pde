ParticleSystem ps;


void setup() {
   size(600,360);
   ps = new ParticleSystem() ;

}

void draw() {
  background(255);
  
  PVector gravity = new PVector(0,0.05);
  ps.applyForce(gravity);
  
  
  if(mousePressed) {
  float p = map(mouseX, 0, width,-0.1,0.1);
  println(p);
  PVector wind = new PVector(p,0);
  ps.applyForce(wind);
  } 
  ps.addParticle();
  ps.run();
  
}
