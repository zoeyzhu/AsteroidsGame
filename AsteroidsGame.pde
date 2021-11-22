Spaceship bob = new Spaceship();
Star [] zoey = new Star[200];


public void setup()
{
  size(500, 500);
  background(0);
  for (int i = 0; i< zoey.length; i++) {
    zoey[i] = new Star();
  }
}

public void draw()
{
  background(0);
  for (int i = 0; i<zoey.length; i++) {
    zoey[i].show();
  }
  if(keyPressed){
    if(key =='a'){
     bob.turn(-10);
    }
    if (key =='d'){
     bob.turn(10); 
    }
    if(key == 'w'){
     bob.accelerate(0.2);       
    }
    if(key =='s'){
     bob.hyperspace();
     bob.setSpeed(0);
    }
  
}
bob.move();
bob.show();
}
