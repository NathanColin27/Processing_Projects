ParticleSystem ps;


void setup() {
   size(600,360);
   ps = new ParticleSystem() ;

}

void draw() {
  background(255);
  ps.addParticle();
  
  ps.run();
}
