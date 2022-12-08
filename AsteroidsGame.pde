//your variable declarations here
Spaceship ship = new Spaceship();
ArrayList <Bullet> shots = new ArrayList <Bullet>();
ArrayList <Asteroid> asteroids = new ArrayList<Asteroid>();
Star[] nightSky = new Star[200];
public void setup() 
{
  //your code here
  ship.show();
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
  for (int i = 0; i < 8; i++)
  {
    Asteroid bob = new Asteroid();
    asteroids.add(bob);
  } 
}
public void keyPressed()
{
  if (key == 'q')
  {
    ship.setXspeed(0);
    ship.setYspeed(0);
    ship.setDirection((double)(Math.random()*360));
    ship.setCenterX((float)(Math.random()*500));
    ship.setCenterY((float)(Math.random()*500));
  }
  if (key == 'w')
  {
    ship.accelerate(0.2);
  }
  if (key == 's')
  {
    ship.accelerate(-0.2); 
  }
  if (key == 'a')
  {
   ship.turn(-10); 
  }
  if (key == 'd')
  {
   ship.turn(10); 
  }
  if (key == ' ')
  {
   shots.add(new Bullet(ship));
  }
}

public void draw() 
{
  background(0);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
  ship.show();
  ship.move();
  for (int i = 0; i < shots.size(); i++)
  {
    shots.get(i).move();
    shots.get(i).show();
  }
  for (int i = 0; i < asteroids.size(); i++)
  {
    asteroids.get(i).show();
    asteroids.get(i).move();
    double d = dist(asteroids.get(i).getmyX(), asteroids.get(i).getmyY(), ship.getmyX(), ship.getmyY());
    if (d < 15){
    asteroids.remove(i);
  }
 }
   for (int i = 0; i < shots.size(); i++)
   {
     for(int p = 0; p < asteroids.size(); p++)
     {
    double s = dist(shots.get(i).gitmyX(), shots.get(i).gitmyY(), asteroids.get(p).getmyX(), asteroids.get(p).getmyY());
    if (s < 15)
    {
    asteroids.remove(p);
    shots.remove(i);
    break;
      }
    }
  }
}
