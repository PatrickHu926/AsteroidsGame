class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myXspeed = theShip.getXSpeed();
    myYspeed = theShip.getYSpeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(3);
  }
public void move ()   
  {             
    myCenterX += myXspeed;    
    myCenterY += myYspeed;        
  }   
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
