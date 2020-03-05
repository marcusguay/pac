class pacman {



  int spriteNum;
  int THRESHOLD;
  int count;
   

  pacman() {
  }

  void act() {

    
    
    
    count++;
    if (count==THRESHOLD)
    {
      count=0;
      spriteNum++;
    }

   // if (spriteNum >= currentAction.size()) {
      spriteNum=0;
  }
}
