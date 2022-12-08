class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX = theShip.getmyX();
    myCenterY = theShip.getmyY();
    myXspeed = theShip.getmyXspeed();
    myYspeed = theShip.getmyYspeed();
    myPointDirection = theShip.getPointDirection();
    accelerate(6);
  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  public float gitmyX(){
   return myCenterX;
  }
  public float gitmyY(){
   return myCenterY; 
  }
}
