public class Spaceship extends Floater  
{   
  protected int degrees;
  public Spaceship(){
    corners = 4;
    xCorners = new int[]{-8,16,4,-8};
    yCorners = new int[]{-8,0,0,8};
    myColor = color(25,25,25);
    myCenterX = 250;
    myCenterY = 250;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
    degrees = 0;
  }
  
  public void show(){
    beginShape();
    fill(255);
  }
  public void turn(){
    myPointDirection+=degrees;
    if(myPointDirection == 360 || myPointDirection == -360){
      myPointDirection =0;
    }
  }
  public void accelerate(){
    myDirectionX += Math.cos(myPointDirection*Math.PI/180);
    myDirectionY += Math.sin(myPointDirection*Math.PI/180);
  }
  public void move(){
    turn();
    accelerate();
  }
  
  public void setX(int x) {myCenterX = x;}    
  public int getX() {return (int)myCenterX;}   
  public void setY(int y) {myCenterY = y;}    
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX = x;}
  public double getDirectionX() {return myDirectionX;}
  public void setDirectionY(double y) {myDirectionY = y;}
  public double getDirectionY() {return myDirectionY;}
  public void setPointDirection(int degrees) {myPointDirection = degrees;}
  public double getPointDirection() {return myPointDirection;}
}
