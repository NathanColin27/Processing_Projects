class ParticleSystem {
  ArrayList<Particle> particles;

  ParticleSystem() {
    particles = new ArrayList<Particle>();
  }


  void addParticle() {
    float r = random(1);
    if (r < 0.4) {
    particles.add(new Particle());}
    else {
      particles.add(new Particle());
    }
  }
  
  void applyForce( PVector force) {
    for(Particle p : particles) {
      p.applyForce(force);
    }
  }
  void run() {
    for (int i = particles.size()-1; i >= 0; i-- ) {
      Particle p = particles.get(i);
      p.run();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}
