//This is the code for the game

Player p1;
ArrayList<HGGood> hgg = new ArrayList<HGGood>();
ArrayList<HGBad> hgb = new ArrayList<HGBad>();

//timing mechanisms
int currentTime = 0;
int changeTime = 0;
int oldTime = 0;

int score = 0;
int lives = 3;

void setup() {
  size(600, 600);
  p1 = new Player(); 
  hgg.add(new HGGood(width/2, 120));
  hgb.add(new HGBad(width/2, -5));
}

void draw() {
  //timing mechanisms
  currentTime = millis();
  changeTime = currentTime-oldTime;
  if (changeTime > 2000) {
    oldTime = currentTime;
    hgg.add(new HGGood(random(width), -5));
    hgb.add(new HGBad(random(width), -5));
  }
//setup of stuff
  background(0);
  textSize(30);
  fill(255);
  rect(20, 30, 120, 50);
  rect(width-140, 30, 120, 50);
  fill(0);
  text(score, 70, 65);
//  text("Score", 70, 20);
fill(0);
  text(lives, width-90, 65);
  
  
  for (int i = hgg.size()-1; i >= 0; i--) {
    HGGood h = hgg.get(i);
    h.display();
    h.move();
    if (p1.recognize(h) == true) {
      hgg.remove(i);
      score++;
    }
    if (h.loc.y >= height) {
      hgg.remove(i);
    }
  }
    for (int j = hgb.size()-1; j >= 0; j--) {
      HGBad b = hgb.get(j);
      b.display();
      b.move();
      if (p1.find(b) == true) {
        hgb.remove(j);
        lives--;
      }
      if (b.loc.y >= height) {
        hgb.remove(j);
      }
    }
    p1.display();
    p1.update();
  }


