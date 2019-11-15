public class Star 
{
  private int starX, starY;
  private float  starSize, starLight;
  Star(){
    starX = (int)(Math.random()*500);
    starY = (int)(Math.random()*500);
    starSize = (float)(Math.random()*5);
    starLight = (float)(Math.random()*50+100);
  }
  public void show(){
    fill(200, starLight);
    ellipse(starX,starY,starSize,starSize);
  }
}
