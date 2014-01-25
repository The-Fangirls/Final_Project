
 class Player {
   //these are the variables needed to create the player class
   PVector loc;
   PImage katniss;
   PImage harry;
   PImage tris;
   PImage fangirls;
<<<<<<< HEAD
   int HGwidth;
   int HGheight;
   int HPwidth;
   int HPheight;
   int Dwidth;
   int Dheight;
   int Mwidth;
   int Mheight; 
=======
   int d;
>>>>>>> origin/Harry-Potter-Classes
 
   Player() {
     //defining the varibales, PVectors, and PImages
       //setting location from the bottom to the size of HPheight because that is relatively close to the bottom for every level
         //we also want the player to be the same distance from the bottom for each level
     loc = new PVector(mouseX, height-HPheight/2);
     katniss = loadImage("hgplayer.png");
     harry = loadImage("hpplayer.png");
     tris = loadImage("dplayer.png");
<<<<<<< HEAD
     fangirls = loadImage("mplayer.png");
     HGwidth = 60;
     HGheight = 110;
     HPwidth = 90;
     HPheight = 110;
     Dwidth = 115;
     Dheight = 130;
     Mwidth = 150;
     Mheight = 120;
     
=======
//     fangirls = loadImage("mplayer.png");
     d = 50;
>>>>>>> origin/Harry-Potter-Classes
   }
 
   //this will allow you to show the player
   void display() {
<<<<<<< HEAD
    //use booleans to determine what level you are on and adjust the player accordingly 
     if(HungerGamesGame == true) {
     image(katniss, loc.x, loc.y, HGwidth, HGheight);
     }
     if(HarryPotterGame == true) {
      image(harry, loc.x, loc.y, HPwidth, HPheight);
     }
     if(DivergentGame == true) {
       image(tris, loc.x, loc.y, Dwidth, Dheight);
     }
     if(MagnetGame == true) {
      image(fangirls, loc.x, loc.y, Mwidth, Mheight);    
    }  
=======
     if(HungerGamesGame == true) {
     image(katniss, loc.x, loc.y, d ,d+50);
     }
     if(HarryPotterGame == true) {
      image(harry, loc.x, loc.y, d+30 ,d+50);
     }
     if(DivergentGame == true) {
       image(tris, loc.x, loc.y, d+55 ,d+70);
     }
//     if(MagnetGame == true) {
//       image(fangirls, loc.x, loc.y, d ,d+50);
//     }
>>>>>>> origin/Harry-Potter-Classes
   }
   
   
   //this will allow the player to move with your mouse movement
   void update () {
     loc.set(mouseX, height-HPheight/2);
   }


  //this boolean will be able to tell when the player intersects with the good things in the hunger games class
  boolean findhgg(HGGood h) {
    if (loc.dist(h.loc) < HGwidth/2 + h.d/2 && loc.dist(h.loc) < HGheight/2 + h.d/2) {
      return true;
    }
    else {
      return false;
    }
  }
  //this boolean will be able to tell when the player intersects with the bad things in the hunger games class
  boolean findhgb(HGBad b) {
    if (loc.dist(b.loc) < HGwidth/2 + b.d/2 && loc.dist(b.loc) < HGheight/2 + b.d/2 ) {
      return true;
    }
    else {
      return false;
    }
  }
  //this boolean will be able to tell when the player intersects with the good things in the harry potter class
  boolean findhpg(HPGood h) {
    if (loc.dist(h.loc) < HPwidth/2 + h.d/2 && loc.dist(h.loc) < HPheight/2 + h.d/2) {
      return true;
    }
    else {
      return false;
    }
  }
  //this boolean will be able to tell when the player intersects with the bad things in the harry potter class
   boolean findhpb(HPBad b) {
    if (loc.dist(b.loc) < HPwidth/2 + b.d/2 && loc.dist(b.loc) < HPheight/2 + b.d/2) {
      return true;
    }
    else {
      return false;
    }
  }
  //this boolean will be able to tell when the player intersects with the good things in the divergent class
     boolean finddg(DGood h) {
    if (loc.dist(h.loc) < Dwidth/2 + h.d/2 && loc.dist(h.loc) < Dheight/2 + h.d/2) {
      return true;
    }
    else {
      return false;
    }
  }
  //this boolean will be able to tell when the player intersects with the bad things in the divergent class
   boolean finddb(DBad b) {
    if (loc.dist(b.loc) < Dwidth/2 + b.d/2 && loc.dist(b.loc) < Dheight/2 + b.d/2) {
      return true;
    }
    else {
      return false;
    }
  }
  //because magnet catcher graphic is so much bigger, it must catch based on 1/4 of its height
  //this boolean will be able to tell when the player intersects with the good things in the magnet class
  boolean findmg(MGood h) {
    if (loc.dist(h.loc) < Mwidth/2 + h.d/2 && loc.dist(h.loc) < Mheight/4 + h.d/2) {
      return true;
    }
    else {
      return false;
    }
  }
  //this boolean will be able to tell when the player intersects with the bad things in the magnet class
    boolean findmb(MBad b) {
    if (loc.dist(b.loc) < Mwidth/2 + b.d/2 && loc.dist(b.loc) < Mheight/4 + b.d/2 ) {
      return true;
    }
    else {
      return false;
   }
  }
 }
