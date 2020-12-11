class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 3;  
    xCorners = new int[corners];   
    yCorners = new int[corners];  
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    myColor = color(255,255,255);   
    myCenterX = myCenterY = 250; 
    myXspeed = myYspeed = 0; 
    myPointDirection = (int)(Math.random()*360); 
    }
   public void hyperspace(){
    myCenterX = myCenterY = (int)(Math.random()*501); 
    myXspeed = myYspeed = 0;
    myPointDirection = (int)(Math.random()*360);
   }
   public double getX(){
     return myCenterX;
   }
   public double getY(){
     return myCenterY;
   }
   public double getPointDirection(){
     return myPointDirection;
   }
}
