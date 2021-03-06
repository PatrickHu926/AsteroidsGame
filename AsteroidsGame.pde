Spaceship Pat = new Spaceship();
Star[] stars = new Star[200];
ArrayList <Bullet> shots = new ArrayList<Bullet>();
ArrayList <Asteroid> asteroid = new ArrayList<Asteroid>();
public void setup() 
{
  size(500,500);
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
  }
  for(int i = 0; i<10; i++){
    asteroid.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for(int i = 0; i<stars.length; i++){
    stars[i].show();
  }
  Pat.show();
  Pat.move();
  for(int i = 0; i<shots.size(); i++){
    shots.get(i).move();
    shots.get(i).show();
    for(int j = 0; j < asteroid.size(); j++){
      if(dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)asteroid.get(j).getX(), (float)asteroid.get(j).getY())<25){
          asteroid.remove(j);
          shots.remove(i);
          asteroid.add(new Asteroid());
          break;
        }
    }
  }
  for(int i = 0; i<asteroid.size(); i++){
    asteroid.get(i).show();
    asteroid.get(i).move();
    float a = dist((float)Pat.getX(), (float)Pat.getY(), (float)asteroid.get(i).getX(),  (float)asteroid.get(i).getY());
    if(a<20){
      asteroid.remove(i);
      asteroid.add(new Asteroid());
      break;
    }
  }
}
public void keyPressed()
{
  if(key == 'a')
    Pat.turn(-5);
  else if(key == 'd')
    Pat.turn(5);
  else if(key == 'w')
    Pat.accelerate(0.3);
  else if(key == 'h')
    Pat.hyperspace();
  else if(key == ' ')
    shots.add(new Bullet(Pat));
}
