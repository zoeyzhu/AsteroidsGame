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
  for (int i = 0; i<10; i++) {
    bigRock.add(new Asteroid());
  }
}

public void draw()
{
  background(0);
  for (int i = 0; i<zoey.length; i++) {
    zoey[i].show();
  }

  for (int i = 0; i< bigRock.size(); i++) {
    bigRock.get(i).move();
    bigRock.get(i).show();
    float d = dist((float) bob.getX(), (float)bob.getY(), (float)bigRock.get(i).getX(), (float)bigRock.get(i).getY());
    if (d<15) {
      bigRock.remove(i);
      break;
    }
    for (int j = 0; j < shots.size(); j++) {
      if (dist((float)bigRock.get(i).getX(), (float)bigRock.get(i).getY(), (float)shots.get(j).getX(), (float)shots.get(j).getY()) < 15) {
        bigRock.remove(i);
        shots.remove(j);
        break;
      }
    }
  }

  for (int i =0; i<shots.size(); i++) {
    shots.get(i).move();
    shots.get(i).show();
  }

  if (bigRock.size() ==2) {
    for (int i = 0; i<4; i++) {
      bigRock.add(new Asteroid());
    }
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
    if (key ==' ') {
      shots.add(new Bullet(bob));
    }
  }

  bob.move();
  bob.show();
}
