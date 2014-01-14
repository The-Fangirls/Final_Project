//this is a class for the good things on the Harry Potter Level


class HPGood {
  PVector loc, vel;
  PImage hpgood;
  int d;
  
  HPGood(float x, float y) {
    loc = new PVector (x, y);
    vel = new PVector (0, random(1,4));
    int r = int(random(1,4));
    hpgood = loadImage("hpg" + r + ".png");
    d = 30;
  }
  
  void display() {
    image(hpgood, loc.x,loc.y,d,d);
  }
  
  void move() {
    loc.add(vel);
  }
  
//  void reset() {
//    loc.set(random(width), -d);
//    vel.set(0, random(1,4));
//  }
  
}
