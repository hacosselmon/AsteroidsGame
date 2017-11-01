class Stars //note that this class does NOT extend Floater
{
  int myColor, mySize;
  double myX, myY;
  Stars()
  {
  	myX = (Math.random()*500);
  	myY = (Math.random()*500);
  	mySize = ((int)(Math.random()*6));
  	myColor = ((int)(Math.random()*255));
  }
  void show()
  {
  	fill(myColor);
  	noStroke();
  	ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
}
