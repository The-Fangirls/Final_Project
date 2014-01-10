//This is the code for the game
Player p1;


void setup() {
 size(600,600);

 p1 = new Player(); 
}

void draw() {
  background(0);
  p1.display();
  p1.update();
}
