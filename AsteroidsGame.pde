//your variable declarations here
Star[] starryNight = new Star[400];
Spaceship bob;
public void setup() 
{
  size(400, 400);
  bob = new Spaceship();
  for(int i = 0; i < starryNight.length; i++){
    starryNight[i] = new Star();
  }
}
public void draw()
{
  background(0); 
  bob.move();
  bob.show();
  for(int i = 0; i < starryNight.length; i++){
    starryNight[i].show();
  }
}

public void keyPressed() {
  if(key == 'w'){
    bob.accelerate(2);
  }
  if(key == 'a'){
    bob.turn(-10);
  }
  if(key == 'd'){
    bob.turn(10);
  }
  if(key == ' '){
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX((int)(Math.random()*400));
    bob.setCenterY((int)(Math.random()*400)); 
    bob.setPointDirection(0);
  }
}
