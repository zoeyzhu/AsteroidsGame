class Bullet extends Floater {
  //private double dRadians;
  //private double myDirectionX;
  //private double myDirectionY;
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getSpeedX();
    myYspeed = theShip.getSpeedY();
    myPointDirection = theShip.getPD();
    //dRadians = myPointDirection*(Math.PI/180);
    //myDirectionX = 5*Math.cos(dRadians) + myDirectionX;
    //myDirectionY = 5*Math.sin(dRadians) + myDirectionY;
    accelerate(4);
  }
  public void show() {
    fill(255, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  
  //public void move ()
  //{      
  //  myCenterX += myXspeed;    
  //  myCenterY += myYspeed;    

  //  //wrap around screen    
  //  if(myCenterX >width)
  //  {     
  //  shots.remove(this);    
  //  }    
  //  else if (myCenterX<0)
  //  {     
  //    shots.remove(this);   
  //  }    
  //  if(myCenterY >height)
  //  {    
  //    shots.remove(this); 
  //  } 
    
  //  else if (myCenterY < 0)
  //  {     
  //    shots.remove(this);    
  //  }   
  //}
  
  public float getX(){
   return(float) myCenterX; 
  }
  
  public float getY(){
   return (float) myCenterY; 
  }
}
