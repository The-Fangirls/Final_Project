//this is a class for the bad things on the Divergent Level

class DBad {
  //these are the variables needed to create the DBad class
  PVector loc, vel;
  PImage dbad;
  int d;

  DBad(float x, float y) {
    loc = new PVector (x, y);
    vel = new PVector (0, random(1, 4));
    int r = int(random(1, 4));
    dbad = loadImage("db" + r + ".png");
    d = 30;
  }
  
  //this function will display the images as part of the array
  void display() {
    image(dbad, loc.x, loc.y, d, d);
  }

  //this function will move the objects which are part of the array
  void move() {
    loc.add(vel);
  }
}

