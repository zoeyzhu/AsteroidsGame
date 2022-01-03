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
  

  
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myXspeed and myYspeed       
    myCenterX += myXspeed;    
    myCenterY += myYspeed;     

    //wrap around screen    
 
  }  
  public float getX(){
   return(float) myCenterX; 
  }
  
  public float getY(){
   return (float) myCenterY; 
  }
}
