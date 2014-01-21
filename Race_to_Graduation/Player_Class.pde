
 class Player {
   //these are the variables needed to create the player class
   PVector loc;
   PImage katniss;
   PImage harrypotter;
   PImage tris;
   PImage fangirls;
   int d;
 
 
   Player() {
     loc = new PVector(mouseX, height-d);
     katniss = loadImage("hgplayer.png");
     d = 50;
   }
 
   void display() {
     fill(255, 0, 0);
     image(katniss, loc.x, loc.y, d ,d+50);
   }
   
   void update () {
     loc.set(mouseX, height-d*2);
   }


  //this boolean will be able to tell when the player intersects with the good things in the hunger games class
  boolean findhgg(HGGood h) {
    if (loc.dist(h.loc) < d/2 + h.d/2 ) {
      return true;
    }
    else {
      return false;
    }
  }
  //this boolean will be able to tell when the player intersects with the bad things in the hunger games class
  boolean findhgb(HGBad b) {
    if (loc.dist(b.loc) < d/2 + b.d/2 ) {
      return true;
    }
    else {
      return false;
    }
  }
  
  
  boolean findhpg(HPGood h) {
    if (loc.dist(h.loc) < d/2 + h.d/2 ) {
      return true;
    }
    else {
      return false;
    }
  }
  
   boolean findhpb(HPBad b) {
    if (loc.dist(b.loc) < d/2 + b.d/2 ) {
      return true;
    }
    else {
      return false;
    }
  }
     boolean finddg(DGood h) {
    if (loc.dist(h.loc) < d/2 + h.d/2 ) {
      return true;
    }
    else {
      return false;
    }
  }
   boolean finddb(DBad b) {
    if (loc.dist(b.loc) < d/2 + b.d/2 ) {
      return true;
    }
    else {
      return false;
    }
  }
//  boolean findmg(MGood h) {
//    if (loc.dist(h.loc) < d/2 + h.d/2 ) {
//      return true;
//    }
//    else {
//      return false;
//    }
//  }
//    boolean findmb(MBad b) {
//    if (loc.dist(b.loc) < d/2 + b.d/2 ) {
//      return true;
//    }
//    else {
//      return false;
//    }
//  }
//  
  
  
}

