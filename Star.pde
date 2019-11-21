public class Star 
{
  protected float starX, starY, starSize, starLight, starXVel, starYVel;
  Star(){
    starX = (float)(Math.random()*500);
    starY = (float)(Math.random()*500);
    starSize = (float)(Math.random()*5);
    starLight = (float)(Math.random()*50+100);
    starXVel = (float)(Math.random()*4)-2;
    starYVel = (float)(Math.random()*4)-2;
  }
  public void show(){
    fill(200, starLight);
    ellipse(starX,starY,starSize,starSize);
  }
  public void move(){
    starX += starXVel;
    starY += starYVel;
    if(starX >width)
    {     
      starX = 0;    
    }    
    else if (starX<0)
    {     
      starX = width;    
    }    
    if(starY >height)
    {    
      starY = 0;    
    } 
    
    else if (starY < 0)
    {     
      starY = height;    
    }   
  }
}

public class Starback extends Star
{
  public void move(){
    starX += 0.5;
    starY -= 0.01;
    if(starX >width)
    {     
      starX = 0;    
    }    
    else if (starX<0)
    {     
      starX = width;    
    }    
    if(starY >height)
    {    
      starY = 0;    
    } 
    
    else if (starY < 0)
    {     
      starY = height;    
    }   
  }
    
}

public class Starfront extends Star
{
  public void move(){
    starX += 0.3;
    starY += 0.01;
    if(starX >width)
    {     
      starX = 0;    
    }    
    else if (starX<0)
    {     
      starX = width;    
    }    
    if(starY >height)
    {    
      starY = 0;    
    } 
    
    else if (starY < 0)
    {     
      starY = height;    
    }   
  }
    
}
