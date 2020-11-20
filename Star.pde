class Star 
{
  protected int starX, starY;
  protected int starSize;
  protected int starColor;
  public Star(){
    starX = (int)(Math.random()*501);
    starY = (int)(Math.random()*501);
    starSize = 3;
    starColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),127);
  }
public void show(){
    fill(starColor);
    noStroke();
    ellipse(starX,starY,starSize,starSize);
  }  
}
