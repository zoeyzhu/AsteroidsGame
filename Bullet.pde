class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getSpeedX();
    myYspeed = theShip.getSpeedY();
    myPointDirection = theShip.getPD();
    accelerate(.6);
  }
  public void show() {
    fill(255, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
}

