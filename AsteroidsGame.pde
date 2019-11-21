Spaceship kestrel;
ArrayList<Asteroids> asteroids;
int stars = 100;
Star[] topStars = new Starfront[stars];
Star[] middleStars = new Star[stars];
Star[] bottomStars = new Starback[stars];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < stars; i++){
    topStars[i] = new Starfront();
    middleStars[i] = new Star();
    bottomStars[i] = new Starback();
  }
  kestrel = new Spaceship();
  //asteroids = new ArrayList<Asteroids>();
}
public void draw() 
{
  noStroke();
  //Set up the random star background
  background(20);
  for(int i = 0; i < stars; i++){
    topStars[i].show();
    topStars[i].move();
    middleStars[i].show();
    middleStars[i].move();
    bottomStars[i].show();
    bottomStars[i].move();
  }
  // Draw the ship and move it
  kestrel.show();
  kestrel.move();
}

public void keyPressed(){
  
}
