Spaceship Pat = new Spaceship();
Star[] stars = new Star[200];
public void setup() 
{
  size(500,500);
  for(int i = 0; i<stars.length; i++){
    stars[i] = new Star();
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
}
