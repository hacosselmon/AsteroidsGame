class Stars //note that this class does NOT extend Floater
{
  int myColorA, myColorB, myColorC, mySize;
  double myX, myY;
  Stars()
  {
  	myX = (Math.random()*500);
  	myY = (Math.random()*500);
  	mySize = ((int)(Math.random()*6));
  	myColorA = ((int)(Math.random()*255));
  	//myColorB = ((int)(Math.random()*50 + 205));
  	//myColorC = ((int)(Math.random()*50 + 205));
  }
  void show()
  {
  	fill(myColorA);
  	noStroke();
  	ellipse((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
}
