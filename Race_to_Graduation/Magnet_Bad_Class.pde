//this is a class for the bad things on the Magnet Level

class MBad {
  //these are the variables needed to create the MBad class
  PVector loc, vel;
  PImage mbad;
  int d;

  MBad(float x, float y) {
    loc = new PVector (x, y);
    vel = new PVector (0, random(1, 4));
    int r = int(random(1, 7));
    mbad = loadImage("mb" + r + ".png");
    d = 30;
  }
  
  //this function will display the images as part of the array
  void display() {
    image(mbad, loc.x, loc.y, d, d);
  }

  //this function will move the objects which are part of the array
  void move() {
    loc.add(vel);
  }
  
}
