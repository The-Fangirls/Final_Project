//this is a class for the good things on the Divergent Level


class DGood {
  PVector loc, vel;
  PImage dgood;
  int d;
  
  DGood(float x, float y) {
    loc = new PVector (x, y);
    vel = new PVector (0, random(1,4));
    int r = int(random(1,3));
    dgood = loadImage("dg" + r + ".png");
    d = 40;
  }
  
  void display() {
    image(dgood, loc.x,loc.y,d,d);
  }
  
  void move() {
    loc.add(vel);
  }
  
//  void reset() {
//    loc.set(random(width), -d);
//    vel.set(0, random(1,4));
//  }
  
}
