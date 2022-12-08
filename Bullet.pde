class Bullet extends Floater {
  public Bullet(Spaceship aShip) {
    myCenterX = aShip.getCenterX();
    myCenterY = aShip.getCenterY();
    myXspeed = aShip.getXspeed();
    myYspeed = aShip.getYspeed();
    myPointDirection = aShip.getPointDirection();
    accelerate(6);
    myColor = color(252, 239, 93);
  }
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}
