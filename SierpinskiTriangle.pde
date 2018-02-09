public void setup()
{
 size(600, 600);
}
public void draw()
{
  background(255);
  //fill(255);
  sierpinski(55,55,500);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 7)
  {
    fill(65,105,225);
    triangle(x, y, x+len, y, x + (len/2), y-len);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x+(len/2), y, len/2);
    sierpinski(x+(len/4), y+ (len/2), len/2);
  }
}