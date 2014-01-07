//This is the code for the game
Player p1;


void setup() {
 size(500,500);
 background(0);
p1 = new Player(); 
}

void draw() {
  p1.display();
  p1.update();
}
