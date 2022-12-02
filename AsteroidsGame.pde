//your variable declarations here
Star[] starryNight = new Star[400];
Spaceship bob;
ArrayList <Asteroid> roidsList;
public void setup() 
{
  size(700, 700);
  roidsList = new ArrayList <Asteroid>();
  bob = new Spaceship();
  for(int i = 0; i < starryNight.length; i++){
    starryNight[i] = new Star();
  }
  for(int x = 0; x < 30; x++){
    roidsList.add(new Asteroid());
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
  for(int x = 0; x < roidsList.size(); x++){
     roidsList.get(x).show();
     roidsList.get(x).move();
  }
  for(int y = 0; y < roidsList.size(); y++) {
    if(dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)roidsList.get(y).getCenterX(), (float)roidsList.get(y).getCenterY()) < 10) {
     roidsList.remove(y);
    }
  }
}

public void keyPressed() {
  if(key == 'w'){
    bob.accelerate(1.5);
  }
  if(key == 'a'){
    bob.turn(-10);
  }
  if(key == 'd'){
    bob.turn(10);
  }
  if(key == 'h'){
    bob.setXspeed(0);
    bob.setYspeed(0);
    bob.setCenterX((int)(Math.random()*700));
    bob.setCenterY((int)(Math.random()*700)); 
    bob.setPointDirection((int)(Math.random()*700));
  }
}
