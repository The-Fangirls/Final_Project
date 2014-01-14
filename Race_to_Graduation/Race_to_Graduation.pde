//This is the code for the game
Player p1;
ArrayList<HGGood> hgg = new ArrayList<HGGood>();
//timing mechanisms
int currentTime = 0;
int changeTime = 0;
int oldTime = 0;

void setup() {
 size(600,600);
 p1 = new Player(); 
 hgg.add(new HGGood(width/2, 120));
}

void draw() {
  //timing mechanisms
  currentTime = millis();
  changeTime = currentTime-oldTime;
  if (changeTime > 2000) {
    oldTime = currentTime;
    hgg.add(new HGGood(random(width),-5));
  }
  background(0);
  for(int i = hgg.size()-1; i >= 0; i--) {
    HGGood h = hgg.get(i);
    h.display();
    h.move();
    if(p1.recognize(h) == true) {
      hgg.remove(i);
    }
    if(h.loc.y >= height) {
      hgg.remove(i);
    }
  }
  p1.display();
  p1.update();

}
