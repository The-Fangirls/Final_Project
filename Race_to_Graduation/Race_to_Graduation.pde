//This is the code for the game
Player p1;
boolean HarryPotterGame;
PImage background;


void setup() {
 size(600,600);
 p1 = new Player(); 
}

void draw() {
  background(0);
  if(HarryPotterGame = true){
   background(hpbackground); 
  }
  p1.display();
  p1.update();
}
