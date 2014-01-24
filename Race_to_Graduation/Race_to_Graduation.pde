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
  HarryPotterGame = false;
  HungerGamesGame = false;
  DivergentGame = false;
  MagnetGame = false;

  HPGameOver = false;
  HGGameOver = false;
  DGameOver = false;
  MGameOver = false;

  MainInstruction = true;
  HGInstruction = false;
  HPInstruction = false;
  DInstruction = false;
  MInstruction = false;

  Mwin = false;

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
  hpg.add(new HPGood(width/2, 120));
  hpb.add(new HPBad(width/2, -5));
  hgg.add(new HGGood(width/2, 120));
  hgb.add(new HGBad(width/2, -5));
  dg.add(new DGood(width/2, 120));
  db.add(new DBad(width/2, -5));
  mg.add(new MGood(width/2, 120));
  mb.add(new MBad(width/2, -5));
}
void draw() {
  //instruction screen

  if (MainInstruction == true) {
    background(128, 128, 255);
    textSize(28);
    text("Instructions:", 15, 75);
    //general game instructions
    text("The object of the game is to catch as many", 10, 110); 
    text("“good” things as possible,", 10, 135); 
    text("while avoiding all of the “bad” things.", 10, 160);  
    text("Use your mouse to move the catcher", 10, 185); 
    text("across the bottom of the screen", 10, 210); 
    text("to catch or dodge the falling objects.", 10, 235); 
    text("You must catch at least 15 “good”", 10, 260); 
    text("objects in order to move to", 10, 285); 
    text("the next level.  If three “bad” things", 10, 310); 
    text("are caught, the game will be over.", 10, 335);  
    text("Your score will be reset at the", 10, 360); 
    text("beginning of each level.", 10, 385);  
    text("“Good” and “Bad” objects will be", 10, 410); 
    text("specified at the beginning of", 10, 435); 
    text("each level.  To win the game,", 10, 460); 
    text("you must beat all four levels.", 10, 485);  
    text("Good Luck!", 10, 510);  
    text("Click to Play", 10, 535);
  } 
  if (mousePressed && MainInstruction == true) {
    MainInstruction = false;
    HGInstruction = true;
    if (HGInstruction = true) {
      background(255, 0, 0);
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
      image(snow, 100, 270);
      image(rose, 150, 270);
      image(tracker, 200, 270);
      image(prim, 100, 450);
      image(pin, 150, 450);
      image(bow, 200, 450);
    }
  }

  if (keyPressed && HGInstruction == true && MainInstruction == false) {
    HGInstruction = false;
    HungerGamesGame = true;
  }


  if (keyPressed && HPInstruction == true && HungerGamesGame == false) {
    HPInstruction = false;
    HarryPotterGame = true;
  }

  if (keyPressed && DInstruction == true && HarryPotterGame == false) {
    DInstruction = false;
    DivergentGame = true;
  } 


  if (keyPressed && MInstruction == true && DivergentGame == false) {
    MInstruction = false;
    MagnetGame = true;
  } 



  //Hunger Games level
  if (HungerGamesGame == true) {  
    //background and score/lives keeper
    background(HGbackground);
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
    //method of changing from Hunger Games level to Harry Potter level
    if (score >= scorelimit) {
      score = 0;
      HungerGamesGame = false;
      HPInstruction = true;
      if (HPInstruction == true) {
        background(0, 0, 255);

        //the harry potter instructions
        if (HPInstruction = true) {
          text("LEVEL 2: Harry Potter", 100, 100);
          textSize(20);
          text("Harry is the catcher", 100, 130);
          text("AVOID:", 100, 170);
          text("Professor Umbridge", 100, 190);
          text("Lord Voldemort", 100, 210);
          text("Bludger", 100, 230);
          text("Dark Mark", 100, 250);
          text("CATCH:", 100, 350);
          text("Golden Snitch", 100, 370);
          text("Felix Felicis", 100, 390);
          text("The Deathly Hallows Symbol", 100, 410);
          image(umbridge, 100, 280);
          image(voldemort, 150, 280);
          image(bludger, 200, 280);
          image(mark, 250, 280);
          image(snitch, 100, 450);
          image(felix, 150, 450);
          image(hallows, 200, 450);
        }
      }
    }
  }
  if (lives <= -1 && HungerGamesGame == true) {
    HGGameOver = true;
    HungerGamesGame = false;
    if (HGGameOver = true) {
      imageMode(CORNER);
      image(HGover, 0, 0, width, height); 
      textAlign(CENTER);
      text("You have lost the Hunger Games.", width/2, height/2);
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
    if (score >= scorelimit) {
      score = 0;
      HarryPotterGame = false;
      DInstruction = true;
      if (DInstruction = true) {
        background(93, 31, 240);
        //the divergent instructions
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
        image(jeanine, 100, 280);
        image(crow, 150, 280);
        image(syringe, 200, 280);
        image(four, 100, 450);
        image(cake, 150, 450);
      }
    }
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

    if (lives <= -1 && DivergentGame == true) {
      DGameOver = true;
      DivergentGame = false;
      if (DGameOver = true) {
        imageMode(CORNER);
        image(Dover, 0, 0, width, height); 
        textAlign(CENTER);
        text("The city has been lost to Jeanine.", width/2, height/2);
      }
    }
    if (score >= scorelimit) {
      score = 0;
      MInstruction = true;
      DivergentGame = false;
      if (MInstruction = true) {    
        background(133,187,252);
        // the magnet instructions
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
        image(sansy, 100, 280);
        image(printer, 150, 280);
        image(gradeb, 200, 280);
        image(gradec, 250, 280);
        image(graded, 300, 280);
        image(gradef, 350, 280);
        image(cap, 100, 450);
        image(gradea, 150, 450);
      }
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
    //method of changing levels
    if (score >= scorelimit) {
      MagnetGame = false;
      Mwin = true;
      if (Mwin == true) {
        imageMode(CORNER);
        image(winner, 0, 0, width, height);
        textAlign(CENTER);
        fill(0);
        text("CONGRATULATIONS, you graduated magnum cum laude!", width/2, 100);
      }
    }
    if (lives <= -1 && MagnetGame == true) {
      MGameOver = true;
      MagnetGame = false;
      if (MGameOver = true) {
        imageMode(CORNER);
        background(Mover);
        textAlign(CENTER);
        text("Sorry, you didn't make it to graduation.", width/2, height/2);
      }
    }
  }
}

