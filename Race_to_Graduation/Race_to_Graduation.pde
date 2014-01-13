//This is the code for the game
Player p1;
ArrayList<HGGood> hgg = new ArrayList<HGGood>();


void setup() {
 size(600,600);
 p1 = new Player(); 
 hgg.add(new HGGood(width/2, 120));
}

void draw() {
  hgg.add(new HGGood(random(width),-5));
  background(0);
  for(int i = hgg.size()-1; i >= 0; i--) {
    HGGood h = hgg.get(i);
    h.display();
    h.move();
  }
  p1.display();
  p1.update();
}
