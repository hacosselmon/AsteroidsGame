class Spaceship extends Floater  
{   
  public void setX (int x){myCenterX = x;}
  public int getX(){return (int) myCenterX;}
  public void setY (int y){myCenterY = y;}
  public int getY(){return (int) myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}   
  public void setDirectionY(double y){myDirectionY = y;}   
  public double getDirectionY(){return myDirectionY;}   
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;} 
  
  public Spaceship()
  {
      corners = 8;
      xCorners = new int [corners];
      yCorners = new int [corners];
      xCorners[0] = 8;
      yCorners[0] = 0;
      xCorners[1] = -4;
      yCorners[1] = -5;
      xCorners[2] = 0;
      yCorners[2] = -2;
      xCorners[3] = -2;
      yCorners[3] = -1;
      xCorners[4] = -8;
      yCorners[4] = 0;
      xCorners[5] = -2;
      yCorners[5] = 1;
      xCorners[6] = 0;
      yCorners[6] = 2;
      xCorners[7] = -4;
      yCorners[7] = 5;
      
      myColor = 255;
      myCenterX= 250;
      myCenterY = 250;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;
  }
}