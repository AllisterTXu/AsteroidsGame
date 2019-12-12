public class Flames extends Spaceship
{
  Flames()
  {
    corners = 3;
    xCorners = new int[]{-10, -14, -10};
    yCorners = new int[]{-5, 0, 5};
    myColor = color(255, 255, 255);
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    degrees = 0;
    myColor = color(255, 55, 55);
  }
  public void setX(int x) {
    myCenterX = x;
  }    
  public int getX() {
    return (int)myCenterX;
  }   
  public void setY(int y) {
    myCenterY = y;
  }    
  public int getY() {
    return (int)myCenterY;
  }
  public void setDirectionX(double x) {
    myDirectionX = x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }
  public void setDirectionY(double y) {
    myDirectionY = y;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
}
