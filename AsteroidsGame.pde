//your variable declarations here
Spaceship ship = new Spaceship();
Star[] nightSky = new Star[200];
public void setup() 
{
  //your code here
  size(500, 500);
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void keyPressed()
{
  if (key == 'q')
  {
    ship.setXspeed(0);
    ship.setYspeed(0);
    ship.setDirection((double)(Math.random()*360));
    ship.setCenterX((double)(Math.random()*500));
    ship.setCenterY((double)(Math.random()*500));
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
}

public void draw() 
{
  background(0);
  ship.show();
  ship.move();
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
}
