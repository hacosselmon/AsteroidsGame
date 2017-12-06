class Bullet extends Floater
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

	public Bullet (Spaceship theShip)
	{
		myCenterX = one.getX();
		myCenterY = one.getY();
		myPointDirection = one.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + one.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + one.getDirectionY();
	}
	public void show()
	{
		noStroke();
		fill(#ff8300);
		ellipse((int)myCenterX,(int)myCenterY,8,8);
	}
}