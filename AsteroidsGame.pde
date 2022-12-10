Star[] starryNight = new Star[400];
Spaceship bob;
ArrayList <Asteroid> roidsList;
ArrayList <Bullet> bulletList;
public void setup() 
{
  size(700, 700);
  roidsList = new ArrayList <Asteroid>();
  bulletList = new ArrayList <Bullet>();
  bob = new Spaceship();
  for(int i = 0; i < starryNight.length; i++){
    starryNight[i] = new Star();
  }
  //create 30 asteroids
  for(int x = 0; x < 30; x++){
    roidsList.add(new Asteroid());
  }
}
public void draw()
{
  background(0); 
  bob.move();
  bob.show();
  //starry background
  for(int i = 0; i < starryNight.length; i++){
    starryNight[i].show();
  }
  //make asteroids appear
  //remove asteroid if collides with spaceship
  for(int x = 0; x < roidsList.size(); x++){
     roidsList.get(x).show();
     roidsList.get(x).move();
     if(dist((float)bob.getCenterX(), (float)bob.getCenterY(), (float)roidsList.get(x).getCenterX(), (float)roidsList.get(x).getCenterY()) < 10) {
       roidsList.remove(x);
    }
  }
  //make bullets appear
  for(int z = 0; z < bulletList.size(); z++){
    bulletList.get(z).show();
    bulletList.get(z).move();
    if((float)bulletList.get(z).getCenterX() > 697 || (float)bulletList.get(z).getCenterX() < 3|| (float)bulletList.get(z).getCenterY() > 697 || (float)bulletList.get(z).getCenterY() < 3){
      bulletList.remove(z);
      z--;
    }
  }
  //checks if any bullet collides with any asteroid
  for(int m = 0; m < bulletList.size(); m++){
    for(int n = 0; n < roidsList.size(); n++){
      if(dist((float)bulletList.get(m).getCenterX(), (float)bulletList.get(m).getCenterY(), (float)roidsList.get(n).getCenterX(), (float)roidsList.get(n).getCenterY()) < 10) {
        bulletList.remove(m);
        roidsList.remove(n);
        break;
      }
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
  if(key == 'q'){
    bulletList.add(new Bullet(bob));
  }
}
