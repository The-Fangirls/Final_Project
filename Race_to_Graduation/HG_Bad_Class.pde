//this is a class for the bad things on the Hunger Games Level

class HGBad {
  PVector loc, vel;
  PImage hgbad;
  int d;
  
  HGBad(float x, float y) {
    loc = new PVector (x, y);
    vel = new PVector (0, random(1,4));
    int r = int(random(1,4));
    hgbad = loadImage("hgb" + r + ".png");
    d = 30;
  }
  
  void display() {
    image(hgbad, loc.x,loc.y,d,d);
  }
  
  void move() {
    loc.add(vel);
  }
  
}
