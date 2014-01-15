//this is a class for the good things on the Hunger Games Level

class HGGood {
  PVector loc, vel;
  PImage hggood;
  int d;

  HGGood(float x, float y) {
    loc = new PVector (x, y);
    vel = new PVector (0, random(1, 4));
    int r = int(random(1, 4));
    hggood = loadImage("hgg" + r + ".png");
    d = 30;
  }

  void display() {
    image(hggood, loc.x, loc.y, d, d);
  }

  void move() {
    loc.add(vel);
  }

  //  void reset() {
  //    loc.set(random(width), -d);
  //    vel.set(0, random(1,4));
  //  }
}

