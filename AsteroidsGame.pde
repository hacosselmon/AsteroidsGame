Spaceship one = new Spaceship();
//Asteroid two = new Asteroid();
Stars [] field;
Asteroid [] belt;

public void setup() 
{
  size(500,500);
  field = new Stars[600];
  for (int i = 0; i < field.length; i++)
  {
  	field[i] = new Stars();
  }
  belt = new Asteroid[10];
  for (int i = 0; i <belt.length; i++)
  {
  	belt[i] = new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < field.length; i++)
  {
  	field[i].show();
  }
  for (int i = 0; i < belt.length; i++)
  {
  	belt[i].show();
  	belt[i].move();
  }
  one.show();
  one.move();
}
public void keyPressed()
{
	if (key == CODED)
	{
		//redraw();
		if (keyCode == RIGHT) {one.turn(15);}
		if (keyCode == LEFT) {one.turn(-15);}
		if (keyCode == UP) {one.accelerate(1);}
		if (keyCode == SHIFT) 
		{
			one.setPointDirection((int)(Math.random()*361));
			one.setDirectionX(Math.random()*0);
			one.setDirectionY(Math.random()*0);
			one.setX((int)(Math.random()*500));
			one.setY((int)(Math.random()*500));
		}
	}
}
