class Bullet extends Floater {
  public Bullet(Spaceship aShip) {
    myCenterX = aShip.getCenterX();
    myCenterY = aShip.getCenterY();
    myXspeed = aShip.getXspeed();
    myYspeed = aShip.getYspeed();
    myPointDirection = aShip.getPointDirection();
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 5, 10);
  }
}
