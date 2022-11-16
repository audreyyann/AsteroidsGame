class Star{
  private int myColor, mySize;
  double myX, myY;
  public Star() {
    myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    mySize = (int)(Math.random()*5);
  }
  public void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, mySize, mySize);
  }
}
