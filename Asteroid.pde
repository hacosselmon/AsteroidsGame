class Asteroid extends Floater
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

  private int rotSpeed = (int)(Math.random()*7-3);


  public Asteroid()
  {
  	corners = 13;
  	xCorners = new int [corners];
  	yCorners = new int [corners];
  	xCorners[0] = -4;
  	yCorners[0] = -8;
  	xCorners[1] = -6;
  	yCorners[1] = -8;
  	xCorners[2] = -7;
  	yCorners[2] = -6;
  	xCorners[3] = -6;
  	yCorners[3] = -5;
  	xCorners[4] = -5;
  	yCorners[4] = -3;
  	xCorners[5] = -6;
  	yCorners[5] = 3;
  	xCorners[6] = -4;
  	yCorners[6] = 5;
  	xCorners[7] = 0;
  	yCorners[7] = 6;
  	xCorners[8] = 3;
  	yCorners[8] = 6;
  	xCorners[9] = 5;
  	yCorners[9] = 3;
  	xCorners[10] = 5;
  	yCorners[10] = -5;
  	xCorners[11] = 5;
  	yCorners[11] = -6;
  	xCorners[12] = 4;
  	yCorners[12] = -7;

  	myColor = #0cb7b1;
    myCenterX= ((int)(Math.random()*500));
    myCenterY = ((int)(Math.random()*500));
    myDirectionX = ((int)(Math.random()*3-1));
    myDirectionY = ((int)(Math.random()*3-1));
    myPointDirection = 0;
}

public void move()
  {
  	turn(rotSpeed);  
  	 //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;  
	}
  }
}