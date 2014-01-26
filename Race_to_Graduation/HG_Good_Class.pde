//this is a class for the good things on the Hunger Games Level

class HGGood {
  //these are the variables needed to create the HGGood class
  PVector loc, vel;
  PImage hggood;
  int d;

  HGGood(float x, float y) {
    loc = new PVector (x, y);
    vel = new PVector (0, random(1, 4));
    int r = int(random(1, 4));
    hggood = loadImage("hgg" + r + ".png");
    d = 40;
  }

  //this function will display the images as part of the array
  void display() {
    image(hggood, loc.x, loc.y, d, d);
  }

  //this function will move the objects which are part of the array
  void move() {
    loc.add(vel);
  }
}

