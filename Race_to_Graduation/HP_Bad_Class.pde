//this is a class for the bad things on the Harry Potter Level

class HPBad {
  //these are the variables needed to create the HGBad class
  PVector loc, vel;
  PImage hpbad;
  int d;

  HPBad(float x, float y) {
    loc = new PVector (x, y);
    vel = new PVector (0, random(1, 4));
    int r = int(random(1, 5));
    hpbad = loadImage("hpb" + r + ".png");
    d = 50;
  }
  
  //this function will display the images as part of the array
  void display() {
    image(hpbad, loc.x, loc.y, d, d);
  }

  //this function will move the objects which are part of the array
  void move() {
    loc.add(vel);
  }
}

