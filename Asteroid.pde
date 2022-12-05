class Asteroid extends Floater{
  private double speedOfRotation;
  public Asteroid() {
    speedOfRotation = Math.random()*4-4;
    corners = 7;
    xCorners = new int[]{9, 4, -6, -8, -4, 2, 6};
    yCorners = new int[]{-3, -7, -2, 1, 5, 6, 4};
    myColor = color(180, 194, 180);
    myCenterX = Math.random()*700;
    myCenterY = Math.random()*700;
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
    myPointDirection = Math.random()*360;
  }
  public void move() {
    turn(speedOfRotation);
    super.move();
  }
  public double getCenterX() {
    return myCenterX;
  }
  public double getCenterY() {
    return myCenterY;
  }
}
