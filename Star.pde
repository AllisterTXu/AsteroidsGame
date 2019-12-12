public class Star 
{
  protected float starX, starY, starSize, starLight, starXVel, starYVel;
  Star() {
    starX = (float)(Math.random()*500);
    starY = (float)(Math.random()*500);
    starSize = (float)(Math.random()*5);
    starLight = (float)(starSize*(Math.random()*50));
    starXVel = (float)((2)/starSize);
    starYVel = (float)((2)/starSize);
  }
  public void show() {
    fill(200, starLight);
    ellipse(starX, starY, starSize, starSize);
  }
  public void move() {
    starX += starXVel*0.1;
    starY += starYVel*0.1;
    if (starX >width)
    {     
      starX = 0;
    } else if (starX<0)
    {     
      starX = width;
    }    
    if (starY >height)
    {    
      starY = 0;
    } else if (starY < 0)
    {     
      starY = height;
    }
  }
}

public class Starback extends Star
{
  public void move() {
    starX += 0.5;
    starY -= 0.01;
    if (starX >width)
    {     
      starX = 0;
    } else if (starX<0)
    {     
      starX = width;
    }    
    if (starY >height)
    {    
      starY = 0;
    } else if (starY < 0)
    {     
      starY = height;
    }
  }
}

public class Starfront extends Star
{
  public void move() {
    starX += 0.3;
    starY += 0.01;
    if (starX >width)
    {     
      starX = 0;
    } else if (starX<0)
    {     
      starX = width;
    }    
    if (starY >height)
    {    
      starY = 0;
    } else if (starY < 0)
    {     
      starY = height;
    }
  }
}
