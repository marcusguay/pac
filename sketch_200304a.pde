import fisica.*;
FCircle player1;
ArrayList<path> wall;
PImage map;
int vy,vx;
int path;
int keys;
int p1direction;
int x,y;
int size=40;
FWorld world;
color white=#ffffff;
color black=#000000;
boolean wkey, akey, skey, dkey, qkey, ekey;
boolean ukey, rkey, lkey, dnkey, uukey, okey;
ArrayList<blocks> blocks;
ArrayList<PImage> PacMovement;
ArrayList<enemy> enemy; 

void setup(){
  size(950,800);
  Fisica.init(this);
  
  world = new FWorld(0, 0, 10000, 10000);
    map=loadImage("map.png");
    wall=new ArrayList<path>();
    PacMovement= new ArrayList<PImage>();
     PacMovement.add(loadImage("pac1.png"));
     PacMovement.add(loadImage("pac2.png"));
     PacMovement.add(loadImage("pac3.png"));
  enemy =new ArrayList<enemy>();
  blocks=new ArrayList<blocks>();
  
  world.setGravity(0, 0);
  enemy.add(new enemy(360,320));
    player1= new FCircle(size);
  player1.setFill(#FF1717);
  player1.setPosition(100, 50);
  player1.setDensity(100);
 
  world.add(player1);

  
  
   while (y < map.height) {



    color c = map.get(x, y);


    if ( c == black) {
      
      blocks.add(new blocks(x,y));
     
    }
     
     if ( c == white) {
      
     wall.add(new path(x,y));
     
     
     
    }

   



    x++;

    if (x== map.width) {
      x=0;
      y++;
    }
  }
  
  
}




void draw(){
    background(255);
    world.step();
  world.draw();
println(player1.getX(),player1.getY());
 
 vx=0;
 vy=0;
keys=0;
 
 
int b=0;
  while(b < enemy.size()) {
    enemy e =enemy.get(b);
    
    e.act();
   
     
      
 
    b++;
  }
  
  

  if (akey&& keys ==0) { 
      vx=-500; 
      p1direction=3;
      keys++;
    }
    if (dkey && keys ==0) { 
      vx=500; 
      p1direction=2;
      keys++;
    }

    if (wkey && keys==0) { 
      vy=-500; 
      p1direction=1;
      keys++;
    }


    if (skey &&keys ==0) { 
      vy=500; 
      keys++;
      p1direction=3;
    }
    player1.setVelocity(vx, vy);
}

public void keyPressed() {
  if (key=='a'|| key=='A') akey = true;
  if (key=='d'|| key=='D') dkey = true;
  if (key=='s'|| key=='S') skey = true;
  if (key=='w'|| key=='W') wkey = true;
  if (key=='q'|| key=='Q') qkey = true;
  if (key=='e'|| key=='E') ekey = true;

  if (key=='j'|| key=='J') lkey = true;
  if (key=='l'|| key=='L') rkey = true;
  if (key=='k'|| key=='k') dnkey = true;
  if (key=='i'|| key=='I') ukey = true;
  if (key=='u'|| key=='U') uukey = true;
  if (key=='o'|| key=='O') okey = true;
}


public void keyReleased() {
  if (key=='a'|| key=='A') akey = false;
  if (key=='d'|| key=='D') dkey = false;
  if (key=='s'|| key=='S') skey = false;
  if (key=='w'|| key=='W') wkey = false;  
  if (key=='q'|| key=='Q') qkey = false;
  if (key=='e'|| key=='E') ekey = false;

  if (key=='j'|| key=='J') lkey = false;
  if (key=='l'|| key=='L') rkey = false;
  if (key=='k'|| key=='k') dnkey = false;
  if (key=='i'|| key=='I') ukey = false;
  if (key=='u'|| key=='U') uukey = false;
  if (key=='o'|| key=='O') okey = false;
}
