//this is a class for the good things on the Divergent Level

class DGood {
  //these are the variables needed to create the DGood class
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
  
  //this function will display the images as part of the array
  void display() {
    image(dgood, loc.x,loc.y,d,d);
  }
  
  //this function will move the objects which are part of the array  
  void move() {
    loc.add(vel);
  } 
}
