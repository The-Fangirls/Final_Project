//this will be the code for the player class

class Player {
  PVector loc;
  int d;
  
  Player() {
    loc = new PVector(mouseX, height-d);
    d = 100;
  }
  
  void display() {
    ellipse(loc.x,loc.y,d,d);
  }
  
  void update() {
    loc.set(mouseX,height-d);
  }
  
}
