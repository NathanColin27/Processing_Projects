class ParticleSystem {
  ArrayList<Particle> particles;

  ParticleSystem() {
    particles = new ArrayList<Particle>();
  }


  void addParticle() {
    float r = random(1);
    if (r < 0.4) {
    particles.add(new SquareParticle());}
    else {
      particles.add(new Particle());
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
