Spaceship kestrel = new Spaceship();
ArrayList<Asteroids> asteroids = new ArrayList<Asteroids>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
int stars = 100;
int asteroidCount = 25;
Star[] topStars = new Starfront[stars];
Star[] middleStars = new Star[stars];
Star[] bottomStars = new Starback[stars];

public HashMap<String, Boolean> keys = new HashMap<String, Boolean>();

public void setup() 
{
  size(500, 500);
  for (int i = 0; i < stars; i++) {
    topStars[i] = new Starfront();
    middleStars[i] = new Star();
    bottomStars[i] = new Starback();
  }
  for (int i = 0; i < asteroidCount; i++) {
    asteroids.add(i, new Asteroids());
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
  if(wPressed){
    kestrel.accelerate(0.1);
    //flames.show();
    //flames.accelerate(0.1);
  }
  if(aPressed){
    kestrel.turn(-5);
  }
  if(dPressed){
    kestrel.turn(5);
  }
  //if(sPressed){
  //  if((Math.abs(kestrel.getDirectionX > 0)) || (Math.abs(kestrel.getDirectionY > 0))){
  //    kestrel.accelerate(-0.05);
  //  }
  //}
  if(hPressed){
    hyperspace();
  }

  //Draw the asteroids and move them
  for (int i = 0; i < asteroids.size(); i ++) {
    asteroids.get(i).show();
    asteroids.get(i).move();
  }
}

public void hyperspace() {
  kestrel.setDirectionX(0);
  kestrel.setDirectionY(0);
  kestrel.setPointDirection((int)(Math.random()*361));
  kestrel.setX((int)(Math.random()*450));
  kestrel.setY((int)(Math.random()*450));
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
    bullets.add(new Bullet());
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
