Spaceship kestrel;
Asteroids asteroids;
Star[] stars = new Star[100];
public void setup() 
{
  size(500,500);
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  kestrel = new Spaceship();
  //asteroids = new ArrayList<Asteroids>();
}
public void draw() 
{
  background(20);
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  kestrel.show();
  kestrel.move();
}
