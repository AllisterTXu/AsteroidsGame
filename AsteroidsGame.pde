Spaceship kestrel = new Spaceship();
Flames flare = new Flames();
ArrayList<Asteroids> asteroids = new ArrayList<Asteroids>();
ArrayList<Bullets> bullets = new ArrayList<Bullets>();
int stars = 100;
int asteroidCount = 25;
int bulletCount = 10;
Star[] topStars = new Starfront[stars];
Star[] middleStars = new Star[stars];
Star[] bottomStars = new Starback[stars];


public void setup() 
{
  size(500, 500);
  for (int i = 0; i < stars; i++) {
    topStars[i] = new Starfront();
    middleStars[i] = new Star();
    bottomStars[i] = new Starback();
  }
  for (int i = 0; i < asteroidCount; i++) {
    asteroids.add(new Asteroids());
  }
}
public void draw() 
{
  noStroke();
  //Set up the random star background
  background(20);
  for (int i = 0; i < stars; i++) {
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
  flare.move();
  if (wPressed) {
    kestrel.accelerate(0.1);
    flare.show();
    flare.accelerate(0.1);
  }
  if (aPressed) {
    kestrel.turn(-5);
    flare.turn(-5);
  }
  if (dPressed) {
    kestrel.turn(5);
    flare.turn(5);
  }
  if (sPressed) {
    if((Math.abs((int)(kestrel.getDirectionX())) > 0) || (Math.abs((int)kestrel.getDirectionY()) > 0)) {
      kestrel.accelerate(-0.05);
      flare.accelerate(-0.05);
    }
  }
  if (hPressed) {
    hyperspace();
  }

  //Draw the asteroids and move them
  for (int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).show();
    asteroids.get(i).move();
  }
  for (int i = 0; i < asteroids.size()-1; i++) {
    if (dist(kestrel.getX(), kestrel.getY(), asteroids.get(i).getX(), asteroids.get(i).getY()) < 20) {
      asteroids.remove(i);
    }
  }
  
  // Draw and move bullets
  for(int i = 0; i < bullets.size()-1; i++){
    bullets.get(i).show();
    bullets.get(i).move();
  }
}
public void hyperspace() {
  kestrel.setDirectionX(0);
  kestrel.setDirectionY(0);
  kestrel.setPointDirection((int)(Math.random()*361));
  kestrel.setX((int)(Math.random()*450));
  kestrel.setY((int)(Math.random()*450));
  flare.setDirectionX(0);
  flare.setDirectionY(0);
  flare.setPointDirection((int)kestrel.getPointDirection());
  flare.setX((int)kestrel.getX());
  flare.setY((int)kestrel.getY());
}

boolean wPressed, aPressed, dPressed, sPressed, hPressed, spacePressed;

public void keyPressed() {
  if (key == 'h')
    hPressed = true;
  if (key == 'w')
    wPressed = true;
  if (key == 'a')
    aPressed = true;
  if (key == 's')
    sPressed = true;
  if (key == 'd')
    dPressed = true;
  if (key == ' ')
    bullets.add(new Bullets());
}

public void keyReleased() {
  if (key == 'h')
    hPressed = false;
  if (key == 'w')
    wPressed = false;
  if (key == 'a')
    aPressed = false;
  if (key == 's')
    sPressed = false;
  if (key == 'd')
    dPressed = false;
}
