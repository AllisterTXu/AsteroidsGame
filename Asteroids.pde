class Asteroids extends Floater
{
  private int rotSpeed;
  Asteroids() {
    xCorners = new int[]{-2, 2};
    yCorners = new int[]{-1, 3};
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myDirectionX = (Math.random()*3)-1;
    myDirectionY = (Math.random()*3)-1;
    myPointDirection = (int)(Math.random()*360);
    rotSpeed = (int)((Math.random()*3)-1);
  }

  public void move() {
    rotate(rotSpeed);
    super.move();
  }
}
