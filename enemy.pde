class enemy extends FCircle{
  
  int ex,ey;
  float velocityx, velocityy;
  
  enemy(int x ,int y){
    super(35);
    ex=x;
    ey=y;
    
    this.setPosition(ex,ey);
    
    
    
     world.add(this);
    
  }
  
  
  
  
  void act(){
    this.setVelocity(velocityx,velocityy);
    
  
    }
    
   
    
    
  }
  
  
  
  
  
  
  
  
  
}
