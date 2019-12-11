class Asteroids extends Floater
{
  private int rotSpeed;
  Asteroids() {
    corners = 5;
    xCorners = new int[]{-11, (int)(Math.random()*9), (int)(Math.random()*3+2), (int)(Math.random()*4), -11};
    yCorners = new int[]{-8, -10, 0, (int)(Math.random()*9), 0};
    
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myDirectionX = (Math.random()*3)-1;
    myDirectionY = (Math.random()*3)-1;
    myColor = color(100,60,60);
    myPointDirection = (int)(Math.random()*360);
    rotSpeed = (int)((Math.random()*3)-1);
  }

  public void move() {
    rotate(rotSpeed);
    super.move();
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
