//This is the code for the game

//game booleans
boolean HarryPotterGame;
boolean HungerGamesGame;
boolean DivergentGame;
boolean MagnetGame;

//instructions
boolean MainInstruction;
boolean HPInstruction;
boolean HGInstruction;
boolean DInstruction;
boolean MInstruction;

//game over booleans
boolean HPGameOver;
boolean HGGameOver;
boolean DGameOver;
boolean MGameOver;
boolean Mwin;

//game over pictures
PImage HGover;
PImage HPover;
PImage Dover;
PImage Mover;
PImage winner;

//background
PImage HGbackground;
PImage HPbackground;
PImage Dbackground;
PImage Mbackground;

//Images for Instructions
PImage snow;
PImage rose;
PImage tracker;
PImage prim;
PImage bow;
PImage pin;

PImage umbridge;
PImage voldemort;
PImage mark;
PImage bludger;
PImage snitch;
PImage felix;
PImage hallows;

PImage jeanine;
PImage crow;
PImage syringe;
PImage four;
PImage cake;

PImage sansy;
PImage printer;
PImage gradeb;
PImage gradec;
PImage graded;
PImage gradef;
PImage cap;
PImage gradea;


//initializing classes
Player p1;
//Harry Potter
ArrayList<HPGood> hpg = new ArrayList<HPGood>();
ArrayList<HPBad> hpb = new ArrayList<HPBad>();
//Hunger Games
ArrayList<HGGood> hgg = new ArrayList<HGGood>();
ArrayList<HGBad> hgb = new ArrayList<HGBad>();
//Divergent
ArrayList<DGood> dg = new ArrayList<DGood>();
ArrayList<DBad> db = new ArrayList<DBad>();
//Magnet
ArrayList<MGood> mg = new ArrayList<MGood>();
ArrayList<MBad> mb = new ArrayList<MBad>();

//timing mechanisms
int currentTime = 0;
int changeTime = 0;
int oldTime = 0;
//other variables that are needed
int score = 0;
int lives = 3;
int scorelimit = 2;

//these are the things that we want to happen only once at the start of the game
void setup() {
  imageMode(CENTER);
  //creating initial values of booleans 
  //levels
  HarryPotterGame = false;
  HungerGamesGame = false;
  DivergentGame = false;
  MagnetGame = false;
  //game over screens
  HPGameOver = false;
  HGGameOver = false;
  DGameOver = false;
  MGameOver = false;
  //instruction screens
  MainInstruction = true;
  HGInstruction = false;
  HPInstruction = false;
  DInstruction = false;
  MInstruction = false;
  //win screen
  Mwin = false;
  
  //size of viewing window
  size(600, 600);
  //pictures
  HGover = loadImage("hggameover.png");
  HPover = loadImage("hpgameover.png");
  Dover = loadImage("dgameover.png");
  Mover = loadImage("mggameover2.png");
  
  HGbackground = loadImage("hgbackground.png");
  HPbackground = loadImage("hpbackground.png");
  Dbackground = loadImage("dbackground2.png");
  Mbackground = loadImage("mbackground2.png");
  
  winner = loadImage("graduation.png");
  snow = loadImage("hgb1.png");
  rose = loadImage("hgb3.png");
  tracker = loadImage("hgb2.png");
  prim = loadImage("hgg2.png");
  pin = loadImage("hgg3.png");
  bow = loadImage("hgg1.png");
  umbridge = loadImage("hpb3.png");
  voldemort = loadImage("hpb4.png");
  bludger = loadImage("hpb1.png");
  mark = loadImage("hpb2.png");
  snitch = loadImage("hpg3.png");
  felix = loadImage("hpg2.png");
  hallows = loadImage("hpg1.png");
  jeanine = loadImage("db2.png");
  crow=loadImage("db1.png");
  syringe = loadImage("db3.png");
  four = loadImage("dg1.png");
  cake = loadImage("dg2.png");
  sansy = loadImage("mb6.png");
  printer = loadImage("mb5.png");
  gradeb = loadImage("mb1.png");
  gradec = loadImage("mb2.png");
  graded = loadImage("mb3.png");
  gradef = loadImage("mb4.png");
  cap = loadImage("mg1.png");
  gradea = loadImage("mg2.png");

  //adding objects that are part of a class
  p1 = new Player(); 
}
void draw() {
  //general instruction screen
  if (MainInstruction == true) {
    background(128, 128, 255);
    textSize(28);
    textAlign(CENTER);
    text("Instructions:", width/2-10, 75);
    //general game instructions
    text("The object of the game is to catch as many", width/2, 110); 
    text("“good” things as possible,", width/2, 135); 
    text("while avoiding all of the “bad” things.", width/2, 160);  
    text("Use your mouse to move the catcher", width/2, 185); 
    text("across the bottom of the screen", width/2, 210); 
    text("to catch or dodge the falling objects.", width/2, 235); 
    text("You must catch at least 15 “good”", width/2, 260); 
    text("objects in order to move to", width/2, 285); 
    text("the next level.  If three “bad” things", width/2, 310); 
    text("are caught, the game will be over.", width/2, 335);  
    text("Your score will be reset at the", width/2, 360); 
    text("beginning of each level.", width/2, 385);  
    text("“Good” and “Bad” objects will be", width/2, 410); 
    text("specified at the beginning of", width/2, 435); 
    text("each level.  To win the game,", width/2, 460); 
    text("you must beat all four levels.", width/2, 485);  
    text("Good Luck!", width/2, 510);  
    text("Click to Play", width/2, 535);
  } 

  //this will allow you to get to the hg start the game
  if (mousePressed && MainInstruction == true) {
    MainInstruction = false;
    HGInstruction = true;
    
    if (HGInstruction = true) {
      background(0);
      textAlign(CORNER);
      fill(242,108,29);
      text("LEVEL 1: Hunger Games", 100, 100);
      textSize(20);
      text("Katniss is the catcher", 100, 130);
      text("AVOID:", 100, 170);
      text("President Snow", 100, 190);
      text("Roses", 100, 210);
      text("Tracker Jackers", 100, 230);
      text("CATCH:", 100, 350);
      text("Prim", 100, 370);
      text("Mockingjay Pin", 100, 390);
      text("Bow and Arrow", 100, 410);
      image(snow, 100, 270, 50,50);
      image(rose, 200, 270,50,50);
      image(tracker, 300, 270,50,50);
      image(prim, 100, 450,50,50);
      image(pin, 200, 450,50,50);
      image(bow, 300, 450,50,50);
      textAlign(CENTER);
      text("PRESS ANY KEY TO BEGIN", width/2, 575);
    }
  }

  //Hunger Games level
  if (HungerGamesGame == true) {  
    //background and score/lives keeper
    background(HGbackground);
    textAlign(CORNER);
    textSize(30);
    fill(255);
    rect(20, 30, 120, 50);
    rect(width-140, 30, 120, 50);
    fill(0);
    text(score, 70, 65);
    text(lives, width-90, 65);
    fill(255, 0, 0);
    textSize(20);
    text("Score", 60, 20);
    text("Lives", width-100, 20);

    //timing mechanisms
    currentTime = millis();
    changeTime = currentTime-oldTime;
    if (changeTime > 2000) {
      oldTime = currentTime;
      hgg.add(new HGGood(random(width), -5));
      hgb.add(new HGBad(random(width), -5));
    }
    //method of displaying and dropping obejcts
    for (int i = hgg.size()-1; i >= 0; i--) {
      //good objects
      HGGood h = hgg.get(i);
      h.display();
      h.move();
      if (p1.findhgg(h) == true) {
        hgg.remove(i);
        score++;
      }
      if (h.loc.y >= height) {
        hgg.remove(i);
      }
    }
    for (int j = hgb.size()-1; j >= 0; j--) {
      //bad objects
      HGBad b = hgb.get(j);
      b.display();
      b.move();
      if (p1.findhgb(b) == true) {
        hgb.remove(j);
        lives--;
      }
      if (b.loc.y >= height) {
        hgb.remove(j);
      }
    }
    //display the player
    p1.display();
    p1.update();
    //method of changing from Hunger Games level to Harry Potter instructions
    if (score >= scorelimit) {
      score = 0;
      HungerGamesGame = false;
      HPInstruction = true;
      if (HPInstruction == true) {
          background(134,21,1);
          fill(245,141,5);
          text("LEVEL 2: Harry Potter", 100, 80);
          textSize(20);
          text("Harry is the catcher", 100, 110);
          text("AVOID:", 100, 160);
          text("Professor Umbridge", 100, 180);
          text("Lord Voldemort", 100, 200);
          text("Bludger", 100, 220);
          text("Dark Mark", 100, 240);
          text("CATCH:", 100, 370);
          text("Golden Snitch", 100, 390);
          text("Felix Felicis", 100, 410);
          text("The Deathly Hallows Symbol", 100, 430);
          image(umbridge, 100, 280,50,50);
          image(voldemort, 200, 280,50,50);
          image(bludger, 300, 280,50,50);
          image(mark, 400, 280,50,50);
          image(snitch, 100, 500,65,65);
          image(felix,200, 500,50,50);
          image(hallows, 300, 500,50,50);
          textAlign(CENTER);
          text("PRESS ANY KEY TO BEGIN", width/2, 575);
        }
      }
    }
  
  //lose screen for Hunger Games level
  if (lives <= -1 && HungerGamesGame == true) {
    HGGameOver = true;
    HungerGamesGame = false;
    if (HGGameOver = true) {
      imageMode(CORNER);
      image(HGover, 0, 0, width, height); 
      textAlign(CENTER);
      textSize(35);
      fill(0);
      text("You have lost the Hunger Games", width/2, 575);
    }
  }


  //Harry Potter level
  if (HarryPotterGame == true) {  
    //background and score/lives keeper
    background(HPbackground);
    textSize(30);
    fill(255);
    rect(20, 30, 120, 50);
    rect(width-140, 30, 120, 50);
    fill(0);
    text(score, 70, 65);
    text(lives, width-90, 65);
    fill(255, 0, 0);
    textSize(20);
    text("Score", 60, 20);
    text("Lives", width-100, 20);

    //timing mechanisms
    currentTime = millis();
    changeTime = currentTime-oldTime;
    if (changeTime > 2000) {
      oldTime = currentTime;
      hpg.add(new HPGood(random(width), -5));
      hpb.add(new HPBad(random(width), -5));
    }
    //method of displaying and dropping objects
    for (int i = hpg.size()-1; i >= 0; i--) {
      //good class
      HPGood h = hpg.get(i);
      h.display();
      h.move();
      if (p1.findhpg(h) == true) {
        hpg.remove(i);
        score++;
      }
      if (h.loc.y >= height) {
        hpg.remove(i);
      }
    }
    for (int j = hpb.size()-1; j >= 0; j--) {
      //bad class
      HPBad b = hpb.get(j);
      b.display();
      b.move();
      if (p1.findhpb(b) == true) {
        hpb.remove(j);
        lives--;
      }
      if (b.loc.y >= height) {
        hpb.remove(j);
      }
    }
    //display the player
    p1.display();
    p1.update(); 
    //method of changing from Harry Potter level to Divergent instructions
    if (score >= scorelimit) {
      score = 0;
      HarryPotterGame = false;
      DInstruction = true;
      if (DInstruction = true) {
        background(208,213,234);
        //the divergent instructions
        textAlign(CORNER);
        fill(23,65,227);
        text("LEVEL 3: Divergent", 100, 100);
        textSize(20);
        text("Tris is the catcher", 100, 130);
        text("AVOID:", 100, 170);
        text("Jeanine", 100, 190);
        text("Crow", 100, 210);
        text("Syringe", 100, 230);
        text("CATCH:", 100, 350);
        text("Tobias/Four", 100, 370);
        text("Chocolate Cake", 100, 390);
        image(jeanine, 100, 280,50,50);
        image(crow, 200, 280,50,50);
        image(syringe, 300, 280,50,50);
        image(four, 100, 450,50,50);
        image(cake, 200, 450,50,50);
        textAlign(CENTER);
        text("PRESS ANY KEY TO BEGIN", width/2, 575);
      }
    }
  }
      //lose screen for Harry Potter level
      if (lives <= -1 && HarryPotterGame == true) {
      HPGameOver = true;
      HarryPotterGame = false; 
      if (HPGameOver = true) {
        imageMode(CORNER);
        image(HPover, 0, 0, width, height); 
        textAlign(CENTER);
        text("The battle of Hogwarts has been lost.", width/2, height/2);
      }
    }


  //Divergent level
  if (DivergentGame == true) {  
    //background and score/lives keeper
    background(Dbackground);
    textSize(30);
    fill(255);
    rect(20, 30, 120, 50);
    rect(width-140, 30, 120, 50);
    fill(0);
    text(score, 70, 65);
    text(lives, width-90, 65);
    fill(255, 0, 0);
    textSize(20);
    text("Score", 60, 20);
    text("Lives", width-100, 20);

    //timing mechanisms
    currentTime = millis();
    changeTime = currentTime-oldTime;
    if (changeTime > 2000) {
      oldTime = currentTime;
      dg.add(new DGood(random(width), -5));
      db.add(new DBad(random(width), -5));
    }
    //method of displaying and dropping objects
    for (int i = dg.size()-1; i >= 0; i--) {
      //good class
      DGood h = dg.get(i);
      h.display();
      h.move();
      if (p1.finddg(h) == true) {
        dg.remove(i);
        score++;
      }
      if (h.loc.y >= height) {
        dg.remove(i);
      }
    }
    for (int j = db.size()-1; j >= 0; j--) {
      //bad class
      DBad b = db.get(j);
      b.display();
      b.move();
      if (p1.finddb(b) == true) {
        db.remove(j);
        lives--;
      }
      if (b.loc.y >= height) {
        db.remove(j);
      }
    }
    //display the player
    p1.display();
    p1.update(); 
    //method of changing from Divergent level to Magnet instructions
    if (score >= scorelimit) {
      score = 0;
      MInstruction = true;
      DivergentGame = false;
      if (MInstruction = true) {    
        background(124,202,232);
        // the magnet instructions
        textAlign(CORNER);
        fill(9,49,70);
        text("LEVEL 4: MAGNET", 100, 100);
        textSize(20);
        text("We are the catcher", 100, 130);
        text("AVOID:", 100, 170);
        text("A Disappointed Mr. Sanservino", 100, 190);
        text("Printer", 100, 210);
        text("B's, C's, D's, and F's", 100, 230);
        text("CATCH:", 100, 350);
        text("Graduation Cap and Diploma", 100, 370);
        text("A's", 100, 390);
        image(sansy, 100, 280,50,75);
        image(printer, 200, 280,50,50);
        image(gradeb, 300, 280,50,50);
        image(gradec, 375, 280,50,50);
        image(graded, 450, 280,50,50);
        image(gradef, 5250, 280,50,50);
        image(cap, 100, 450,50,50);
        image(gradea, 200, 450,50,50);
        textAlign(CENTER);
        text("PRESS ANY KEY TO BEGIN", width/2, 575);
      }
    }

  }
  //lose screen for Divergent level
      if (lives <= -1 && DivergentGame == true) {
      DGameOver = true;
      DivergentGame = false;
      if (DGameOver = true) {
        imageMode(CORNER);
     image(Dover, 0, 0, width, height); 
     textAlign(CENTER);
     fill(88,75,75);
     text("You have fallen victim to the serum", width/2, height/2); 
     text("and are now controlled by the Erudite", width/2, height/2+25); 
      }
      }
 
  //Magnet level
  if (MagnetGame == true) {  
    //background and score/lives keeper
    background(Mbackground);
    textSize(30);
    fill(255);
    rect(20, 30, 120, 50);
    rect(width-140, 30, 120, 50);
    fill(0);
    text(score, 70, 65);
    text(lives, width-90, 65);
    fill(255, 0, 0);
    textSize(20);
    text("Score", 60, 20);
    text("Lives", width-100, 20);

    //timing mechanisms
    currentTime = millis();
    changeTime = currentTime-oldTime;
    if (changeTime > 2000) {
      oldTime = currentTime;
      mg.add(new MGood(random(width), -5));
      mb.add(new MBad(random(width), -5));
    }
    //method of displaying and dropping obejcts
    for (int i = mg.size()-1; i >= 0; i--) {
      //good objects
      MGood m = mg.get(i);
      m.display();
      m.move();
      if (p1.findmg(m) == true) {
        mg.remove(i);
        score++;
      }
      if (m.loc.y >= height) {
        mg.remove(i);
      }
    }
    for (int j = mb.size()-1; j >= 0; j--) {
      //bad objects
      MBad b = mb.get(j);
      b.display();
      b.move();
      if (p1.findmb(b) == true) {
        mb.remove(j);
        lives--;
      }
      if (b.loc.y >= height) {
        mb.remove(j);
      }
    }
    //display the player
    p1.display();
    p1.update();
    //win screen
    if (score >= scorelimit) {
      MagnetGame = false;
      Mwin = true;
      if (Mwin == true) {
        imageMode(CORNER);
        image(winner, 0, 0, width, height);
        textAlign(CENTER);
        fill(0);
        text("CONGRATULATIONS, you graduated magna cum laude!", width/2, 100);
      }
    }
  }
  //lose screen for Magnel level
    if (lives <= -1 && MagnetGame == true) {
      MGameOver = true;
      MagnetGame = false;
      if (MGameOver = true) {
        imageMode(CORNER);
        background(Mover);
        textAlign(CENTER);
        textSize(35);
        fill(9,49,70);
        text("Welcome to Mr. Sanservino's class", width/2, height/2+225);
      }
    }
 }

void keyPressed() {
  //allows you to start the Hunger Games game
    if (HGInstruction == true && MainInstruction == false) {
    HGInstruction = false;
    HungerGamesGame = true;
  }
  //allows you to start the Harry Potter game
  if (HPInstruction == true && HungerGamesGame == false) {
    HPInstruction = false;
    HarryPotterGame = true;
  }
  //allows you to start the Divergent game
  if (DInstruction == true && HarryPotterGame == false) {
    DInstruction = false;
    DivergentGame = true;
  } 
  //allows you to start the Magnet game
  if (MInstruction == true && DivergentGame == false) {
    MInstruction = false;
    MagnetGame = true;
  } 
}
  
