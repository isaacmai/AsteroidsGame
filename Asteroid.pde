class Asteroid extends Floater
{
  private double rotSpeed = (Math.random()*3);
  Asteroid(){
     myColor = color(255);
     corners = 6;
     xCorners = new int[]{-11,7,13,6,-11,-5};
     yCorners = new int[]{-8,-8,0,10,8,0};
     myCenterX = (float)(Math.random()*500);
     myCenterY = (float)(Math.random()*500);
     myXspeed = (Math.random()*4);   
     myYspeed = (Math.random()*3);
     myPointDirection = (Math.random()*360); 
  }
  public void move(){
   turn(rotSpeed);
   super.move();
  }
  public float getmyX(){
   return myCenterX;
  }
  public float getmyY(){
   return myCenterY; 
  }
}
