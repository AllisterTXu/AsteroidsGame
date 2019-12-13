class Bullets extends Floater
{
  public Bullets()
  {
    myCenterX = kestrel.getX();
    myCenterY = kestrel.getY();
    myPointDirection = kestrel.getPointDirection();
    myDirectionX = kestrel.getDirectionX()*1.1;
    myDirectionY = kestrel.getDirectionY()*1.1;
    
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
