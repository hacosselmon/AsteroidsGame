Spaceship one = new Spaceship();
//Asteroid two = new Asteroid();
Stars [] field;
//Asteroid [] belt;
ArrayList <Asteroid> belt;
//Bullet shot = new Bullet(one);
ArrayList <Bullet> volley;
//int bcount = 0;

public void setup() 
{
  size(500,500);
  field = new Stars[600];
  for (int i = 0; i < field.length; i++)
  {
  	field[i] = new Stars();
  }
  
  belt = new ArrayList <Asteroid>();
  for (int i = 0; i <10; i++)
  {
  	belt.add(new Asteroid());
  }

  volley = new ArrayList <Bullet>();
}
public void draw() 
{
  background(0);
  for (int i = 0; i < field.length; i++)
  {
  	field[i].show();
  }
  for (int i = 0; i < belt.size(); i++)
  {
  	belt.get(i).show();
  	belt.get(i).move();
  	if (dist(one.getX(),one.getY(),belt.get(i).getX(),belt.get(i).getY()) <= 10)
  		belt.remove(i);
  }
  for (int i = 0; i < volley.size(); i++)
  {
  	if (dist(volley.get(i).getX(),volley.get(i).getY(),belt.get(i).getX(),belt.get(i).getY()) <= 20)
  		{
  			belt.remove(i);
  			volley.remove(i);
  			break;
  		}
  	volley.get(i).show();
  	volley.get(i).move();
  }
  one.show();
  one.move();
  //shot.show();
  //shot.move();

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
		if (keyCode == CONTROL) 
			{
				//bcount++; 
				volley.add(new Bullet(one));
			}
	}
}
