class Spaceship extends Floater  
{   
    //your code here
    Spaceship(){
     myColor = color(255);
     corners = 4;
     xCorners = new int[]{-8,16,-8,-2};
     yCorners = new int[]{-8,0,8,0};
     myCenterX = 250;
     myCenterY = 250;
     myXspeed = 0;   
     myYspeed = 0;
     myPointDirection = 0;
      
    }
    public void setXspeed(double x)
    {
      myXspeed = x;
    }
    public void setYspeed(double y)
    {
      myYspeed = y;
    }
    public void setDirection(double d)
    {
      myPointDirection = d;
    }
    public void setCenterX(double c)
    {
     myCenterX = c; 
    }
    public void setCenterY(double y)
    {
     myCenterY = y; 
    }
    
    /*
    public void show()
    {
      fill(255);
      beginShape();
      vertex(230,240);
      vertex(235,250);
      vertex(230,260);
      vertex(260,250);
      endShape(CLOSE);
    }
    */
}
