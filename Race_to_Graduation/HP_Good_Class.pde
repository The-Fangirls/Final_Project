//this is a class for the good things on the Harry Potter Level

class HPGood {
  //these are the variables needed to create the HGGood class
  PVector loc, vel;
  PImage hpgood;
  int d;

  HPGood(float x, float y) {
    loc = new PVector (x, y);
    vel = new PVector (0, random(1, 4));
    int r = int(random(1, 4));
    hpgood = loadImage("hpg" + r + ".png");
    d = 40;
  }

  //this function will display the images as part of the array
  void display() {
    image(hpgood, loc.x, loc.y, d, d);
  }

  //this function will move the objects which are part of the array
  void move() {
    loc.add(vel);
  }
}
