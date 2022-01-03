class Spaceship extends Floater
{
  public Spaceship() {
    corners = 6;
    xCorners = new int [] {-8, 12, 16, 12, -8, -2};
    yCorners = new int [] {-8, -8, 0, 8, 8, 0};
    myColor = color(230, 230, 250);
    myCenterX = 250;
    myCenterY = 250;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }

  public void setSpeed(double x) {
    myXspeed = x;
    myYspeed = x;
  }



  public void hyperspace() {
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (Math.random()*361);
  }

  public double getX() {
    return myCenterX;
  }
  public double getY() {
    return myCenterY;
  }
  public double getPD() {
    return myPointDirection;
  }
  public double getSpeedX() {
    return myXspeed;
  }
  public double getSpeedY() {
    return myYspeed;
  }
}
