import peasy.*;

Planet sun;

PeasyCam cam;

PImage sunTexture;
PImage[] textures = new PImage[4];

void setup() {
  size(1200, 1000, P3D);
  sunTexture = loadImage("sun.jpg");
  textures[0] = loadImage("earth.jpg");
  textures[1] = loadImage("mars.jpg");
  textures[2] = loadImage("mercury.jpg");
  textures[3] = loadImage("jupiter.jpg");

  sun = new Planet(40, 0, 0, sunTexture);
  sun.spawnMoons(5, 1);
  //cam = new PeasyCam(this, 100);
}

void draw() {
  background(0);

  translate(width/2, height/2);
  int z = 75;
  pointLight(255, 255, 255, -50, -50, z);
  pointLight(255, 255, 255, 50, -50, z);
  pointLight(255, 255, 255, 50, 50, z);
  pointLight(255, 255, 255, -50, 50, z);
 
 //light();
    sun.show();
  sun.orbit();
} 
