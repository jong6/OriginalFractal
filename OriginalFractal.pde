public void setup()
{
 size(500,500);
 rectMode(CORNER);
}
public void draw()
{
  background(0);
  myFractalrect(10,100,480);
  myFractaltri(200,200,700);
}
public void myFractalrect(int x, int y, int size)
{
  stroke(0);
  fill(218,86,4);
  rect(x,y,size,size);
  if(size > 10)
  {
    myFractalrect(x-size/2,y+size/4,size-40);
    myFractalrect(x+size/2,y+size/8,size/2);
  }
}
public void myFractaltri(int x, int y, int size)
{
  stroke(0);
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  triangle(x-50,y+50,x,y-50,x+50,y+50);
  if(size > 10)
  {
    myFractaltri(x-size/2,y+size/4,size/2);
    myFractaltri(x+size/2,y-size/4,size/2);
  }
}
