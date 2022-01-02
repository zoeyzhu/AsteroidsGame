Spaceship bob = new Spaceship();
Star [] zoey = new Star[200];
ArrayList <Asteroid> bigRock = new ArrayList <Asteroid>();
ArrayList <Bullet> shots = new ArrayList<Bullet>();

public void setup()
{
  size(500, 500);
  background(0); 
  for (int i = 0; i< zoey.length; i++) {
    zoey[i] = new Star();
  }
  for(int i = 0; i<10; i++){
   bigRock.add(new Asteroid()); 
  }
}

public void draw()
{
  background(0);
  for (int i = 0; i<zoey.length; i++) {
    zoey[i].show();
  }
  
  for (int i = 0; i< bigRock.size(); i++){
    bigRock.get(i).move();
    bigRock.get(i).show();
    float d = dist((float) bob.getX(), (float)bob.getY(), (float)bigRock.get(i).getX(),(float)bigRock.get(i).getY());  
  }
  for (int i =0; i<shots.size(); i++){
   shots.get(i).move();
   shots.get(i).show();  
   
  }
  


  if (keyPressed) {
    if (key =='a') {
      bob.turn(-10);
    }
    if (key =='d') {
      bob.turn(10);
    }
    if (key == 'w') {
      bob.accelerate(0.2);
    }
    if (key =='s') {
      bob.hyperspace();
      bob.setSpeed(0);
    }
    if(key ==' '){
       shots.add(new Bullet(bob));
    }
  }
  bob.move();
  bob.show();
}
