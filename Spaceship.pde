class Spaceship extends Floater{   
   public Spaceship(){
     corners = 14;
     xCorners = new int[]{-24, -14, 14, 18, 26, 20, -30, -26, -28, -28, -26, -26, -24, -26};
     yCorners = new int[]{-20, -10, -5, -2, 0, 2, 2, -1, -2, -5, -4, 5, -5, -6};
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
