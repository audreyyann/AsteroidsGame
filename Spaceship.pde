class Spaceship extends Floater{   
   public Spaceship(){
     corners = 14;
     xCorners = new int[]{-12, -7, 7, 9, 13, 10, -15, -13, -14, -14, -13, -13, -12, -13};
     yCorners = new int[]{-10, -5, -5, -2, 0, 2, 2, -1, -2, -5, -4, 5, -5, -6};
     myColor = color(255, 255, 255);
     myCenterX = myCenterY = 200;
     myXspeed = myYspeed = 0;
     myPointDirection = 0;
   }
   public void setXspeed(int x) {
     myXspeed = x;
   }
   public void setYspeed(int x) {
     myYspeed = x;
   }
   public void setCenterX(int x) {
     myCenterX = x;
   }
   public void setCenterY(int x) {
     myCenterY = x;
   }
   public void setPointDirection(int x) {
     myPointDirection = x;
   }
}
